   M S B A M L   `   `   `  ���� M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  "    CakeStorManagement.InputCake   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:CakeStorManagement     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  7uc.clr-namespace:CakeStorManagement.MyUserControl  -   $��inputcakewindow��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � Title$ Nhập hàng��$	��720��$
��1000��  InputCakeVM � DataContext# [ .���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag �� *Title+	 �� ElementName$	 inputcakewindow��� $��1�� �� $
��auto ��� $
��auto ��� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��$�� 5 5 5 5q�.��� .+��� $��Center=�$��10q�$��70��$��Id hóa đơn: ���� $��Center=�$��80������ *	IdInput+
 �� UpdateSourceTrigger$
 PropertyChanged=��� $��Center=�$��10q�$��70��$��Ngày nhập: ���� $��Center=�$��3q�$	��100������ *	DateInput+$
 PropertyChanged=��� $��Center=�$��10q�$	��120��$!��Người tạo hóa đơn: ���� $��Center=�$��3q�$	��100������ *	UserInput+$
 PropertyChanged=�  $��1��$��5q�.��� $��	 0 0 0 10q�.+��� $��5 5 15 5q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Tên hàng�� �� 
IsEditable .  �� DisplayMemberPath$ DisplayName�� & "MaterialDesignFloatingHintComboBox#��[ ���� *
CakeList+ �� SelectedItem �� *SelectedCake+ �� Mode$ TwoWay=�$
 PropertyChanged=��� $ Số lượng��$��5 5 15 5q� % !MaterialDesignFloatingHintTextBox#��[ ���� *Count+$
 PropertyChanged=��� $ Giá nhập��$��5 5 15 5q�#��[ ���� *
InputPrice+$
 PropertyChanged=��� $ Giá xuất��$��5 5 15 5q�#��[ ���� *OutputPrice+$
 PropertyChanged=��� $ Trạng thái��$��5 5 15 5q�#��[ ���� *Status+$
 PropertyChanged=�  $��2��$��5q�.��� .+���   MaterialDesignRaisedButton#��[ $	��100��$��5q�$��Thêm��
����d����� *
AddCommand+�� #��[ $	��100��$��5q�
����+��$��Sửa������ *EditCommand+�� #��[ $	��100��$��5q�$
��Xóa��
��� E������ *DeleteCommand+��  $  MaterialDesignRaisedAccentButton#��[ $	��100��$��5q�$
��Xong������ *FinishCommand+���� $	 inputcakewindow��  $��3��$��5q�$��Stretch=�.���� $
��Auto=�.���� ���� *List+ �� *SelectedItem+$ TwoWay=� �� View �� .P��� $��
Tên hàng�� �� DisplayMemberBinding �� *Cake.DisplayName+�� $��Số lượng�� �� *Count+�� $��Giá nhập�� �� *
InputPrice+�� $��Giá xuất�� �� *OutputPrice+�� $��Trạng thái�� �� *Status+