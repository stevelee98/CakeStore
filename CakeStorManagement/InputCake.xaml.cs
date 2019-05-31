﻿using CakeStorManagement.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace CakeStorManagement
{
    /// <summary>
    /// Interaction logic for InputCake.xaml
    /// </summary>
    public partial class InputCake : Window
    {
        public InputCake()
        {
            //DataContext = new InputCakeViewModel();
            InitializeComponent();
            //Dispatcher.ShutdownStarted += OnDispatcherShutDownStarted;
        }
        private void OnDispatcherShutDownStarted(object sender, EventArgs e)
        {
            var disposable = DataContext as IDisposable;
            if (!ReferenceEquals(null, disposable))
            {
                disposable.Dispose();
            }
        }
    }
}
