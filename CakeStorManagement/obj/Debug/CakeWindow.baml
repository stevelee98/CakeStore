   M S B A M L   `   `   `  ����M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  5   	   S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  5   	   #    CakeStorManagement.CakeWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CakeStorManagement     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   7uc.clr-namespace:CakeStorManagement.MyUserControl  5   	   -   5        $��
cakewindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Các loại bánh��5   	   $	��720��6   $
��1000��6,    
 CakeVM � DataContext# [ 5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5    
   � $��0��6   .+�5!      3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 
cakewindow��6P   5"      � 5#   
   $��1��6    5$      �� 5%      $
��auto �6    60   �� 5&      $
��auto �6    60   �� 5'      6"   .+�5)      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5*      � $��	 0 0 0 10q�6   .+�5+      �� )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$

 Tên��6   $��5 5 15 5q�6C    % !MaterialDesignFloatingHintTextBox#��[ 5,   _   ��6   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�6_   �� 5.      $��5 5 15 5q�6   $
 Loại bánh��61    �� 
IsEditable .  �� DisplayMemberPath$ DisplayName��5/       & "MaterialDesignFloatingHintComboBox#��[ 51      ��50      �� *CakeTypeList+ �� SelectedItem 6D   �� *SelectedCakeType+ �� Mode$ TwoWay=�$ PropertyChanged=�51      �� 53      $��5 5 15 5q�6   $
 Nhà cung cấp��61    . $ DisplayName��54      #��[ 56      ��55      �� *SuplierList+ 6C   �� *SelectedSuplier+$ TwoWay=�$ PropertyChanged=�56      �� 58      $
 BarCode��6   $��5 5 15 5q�6G   #��[ 59   [   ��6   �� *	BarCode+$ PropertyChanged=�6[   5:      5;        5<      $��1��6"   $��5q�6/   .��5=      � .+�5>      ��   MaterialDesignRaisedButton#��[ 6   $	��100��6Q   $��5q�6^   $��Thêm��5?      
����d� �� 	IsDefault . ��5@      �� *
AddCommand+6<   �� 5A      #��[ 6   $	��100��6Q   $��5q�6^   
����+��$��Sửa��5C      ��5D      �� *EditCommand+�� 5E      #��[ 6   $	��100��6Q   $��5q�6^   $
��Xóa��5F      
��� E����5G      �� *DeleteCommand+�� 5H      $	��299��6   6,   5I      5J        5K      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5M      �� ��6   �� *List+ 68   �� *SelectedItem+$ OneWayToSource=� �� View 5N      �� 5O      .P�5P      �� $��ID��6-    �� DisplayMemberBinding 69   �� *Id+6_   �� 5Q      $
��Tên��6-    6:   �� *DisplayName+6i   �� 5R      $��Loại bánh��6-    6@   �� *CakeType.DisplayName+6x   �� 5S      $��Nhà cung cấp��6-    6C   �� *Suplier.DisplayName+6z   �� 5T      $��BarCode��6-    6>   �� *	BarCode+6i   5U      5W      5Y      5Z      5[      5\      