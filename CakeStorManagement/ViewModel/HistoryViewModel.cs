using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace CakeStorManagement.ViewModel
{
    public class HistoryViewModel: BaseViewModel
    {
        public ICommand InputHistoryCommand { get; set; }
        public ICommand OutputHistoryCommand { get; set; }
        public HistoryViewModel()
        {
            InputHistoryCommand = new RelayCommand<object>((p) => { return true; }, p => { InputViewModel viewModel = new InputViewModel(); InputWindow wd = new InputWindow(); wd.DataContext = viewModel; wd.ShowDialog(); });
            OutputHistoryCommand = new RelayCommand<object>((p) => { return true; }, p => { OutputViewModel viewModel = new OutputViewModel(); OutputWindow wd = new OutputWindow(); wd.DataContext = viewModel; wd.ShowDialog(); });
        }


    }
}
