   M S B A M L   `   `   `  ���� M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  '    !CakeStorManagement.CustomerWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:CakeStorManagement     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  7uc.clr-namespace:CakeStorManagement.MyUserControl  -   $��window��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � Title$ Khách hàng��$	��720��$
��1000��  
CustomerVM � DataContext# [ .���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag �� *Title+	 �� ElementName$	 window��� $��1�� �� $
��auto ��� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��$��5q�.��� $��	 0 0 0 10q�.+��� )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên khách hàng��$��5 5 15 5q� % !MaterialDesignFloatingHintTextBox#��[ ���� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=��� $
 Địa chỉ��$��5 5 15 5q�#��[ ���� *	Address+$ PropertyChanged=��� $
 Điện thoại��$��5 5 15 5q�#��[ ���� *Phone+$ PropertyChanged=��� $
 Email��$��5 5 15 5q�#��[ ���� *Email+$ PropertyChanged=��� $
 Thông tin thêm��$��5 5 15 5q�#��[ ���� *	MoreInfor+$ PropertyChanged=�(  "System.Windows.Controls.DatePicker  $��Center=�$	��100��$
 Ngày hợp tác��$��5 5 15 5q� ( $MaterialDesignFloatingHintDatePicker#��[    SelectedDateFormat$
 Long=�   SelectedDate �� *ContractDate+  $��1��$��5q�.��� .+���   MaterialDesignRaisedButton#��[ $	��100��$��5q�$��Thêm��
����d����� *
AddCommand+�� #��[ $	��100��$��5q�
����+��$��Sửa������ *EditCommand+�� #��[ $	��100��$��5q�$
��Xóa��
��� E������ *DeleteCommand+  $��2��$��5q�$��Stretch=�.���� ���� *List+ �� SelectedItem �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View �� .P��� $��ID�� �� DisplayMemberBinding �� *Id+�� $��Tên khách hàng�� �� *DisplayName+�� $��Địa chỉ�� �� *	Address+�� $��Điện thoại�� �� *Phone+�� $��Email�� �� *Email+�� $��Thông tin thêm�� �� *	MoreInfor+�� $��Ngày hợp tác�� �� *ContractDate+ �� StringFormat$ 
dd/MM/yyyy��