   M S B A M L   `   `   `  ���� M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  #    CakeStorManagement.OutputCake   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:CakeStorManagement     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  7uc.clr-namespace:CakeStorManagement.MyUserControl  -   $��outputcakewindow��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � Title$ Xuất hàng��$	��720��$
��1000��  OutputCakeVM � DataContext# [ .���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag �� *Title+	 �� ElementName$	 outputcakewindow��� $��1�� �� $
��auto ��� $
��auto ��� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��.��� .+��� $��Center=�$��10q�$��70��$��Id hóa đơn: ���� $��Center=�$��80������ *
IdOutput+
 �� UpdateSourceTrigger$
 PropertyChanged=��� $��Center=�$��10q�$��70��$��Ngày xuất: ���� $��Center=�$��3q�$	��100������ *
DateOutput+$
 PropertyChanged=��� $��Center=�$��10q�$	��120��$!��Người tạo hóa đơn: ���� $��Center=�$��3q�$	��100������ *
UserOutput+$
 PropertyChanged=�  $��1��$��5q�.��� $��	 0 0 0 10q�.+��� $��5 5 15 5q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Tên hàng�� �� 
IsEditable .  �� DisplayMemberPath$ DisplayName�� & "MaterialDesignFloatingHintComboBox#��[ ���� *
CakeList+ �� SelectedItem �� *SelectedCake+ �� Mode$ TwoWay=�$
 PropertyChanged=��� $ Số lượng��$��5 5 15 5q� % !MaterialDesignFloatingHintTextBox#��[ ���� *Count+$
 PropertyChanged=��� $��5 5 15 5q�$ Giá xuất�� . #��[ ���� *OutputPriceList+ �� *SelectedPrice+$ TwoWay=�$
 PropertyChanged=��� $��5 5 15 5q�$ Khách hàng�� . $ DisplayName��#��[ ���� *CustomerList+ �� *SelectedCustomer+$ TwoWay=�$
 PropertyChanged=��� $ Trạng thái��$��5 5 15 5q�#��[ ���� *Status+$
 PropertyChanged=��� $	��110��$��Center=�$��18(�$��Số lượng tồn: ���� $��Center=�$	��200��$��20(����� *InventoryCake+$
 PropertyChanged=�  $��2��$��5q�.��� .+���   MaterialDesignRaisedButton#��[ $	��100��$��5q�$��Thêm��
����d����� *
AddCommand+�� #��[ $	��100��$��5q�
����+��$��Sửa������ *EditCommand+�� #��[ $	��100��$��5q�$
��Xóa��
��� E������ *DeleteCommand+��  $  MaterialDesignRaisedAccentButton#��[ $	��100��$��5q�$
��Xong������ *FinishCommand+���� $	 outputcakewindow��  $��3��$��5q�$��Stretch=�.���� $
��Auto=�.���� ���� *List+ �� *SelectedItem+$ OneWayToSource=� �� View �� .P��� $��
Tên hàng�� �� DisplayMemberBinding �� *Cake.DisplayName+�� $��Số lượng�� �� *Count+�� $��Giá xuất�� �� *OutputPrice+�� $��Khách hàng�� �� *Customer.DisplayName+�� $��Trạng thái�� �� *Status+