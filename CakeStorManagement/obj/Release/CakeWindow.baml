   M S B A M L   `   `   `  ���� M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  #    CakeStorManagement.CakeWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:CakeStorManagement     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  7uc.clr-namespace:CakeStorManagement.MyUserControl  -   $��
cakewindow��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � Title$ Các loại bánh��$	��720��$
��1000�� 
 CakeVM � DataContext# [ .���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag �� *Title+	 �� ElementName$	 
cakewindow��� $��1�� �� $
��auto ��� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��$��5q�.��� $��	 0 0 0 10q�.+��� )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$

 Tên��$��5 5 15 5q� % !MaterialDesignFloatingHintTextBox#��[ ���� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=��� $��5 5 15 5q�$
 Đơn vị đo�� �� 
IsEditable .  �� DisplayMemberPath$ DisplayName�� & "MaterialDesignFloatingHintComboBox#��[ ���� *
UnitList+ �� SelectedItem �� *SelectedUnit+ �� Mode$ TwoWay=�$ PropertyChanged=��� $��5 5 15 5q�$
 Nhà cung cấp�� . $ DisplayName��#��[ ���� *SuplierList+ �� *SelectedSuplier+$ TwoWay=�$ PropertyChanged=��� $
 QRCode��$��5 5 15 5q�#��[ ���� *QRCode+$ PropertyChanged=��� $
 BarCode��$��5 5 15 5q�#��[ ���� *	BarCode+$ PropertyChanged=�  $��1��$��5q�.��� .+���   MaterialDesignRaisedButton#��[ $	��100��$��5q�$��Thêm��
����d� �� 	IsDefault . ���� *
AddCommand+�� #��[ $	��100��$��5q�
����+��$��Sửa������ *EditCommand+�� #��[ $	��100��$��5q�$
��Xóa��
��� E������ *DeleteCommand+�� $	��299����  # MaterialDesignRaisedLightButton#��[ $	��150��$��5q�$��Quản lí đơn vị đo������ *UnitCommand+���� $	 
cakewindow��  $��2��$��5q�$��Stretch=�.���� ���� *List+ �� *SelectedItem+$ OneWayToSource=� �� View �� .P��� $��ID�� �� DisplayMemberBinding �� *Id+�� $
��Tên�� �� *DisplayName+�� $��Đơn vị đo�� �� *Unit.DisplayName+�� $��Nhà cung cấp�� �� *Suplier.DisplayName+�� $��QRCode�� �� *QRCode+�� $��BarCode�� �� *	BarCode+