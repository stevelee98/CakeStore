using CakeStorManagement.Model;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Input;

namespace CakeStorManagement.ViewModel
{
    public class UserViewModel : BaseViewModel
    {
        private ObservableCollection<User> _List;
        public ObservableCollection<User> List { get => _List; set { _List = value; OnPropertyChanged(); } }
        private ObservableCollection<UserRole> _UserRoleList;
        public ObservableCollection<UserRole> UserRoleList { get => _UserRoleList; set { _UserRoleList = value; OnPropertyChanged(); } }
        private UserRole _SelectedUserRole;
        public UserRole SelectedUserRole { get => _SelectedUserRole; set { _SelectedUserRole = value; OnPropertyChanged(); } }
        private int _Id;
        public int Id { get => _Id; set { _Id = value; OnPropertyChanged(); } }
        private string _PassWord;
        public string PassWord { get => _PassWord; set { _PassWord = value; OnPropertyChanged(); } }
        private User _SelectedItem;
        public User SelectedItem
        {
            get => _SelectedItem; set
            {
                _SelectedItem = value; OnPropertyChanged(); if (SelectedItem != null)
                {
                    Id = SelectedItem.Id;
                    UserName = SelectedItem.UserName;
                    SelectedUserRole = SelectedItem.UserRole;
                    PassWord = SelectedItem.PassWords;
                }
            }
        }
        private string _UserName;
        public string UserName { get => _UserName; set { _UserName = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public UserViewModel()
        {
            List = new ObservableCollection<User>(DataProvider.Ins.DB.Users.Where(x => x.isDelete != true));
            UserRoleList = new ObservableCollection<UserRole>(DataProvider.Ins.DB.UserRoles.Where(x => x.isDelete != true));
            AddCommand = new RelayCommand<object>((p) =>
            {

                if (string.IsNullOrEmpty(UserName) == true || string.IsNullOrEmpty(PassWord) == true)
                {
                    return false;
                }
                foreach (User item in List)
                {
                    if (UserName == item.UserName)
                    {
                        return false;
                    }
                }

                return true;
            }, p =>
            {
                User user = new User()
                {

                    UserName = UserName,
                    PassWords = PassWord,
                    UserRole = SelectedUserRole,
                };
                DataProvider.Ins.DB.Users.Add(user);
                DataProvider.Ins.DB.SaveChanges();
                List.Add(user);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(UserName) == true || string.IsNullOrEmpty(PassWord) == true)
                {
                    return false;
                }

                if (UserName == SelectedItem.UserName && PassWord == SelectedItem.PassWords && SelectedUserRole == SelectedItem.UserRole)
                {
                    return false;
                }


                //IQueryable<User> displayList = DataProvider.Ins.DB.Users.Where(x => x.Id == Id);
                //if (displayList != null || displayList.Count() != 0)
                //{
                //    return true;
                //}

                return true;
            }, p =>
            {
                User user = DataProvider.Ins.DB.Users.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                user.PassWords = PassWord;
                user.UserName = UserName;
                user.IdUserRole = SelectedUserRole.Id;

                DataProvider.Ins.DB.SaveChanges();
                for (int i = 0; i < List.Count(); i++)
                {
                    if (List[i].Id == SelectedItem.Id)
                    {
                        List[i] = new User() { Id = SelectedItem.Id, PassWords = PassWord, UserName = UserName, IdUserRole = SelectedUserRole.Id, UserRole = SelectedUserRole };
                        break;
                    }
                }
            });
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrWhiteSpace(UserName))
                {
                    return false;
                }

                if (string.IsNullOrEmpty(UserName))
                {
                    return false;
                }

                if (SelectedItem == null)
                {
                    return false;
                }
                return true;
            }, (p) =>
             {
                 MessageBox.Show("Bạn có chắn chắn xóa ????");
                 User User = DataProvider.Ins.DB.Users.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                 User.UserName = SelectedItem.UserName;
                 User.PassWords = SelectedItem.PassWords;
                 User.IdUserRole = SelectedItem.IdUserRole;
                 User.isDelete = true;
                 DataProvider.Ins.DB.SaveChanges();

                 List = new ObservableCollection<User>(DataProvider.Ins.DB.Users.Where(x => x.isDelete != true));
             }
            );
        }
    }
}
