   M S B A M L   `   `   `  ����M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  5   	   S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  5   	   %    CakeStorManagement.OutputWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CakeStorManagement     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      7uc.clr-namespace:CakeStorManagement.MyUserControl  5   	   -   5        $��window��5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Lịch sử xuất hàng��5   	   $	��720��6#   $
��1000��60     HistoryOutputVM � DataContext# [ 5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 window��6L   5      � 5    
   $��1��6    5!      �� 5"      $
��auto �6    60   �� 5#      6"   .+�5%      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5&      � $��	 0 0 0 10q�6   .+�5'      (  "System.Windows.Controls.DatePicker  $��Center=�6!   $	��100��6=   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Ngày bắt đầu��6I   $��5 5 15 5q�6w    ( $MaterialDesignFloatingHintDatePicker#��[ 6�      SelectedDate 5(   "   �� *
DateOutput+  5)      $��Center=�6!   $	��100��6=   $
 Ngày kết thúc��6I   $��5 5 15 5q�6x   #��[ 6�    5*   "   �� *
DateOutput+�� 5+       # MaterialDesignRaisedLightButton#��[ 6   $	��100��6V    � ToolTip$ Filter - Lọc��5,      $��Lọc��64   5-      5.        5/      $��2��6"   $��5q�6/   $��Stretch=�6:   .��51      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+ �� View 52      �� 53      .P�54   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 55   "   $��Ngày xuất��61    6D   �� *
DateOutput+ �� StringFormat$ 
dd/MM/yyyy��6�   �� 56   "   $��Người xuất��61    6E   �� *User.DisplayName+6y   �� 57      $"��Phương thức thanh toánt��6-    6N   �� *PaymentType.DisplayName+6�   58      5:      5<      5=      5>      5?      