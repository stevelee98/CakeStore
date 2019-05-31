﻿using CakeStorManagement.Model;
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
    public class SuplierViewModel : BaseViewModel
    { 

        private ObservableCollection<Suplier> _List;
        public ObservableCollection<Suplier> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private Suplier _SelectedItem;
        public Suplier SelectedItem
        {
            get => _SelectedItem; set
            {
                _SelectedItem = value; OnPropertyChanged();
                if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.DisplayName;
                    Address = SelectedItem.Address;
                    Phone = SelectedItem.Phone;
                    Email = SelectedItem.Email;
                    ContractDate = SelectedItem.ContractDate;
                    
                }
            }
        }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        private string _Address;
        public string Address { get => _Address; set { _Address = value; OnPropertyChanged(); } }

        private string _Phone;
        public string Phone { get => _Phone; set { _Phone = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }

        private DateTime _ContractDate; // thêm  "?": cho phép dữ liệu null
        public DateTime ContractDate { get => _ContractDate; set { _ContractDate = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public SuplierViewModel()
        {           
            List = new ObservableCollection<Suplier>(DataProvider.Ins.DB.Supliers.Where(x => x.isDelete != true));
           
            AddCommand = new RelayCommand<object>((p) =>
            {
                int err = 0;
                foreach (var item in List)
                {
                    if (DisplayName == item.DisplayName)
                    {
                        err = 1;
                    }
                }
                if (MainViewModel.IdUserRole == 2) return false; // id =2: nhân viên => chỉ được quyền xem
                if (err == 1) 
                {
                    return false;
                }
                return true;
            }, p => {
                var Suplier = new Suplier() { DisplayName = DisplayName, Address = Address, Phone = Phone, Email = Email, ContractDate = ContractDate };
                DataProvider.Ins.DB.Supliers.Add(Suplier);
                DataProvider.Ins.DB.SaveChanges();
                List.Add(Suplier);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (String.IsNullOrWhiteSpace(DisplayName))
                    return false;
                if (String.IsNullOrEmpty(DisplayName))
                    return false;
                if (MainViewModel.IdUserRole == 2) return false; // id =2: nhân viên => chỉ được quyền xem

                if (SelectedItem == null)
                    return false;
                var displayList = DataProvider.Ins.DB.Supliers.Where(x => x.Id == SelectedItem.Id);
                if (displayList != null && displayList.Count() != 0)
                    return true;
                return false;
            }, p => {
                var Suplier = DataProvider.Ins.DB.Supliers.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                Suplier.DisplayName = DisplayName;
                Suplier.Address = Address;
                Suplier.Phone = Phone;
                Suplier.Email = Email;
                Suplier.ContractDate = ContractDate;
                DataProvider.Ins.DB.SaveChanges();
                //SelectedItem.DisplayName = DisplayName;
                for (int i = 0; i < List.Count(); i++)
                {
                    if (List[i].Id == SelectedItem.Id)
                    {
                        List[i] = new Suplier() { Id = SelectedItem.Id, DisplayName = DisplayName, Address = Address, Phone = Phone, Email = Email, ContractDate = ContractDate };
                        break;
                    }
                }
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (String.IsNullOrWhiteSpace(DisplayName))
                    return false;
                if (String.IsNullOrEmpty(DisplayName))
                    return false;
                if (MainViewModel.IdUserRole == 2) return false; // id =2: nhân viên => chỉ được quyền xem

                if (SelectedItem == null)
                    return false;
                var displayList = DataProvider.Ins.DB.Supliers.Where(x => x.Id == SelectedItem.Id);
                if (displayList != null && displayList.Count() != 0)
                    return true;
                return false;

            }, (p) =>
            {
                MessageBox.Show("Bạn có chắn chắn xóa ????");
                var Suplier = DataProvider.Ins.DB.Supliers.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                Suplier.DisplayName = DisplayName;
                Suplier.Address = Address;
                Suplier.Phone = Phone;
                Suplier.Email = Email;
                Suplier.ContractDate = ContractDate;
                Suplier.isDelete = true;
                DataProvider.Ins.DB.SaveChanges();

                List = new ObservableCollection<Suplier>(DataProvider.Ins.DB.Supliers.Where(x => x.isDelete != true));
            });
        }
    }
}

