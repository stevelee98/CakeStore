   M S B A M L   `   `   `  ����M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  5   	   S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  5   	   &     CakeStorManagement.SuplierWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CakeStorManagement     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   7uc.clr-namespace:CakeStorManagement.MyUserControl  5   	   -   5        $��window��5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Nhà cung cấp��5   	   $	��720��6   $
��1000��6+     	SuplierVM � DataContext# [ 5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 window��6L   5       � 5!   
   $��1��6    5"      �� 5#      $
��auto �6    60   �� 5$      $
��auto �6    60   �� 5%      6"   .+�5'      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5(      � $��	 0 0 0 10q�6   .+�5)      �� )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên nhà cung cấp��6   $��5 5 15 5q�6P    % !MaterialDesignFloatingHintTextBox#��[ 5*   l   ��6   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�6l   �� 5+      $
 Địa chỉ��6   $��5 5 15 5q�6G   #��[ 5,   [   ��6   �� *	Address+$ PropertyChanged=�6[   �� 5-      $
 Điện thoại��6   $��5 5 15 5q�6J   #��[ 5.   Y   ��6   �� *Phone+$ PropertyChanged=�6Y   �� 5/      $
 Email��6   $��5 5 15 5q�6E   #��[ 50   Y   ��6   �� *Email+$ PropertyChanged=�6Y   (  "System.Windows.Controls.DatePicker  51      $��Center=�6!   $	��100��6=   $
 Ngày hợp tác��6I   $��5 5 15 5q�6w    ( $MaterialDesignFloatingHintDatePicker#��[ 6�      SelectedDateFormat$
 Long=�52   #      SelectedDate 53   !   �� *ContractDate+54      55        56      $��1��6"   $��5q�6/   .��57      � .+�58      ��   MaterialDesignRaisedButton#��[ 6   $	��100��6Q   $��5q�6^   $��Thêm��59      
����d���5:      �� *
AddCommand+�� 5;      #��[ 6   $	��100��6Q   $��5q�6^   
����+��$��Sửa��5=      ��5>      �� *EditCommand+�� 5?      #��[ 6   $	��100��6Q   $��5q�6^   $
��Xóa��5@      
��� E����5A      �� *DeleteCommand+5B      5C        5D      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5E      �� $
��Auto=�6   .��5F      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5G      �� 5H      .P�5I   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 5J   "   $��Tên nhà cung cấp��61    6K   �� *DisplayName+6z   �� 5K   "   $��Địa chỉ��61    6B   �� *	Address+6m   �� 5L   "   $��Điện thoại��61    6E   �� *Phone+6n   �� 5M   "   $��Email��61    6@   �� *Email+6i   �� 5N   "   $��Ngày hợp tác��61    6G   �� *ContractDate+ �� StringFormat$ 
dd/MM/yyyy��6�   5P      5R      5S      5T      5U      5V      5W      