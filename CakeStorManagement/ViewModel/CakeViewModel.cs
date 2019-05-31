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
    public class CakeViewModel : BaseViewModel
    {

        private ObservableCollection<Cake> _List;
        public ObservableCollection<Cake> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<Suplier> _Suplier;
        public ObservableCollection<Suplier> SuplierList { get => _Suplier; set { _Suplier = value; OnPropertyChanged(); } }

        private Suplier _SelectedSuplier;
        public Suplier SelectedSuplier { get => _SelectedSuplier; set { _SelectedSuplier = value; OnPropertyChanged(); } }
        
        private Suplier _SuplierDisplayName;
        public Suplier SuplierDisplayName { get => _SuplierDisplayName; set { _SuplierDisplayName = value; OnPropertyChanged(); } }

        private ObservableCollection<CakeType> _Type;
        public ObservableCollection<CakeType> CakeTypeList { get => _Type; set { _Type = value; OnPropertyChanged(); } }

        private CakeType _SelectedCakeType;
        public CakeType SelectedCakeType { get => _SelectedCakeType; set { _SelectedCakeType = value; OnPropertyChanged(); } }

        private Cake _SelectedItem;
        public Cake SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.DisplayName;
                    BarCode = SelectedItem.BarCode;
                    SelectedCakeType = SelectedItem.CakeType;
                    SelectedSuplier = SelectedItem.Suplier;
                }
            }
        }

       
        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }
        
        private string _BarCode;
        public string BarCode { get => _BarCode; set { _BarCode = value; OnPropertyChanged(); } }
        
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        

        public CakeViewModel()
        {

            List = new ObservableCollection<Cake>(DataProvider.Ins.DB.Cakes.Where(x => x.isDelete != true));

            CakeTypeList = new ObservableCollection<CakeType>(DataProvider.Ins.DB.CakeTypes);
            SuplierList = new ObservableCollection<Suplier>(DataProvider.Ins.DB.Supliers);

            AddCommand = new RelayCommand<object>((p) =>
            {
                int err = 0;
                foreach(var item in List)
                {
                    if(DisplayName == item.DisplayName)
                    {
                        err = 1;
                    }
                }
                if (MainViewModel.IdUserRole == 2) return false; // id =2: nhân viên => chỉ được quyền xem
                if (err == 1)
                {
                    return false;
                }
                if (SelectedSuplier == null || SelectedCakeType == null)
                    return false;
                return true;

            }, (p) =>
            {
                var cake = new Cake()
                {
                    DisplayName = DisplayName,
                    BarCode = BarCode,
                    IdSuplier = SelectedSuplier.Id,
                    IdCakeType = SelectedCakeType.Id,
                    Id = Guid.NewGuid().ToString(),
                    isDelete = false
                };

                DataProvider.Ins.DB.Cakes.Add(cake);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(cake);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || SelectedSuplier == null || SelectedCakeType == null)
                    return false;
                if (MainViewModel.IdUserRole == 2) return false; // id =2: nhân viên => chỉ được quyền xem
                var displayList = DataProvider.Ins.DB.Cakes.Where(x => x.Id == SelectedItem.Id);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var cake = DataProvider.Ins.DB.Cakes.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                cake.DisplayName = DisplayName;
                cake.BarCode = BarCode;
                cake.IdSuplier = SelectedSuplier.Id;
                cake.IdCakeType = SelectedCakeType.Id;
                cake.isDelete = false;
                DataProvider.Ins.DB.SaveChanges();
                SelectedItem.DisplayName = DisplayName;
                for (int i = 0; i < List.Count(); i++)
                {
                    if (List[i].Id == SelectedItem.Id)
                    {
                        List[i] = new Cake()
                        {
                            Id = SelectedItem.Id,
                            DisplayName = DisplayName,
                            BarCode = BarCode,               
                            IdSuplier = SelectedSuplier.Id,
                            IdCakeType = SelectedCakeType.Id,
                            Suplier = SelectedSuplier,
                            CakeType = SelectedCakeType,
                            isDelete = false
                        };
                        break;
                    }
                }
            });


            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || SelectedSuplier == null || SelectedCakeType == null)
                    return false;
                if (MainViewModel.IdUserRole == 2) return false; // id =2: nhân viên => chỉ được quyền xem
                var displayList = DataProvider.Ins.DB.Cakes.Where(x => x.Id == SelectedItem.Id);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                MessageBox.Show("Bạn có chắn chắn xóa ????");
                var cake = DataProvider.Ins.DB.Cakes.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                cake.DisplayName = SelectedItem.DisplayName;
                cake.BarCode = SelectedItem.BarCode;
                cake.IdSuplier = SelectedItem.IdSuplier;
                cake.IdCakeType = SelectedItem.IdCakeType;
                cake.isDelete = true;
                DataProvider.Ins.DB.SaveChanges();
 
                List = new ObservableCollection<Cake>(DataProvider.Ins.DB.Cakes.Where(x => x.isDelete != true));
            });
        }
    }
}


