   M S B A M L   `   `   `  ����M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  5   	   S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  5   	   #    CakeStorManagement.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CakeStorManagement     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      7uc.clr-namespace:CakeStorManagement.MyUserControl  5   	   -   5        $��window��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$
 User��5   	   $	��720��6   $
��1000��6#    
 UserVM � DataContext# [ 5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5    
   � $��0��6   .+�5!      3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 window��6L   5"      � 5#   
   $��1��6    5$      �� 5%      $
��auto �6    60   �� 5&      $
��auto �6    60   �� 5'      6"   .+�5)      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5*      � $��	 0 0 0 10q�6   .+�5+      �� )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên  đăng nhập��6   $��5 5 15 5q�6N    % !MaterialDesignFloatingHintTextBox#��[ 5,   \   ��6   �� *
UserName+ �� UpdateSourceTrigger$ PropertyChanged=�6\   �� 5-      $��5 5 15 5q�6   $
 Quyền��61    �� 
IsEditable .  �� DisplayMemberPath$ DisplayName��5.       & "MaterialDesignFloatingHintComboBox#��[ 50      ��5/      �� *UserRoleList+ �� SelectedItem 6D   �� *SelectedUserRole+ �� Mode$ TwoWay=�$ PropertyChanged=�50      �� 51      $
 Mật khẩu��6   $��5 5 15 5q�6H   #��[ 53   "   ��52      �� *
PassWord+$ PropertyChanged=�53   "   55      56        57      $��1��6"   $��5q�6/   .��58      � .+�59      ��   MaterialDesignRaisedButton#��[ 6   $	��100��6Q   $��5q�6^   $��Thêm��5:      
����d���5;      �� *
AddCommand+�� 5<      #��[ 6   $	��100��6Q   $��5q�6^   
����+��$��Sửa��5>      ��5?      �� *EditCommand+�� 5@      #��[ 6   $	��100��6Q   $��5q�6^   $
��Xóa��5A      
��� E����5B      �� *DeleteCommand+�� 5C      #��[ 6   $	��100��6Q   $��5q�6^   $��Đổi Pass��5D      ��5E      �� *ChangePasswordCommand+5F      5G        5H      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5I      �� $
��Auto=�6   .��5J      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5K      �� 5L      .P�5M   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 5N   "   $��Tên đăng nhập��61    6H   �� *
UserName+6t   �� 5O   "   $��Chức vụ��61    6B   �� *UserRole.DisplayName+6z   5P      5R      5S      5T      5U      5V      5W      