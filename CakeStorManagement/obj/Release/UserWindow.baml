   M S B A M L   `   `   `  ���� M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  #    CakeStorManagement.UserWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:CakeStorManagement     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  7uc.clr-namespace:CakeStorManagement.MyUserControl  -   $��window��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � Title$
 User��$	��720��$
��1000�� 
 UserVM � DataContext# [ .���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag �� *Title+	 �� ElementName$	 window��� $��1�� �� $
��auto ��� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��$��5q�.��� $��	 0 0 0 10q�.+��� )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Mã nhân viên��$��5 5 15 5q� % !MaterialDesignFloatingHintTextBox#��[ ���� *Id+ �� UpdateSourceTrigger$ PropertyChanged=��� $
 Tên  đăng nhập��$��5 5 15 5q�#��[ ���� *
UserName+$ PropertyChanged=��� $��5 5 15 5q�$
 Quyền�� �� 
IsEditable .  �� DisplayMemberPath$ DisplayName�� & "MaterialDesignFloatingHintComboBox#��[ ���� *UserRoleList+ �� SelectedItem �� *SelectedUserRole+ �� Mode$ TwoWay=�$ PropertyChanged=��� $
 Tên hiển thị��$��5 5 15 5q�#��[ ���� *DisplayName+$ PropertyChanged=��� $
 Mật khẩu��$��5 5 15 5q�#��[ ���� *SelectedItem.PassWords+  $��1��$��5q�.��� .+���   MaterialDesignRaisedButton#��[ $	��100��$��5q�$��Thêm��
����d����� *
AddCommand+�� #��[ $	��100��$��5q�
����+��$��Sửa������ *EditCommand+�� #��[ $	��100��$��5q�$
��Xóa��
��� E������ *DeleteCommand+�� #��[ $	��100��$��5q�$��Đổi Pass������ *ChangePasswordCommand+  $��2��$��5q�$��Stretch=�.���� $
��Auto=�.���� ���� *List+ �� *SelectedItem+$ OneWayToSource=� �� View �� .P��� $��ID�� �� DisplayMemberBinding �� *Id+�� $��Tên đăng nhập�� �� *
UserName+�� $��Tên hiển thị�� �� *DisplayName+�� $��Chức vụ�� �� *UserRole.DisplayName+