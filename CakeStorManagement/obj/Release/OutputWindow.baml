   M S B A M L   `   `   `  ���� M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  %    CakeStorManagement.OutputWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:CakeStorManagement     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  7uc.clr-namespace:CakeStorManagement.MyUserControl  -   $��window��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � Title$ Lịch sử xuất hàng��$	��720��$
��1000��  HistoryOutputVM � DataContext# [ .���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag �� *Title+	 �� ElementName$	 window��� $��1�� �� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��$��5q�.��� $��	 0 0 0 10q�.+�(  "System.Windows.Controls.DatePicker  $��Center=�$	��100��)  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Ngày bắt đầu��$��5 5 15 5q� ( $MaterialDesignFloatingHintDatePicker#��[    SelectedDate �� *
DateOutput+  $��Center=�$	��100��$
 Ngày kết thúc��$��5 5 15 5q�#��[  �� *
DateOutput+��  # MaterialDesignRaisedLightButton#��[ $	��100�� � ToolTip$ Filter - Lọc��$��Lọc��  $��2��$��5q�$��Stretch=�.���� ���� *List+ �� SelectedItem �� *SelectedItem+ �� View �� .P��� $��ID�� �� DisplayMemberBinding �� *Id+�� $��Ngày xuất�� �� *
DateOutput+ �� StringFormat$ 
dd/MM/yyyy���� $��Người xuất�� �� *User.DisplayName+