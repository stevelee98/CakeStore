using CakeStorManagement.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace CakeStorManagement.ViewModel
{
    public class OutputCakeViewModel : BaseViewModel
    {

        private ObservableCollection<OutputInfor> _List;
        public ObservableCollection<OutputInfor> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private int _IdInput;
        public int IdInput { get => _IdInput; set { _IdInput = value; OnPropertyChanged(); } }

        //private Output _Output;
        //public Output Output { get => _Output; set { _Output = value; OnPropertyChanged(); } }

        private int _IdOutput;
        public int IdOutput { get => _IdOutput; set { _IdOutput = value; OnPropertyChanged(); } }

        private string _UserOutput;
        public string UserOutput { get => _UserOutput; set { _UserOutput = value; OnPropertyChanged(); } }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }
        
        private DateTime _DateOutput;
        public DateTime DateOutput { get => _DateOutput; set { _DateOutput = value; OnPropertyChanged(); } }

        private int _Count;
        public int Count { get => _Count; set { _Count = value; OnPropertyChanged(); } }

        private double _PriceInput;
        public double PriceInput { get => _PriceInput; set { _PriceInput = value; OnPropertyChanged(); } }

        private double _OutputPrice;
        public double OutputPrice { get => _OutputPrice; set { _OutputPrice = value; OnPropertyChanged(); } }

        private string _Status;
        public string Status { get => _Status; set { _Status = value; OnPropertyChanged(); } }

        private int _InventoryCake;
        public int InventoryCake { get => _InventoryCake; set { _InventoryCake = value; OnPropertyChanged(); } }

        private ObservableCollection<Cake> _Cake;
        public ObservableCollection<Cake> CakeList { get => _Cake; set { _Cake = value; OnPropertyChanged(); } }

        private Cake _SelectedCake;
        public Cake SelectedCake
        {
            get => _SelectedCake; set
            {
                _SelectedCake = value; OnPropertyChanged();
                if (SelectedCake != null)
                {

                    var inputInfor = DataProvider.Ins.DB.InputInfors.Where(x => x.IdCake == SelectedCake.Id).Select(x => x.InputPrice);

                    double priceMax = 0;

                    foreach(var item in inputInfor)
                    {
                        if(item >= priceMax)
                        {
                            priceMax = item;
                        }
                    }

                    PriceInput = priceMax;

                    InventoryList = LoadInvertoryList();
     
                    foreach(var item in InventoryList)
                    {
                        if(SelectedCake.Id == item.cake.Id)
                        {
                            InventoryCake = item.Count;
                            break;
                        }
                        
                    }
                }
            }
        }

        private ObservableCollection<Customer> _Customer;
        public ObservableCollection<Customer> CustomerList { get => _Customer; set { _Customer = value; OnPropertyChanged(); } }

        private Customer _SelectedCustomer;
        public Customer SelectedCustomer { get => _SelectedCustomer; set { _SelectedCustomer = value; OnPropertyChanged(); } }

        private OutputInfor _SelectedItem;
        public OutputInfor SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value; OnPropertyChanged();
                if (SelectedItem != null)
                {
                    SelectedCake = SelectedItem.Cake;
                    SelectedCustomer = SelectedItem.Customer;
                    Count = SelectedItem.Count;
                    OutputPrice = SelectedItem.OutputPrice;
                    Status = SelectedItem.Status;
                }
            }
        }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand FinishCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand DestroyInputCommand { get; set; }

        public OutputCakeViewModel()
        {
            UserOutput = MainViewModel.User;
            int IdUser = MainViewModel.IdUser;
            DateOutput = DateTime.Now;
            int IdLastOutput = DataProvider.Ins.DB.Outputs.Max(x => x.Id);

            IdOutput = IdLastOutput + 1;

            List = new ObservableCollection<OutputInfor>();
            CakeList = new ObservableCollection<Cake>(DataProvider.Ins.DB.Cakes);
            CustomerList = new ObservableCollection<Customer>(DataProvider.Ins.DB.Customers);
          
            AddCommand = new RelayCommand<object>((p) =>
            {
                if (_SelectedCake == null || OutputPrice <= 0 || OutputPrice < PriceInput || Count > InventoryCake || String.IsNullOrWhiteSpace(Status) || String.IsNullOrEmpty(Status))
                    return false;

                return true;

            }, (p) =>
            {

                var OutputInforTemp = new OutputInfor()
                {
                    Cake = SelectedCake,
                    IdCake = SelectedCake.Id,
                    IdOutput = IdOutput,
                    Customer = SelectedCustomer,
                    OutputPrice = OutputPrice,
                    Status = Status,
                    Count = Count,
                    IdPayment = 1,
                    isDelete = false
                };
                List.Add(OutputInforTemp);
            });
            FinishCommand = new RelayCommand<Window>((p) =>
            {
                if (List.Count == 0) return false;
                return true;
            }, (p) =>
            {

                Output newOutput = new Output() {Id=IdOutput, IdUser = IdUser, DateOutput = DateOutput };
                DataProvider.Ins.DB.Outputs.Add(newOutput);
                DataProvider.Ins.DB.SaveChanges();
                foreach (var item in List)
                {
                    DataProvider.Ins.DB.OutputInfors.Add(item);
                }
                DataProvider.Ins.DB.SaveChanges();
                p.Close();
            });
            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || SelectedCake == null || OutputPrice <= 0 || OutputPrice < PriceInput || Count > InventoryCake || String.IsNullOrWhiteSpace(Status) || String.IsNullOrEmpty(Status))
                    return false;

                return true;

            }, (p) =>
            {
                for (int i = 0; i < List.Count(); i++)
                {
                    if (List[i].Cake == SelectedItem.Cake && List[i].Status == SelectedItem.Status && List[i].Count == SelectedItem.Count && List[i].Customer == SelectedItem.Customer)
                    {
                        List[i] = new OutputInfor()
                        {
                            Cake = SelectedCake,
                            IdCake = SelectedCake.Id,
                            IdOutput = IdOutput,
                            OutputPrice = OutputPrice,
                            Customer = SelectedCustomer,
                            Status = Status,
                            Count = Count,
                            IdPayment = 1,
                            isDelete = false
                        };
                        break;
                    }
                }
            });
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || SelectedCake == null || SelectedCustomer == null)
                    return false;
                return true;

            }, (p) =>
            {
                for (int i = 0; i < List.Count(); i++)
                {
                    if (List[i].Cake == SelectedItem.Cake  && List[i].Status == SelectedItem.Status && List[i].Count == SelectedItem.Count)
                    {
                        List.Remove(List[i]);
                        break;
                    }
                }

            });

            DestroyInputCommand = new RelayCommand<Window>((p) =>
            {
                return true;
            }, (p) =>
            {
                MessageBox.Show("Bạn chắc chắn hủy phiếu nhập này ???");
                p.Close();
            });
        }

        private ObservableCollection<Inventory> _InventoryList;
        public ObservableCollection<Inventory> InventoryList { get => _InventoryList; set { _InventoryList = value; OnPropertyChanged(); } }

        ObservableCollection<Inventory> LoadInvertoryList()
        {
            ObservableCollection<Inventory> inventoryList = new ObservableCollection<Inventory>();

            var CakeList = DataProvider.Ins.DB.Cakes;
            int i = 1;
            foreach (var item in CakeList)
            {
                var inputList = DataProvider.Ins.DB.InputInfors.Where(p => p.IdCake == item.Id);
                var outputList = DataProvider.Ins.DB.OutputInfors.Where(p => p.IdCake == item.Id);

                int sumInput = 0;
                int sumOutput = 0;

                if (inputList != null && inputList.Count() > 0)
                {
                    sumInput = inputList.Sum(p => p.Count);
                }
                if (outputList != null && outputList.Count() > 0)
                {
                    sumOutput = outputList.Sum(p => p.Count);
                }
                int inventoryCount = sumInput - sumOutput;
                Inventory temp = new Inventory() { STT = i, Count = inventoryCount, cake = item };
                inventoryList.Add(temp);
            }
            return inventoryList;
        }
    }

}
