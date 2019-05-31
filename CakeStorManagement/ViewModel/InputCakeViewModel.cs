using CakeStorManagement.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace CakeStorManagement.ViewModel
{
    public class InputCakeViewModel:BaseViewModel
    {

        private ObservableCollection<InputInfor> _List;
        public ObservableCollection<InputInfor> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        //private Input _input;
        //public Input input { get => _input; set { _input = value; OnPropertyChanged(); } }

        private int _Id;
        public int IdInput { get => _Id; set { _Id = value; OnPropertyChanged(); } }
        private string _UserInput;
        public string UserInput { get => _UserInput; set { _UserInput = value; OnPropertyChanged(); } }
        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        private DateTime _DateInput;
        public DateTime DateInput { get => _DateInput; set { _DateInput = value; OnPropertyChanged(); } }
        private int _Count;
        public int Count { get => _Count; set { _Count = value; OnPropertyChanged(); } }
        private double _InputPrice;
        public double InputPrice { get => _InputPrice; set { _InputPrice = value; OnPropertyChanged(); } }

        private string _Status;
        public string Status { get => _Status; set { _Status = value; OnPropertyChanged(); } }

        private ObservableCollection<Suplier> _Suplier;
        public ObservableCollection<Suplier> SuplierList { get => _Suplier; set { _Suplier = value; OnPropertyChanged(); } }

        private Suplier _SelectedSuplier;
        public Suplier SelectedSuplier { get => _SelectedSuplier; set { _SelectedSuplier = value; OnPropertyChanged(); } }

        private ObservableCollection<Cake> _Cake;
        public ObservableCollection<Cake> CakeList { get => _Cake; set { _Cake = value; OnPropertyChanged(); } }
        private Cake _SelectedCake;
        public Cake SelectedCake { get => _SelectedCake; set { _SelectedCake = value; OnPropertyChanged(); } }

        private InputInfor _SelectedItem;
        public InputInfor SelectedItem { get => _SelectedItem;
            set
            {
                _SelectedItem = value; OnPropertyChanged();
                if (SelectedItem != null)
                {
                    SelectedCake = SelectedItem.Cake;
          
                    Count = SelectedItem.Count;
                    InputPrice = SelectedItem.InputPrice;
                    Status = SelectedItem.Status;
                }
            }
        }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand FinishCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand DestroyInputCommand { get; set; }

        public InputCakeViewModel()
        {
               
            UserInput = MainViewModel.User;
            int IdUser = MainViewModel.IdUser;
            DateInput = DateTime.Now;

            int IdLastInput = DataProvider.Ins.DB.Inputs.Max(x=> x.Id);

            IdInput = IdLastInput + 1;
            
            List = new ObservableCollection<InputInfor>();
            CakeList = new ObservableCollection<Cake>(DataProvider.Ins.DB.Cakes.Where(x =>x.isDelete == false));
            SuplierList = new ObservableCollection<Suplier>(DataProvider.Ins.DB.Supliers.Where(x => x.isDelete == false));

            AddCommand = new RelayCommand<object>((p) =>
            {
                if (_SelectedCake == null || Count <= 0 || String.IsNullOrWhiteSpace(Status) || String.IsNullOrEmpty(Status))
                    return false;

                return true;

            }, (p) =>
            {

                var inputInforTemp = new InputInfor()
                {
                    Cake = SelectedCake,
                    Suplier = SelectedCake.Suplier,
                    IdSuplier = SelectedCake.IdSuplier,
                    IdCake = SelectedCake.Id,
                    IdInput = IdInput,
                    InputPrice = InputPrice,
                    Status = Status,
                    Count = Count,
                    isDelete = false
                };                                
                List.Add(inputInforTemp);
            });
            FinishCommand = new RelayCommand<Window>((p) =>
            {
                if (List.Count == 0) return false;
                return true;
            }, (p) =>
            {
                Input newInput = new Input() { Id = IdInput, DateInput = DateInput, IdUser = IdUser };
                DataProvider.Ins.DB.Inputs.Add(newInput);
                DataProvider.Ins.DB.SaveChanges();

                foreach (var item in List)
                {
                    DataProvider.Ins.DB.InputInfors.Add(item);
                }
                DataProvider.Ins.DB.SaveChanges();               
                p.Close();
            });
            EditCommand = new RelayCommand<object>((p) =>
            {
           
                if (SelectedItem == null || SelectedCake == null || Count <= 0 || String.IsNullOrWhiteSpace(Status) || String.IsNullOrEmpty(Status))
                    return false;

                return true;

            }, (p) =>
            {
                for (int i = 0; i < List.Count(); i++)
                {
                    if (List[i].Cake == SelectedItem.Cake && List[i].InputPrice == SelectedItem.InputPrice && List[i].Suplier == SelectedItem.Suplier && List[i].Status == SelectedItem.Status && List[i].Count == SelectedItem.Count )
                    {
                        List[i] = new InputInfor()
                        {
                            Cake = SelectedCake,
                            IdCake = SelectedCake.Id,
                            IdInput = IdInput,
                            InputPrice = InputPrice,
                            Suplier = SelectedCake.Suplier,
                            IdSuplier = SelectedCake.IdSuplier,
                            Status = Status,
                            Count = Count,
                            isDelete = false
                        };
                        break;
                    }
                }
            });
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || SelectedCake == null)
                    return false;
                return true;

            }, (p) =>
            {
                for (int i = 0; i < List.Count(); i++)
                {
                    if (List[i].Cake == SelectedItem.Cake && List[i].InputPrice == SelectedItem.InputPrice && List[i].Suplier == SelectedItem.Suplier && List[i].Status == SelectedItem.Status && List[i].Count == SelectedItem.Count)
                    {
                        List.Remove(List[i]);
                        break;
                    }
                }
            
            });

            DestroyInputCommand = new RelayCommand<Window>((p) =>
            {
                return true;
            },(p) =>
            {
               
                p.Close();
            });
            }
        public void Dispose()
        {
            // Cleanup code
            // SettingsRepository.Save();
            // WebServiceConnection.Close();
            // etc.
        }
    }

}
