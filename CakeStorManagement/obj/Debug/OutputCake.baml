   M S B A M L   `   `   `  ����M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  5   	   S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  5   	   #    CakeStorManagement.OutputCake   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CakeStorManagement     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      7uc.clr-namespace:CakeStorManagement.MyUserControl  5   	   -   5        $��outputcakewindow��5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Xuất hàng��5   	   $	��720��6   $
��1000��6(     OutputCakeVM � DataContext# [ 5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 outputcakewindow��6V   5       � 5!   
   $��1��6    5"      �� 5#      $
��auto �6    60   �� 5$      $
��auto �6    60   �� 5%      $
��auto �6    60   �� 5&      6"   .+�5(      #  MaterialDesignThemes.Wpf.Card  $��0��6"   .��5)      � .+�5*      �� $��Center=�6    $��10q�6;   $��70��6G   $��Id hóa đơn: ��5+      �� 5,      $��Center=�6!   $��80��6<   ��5-      �� *
IdOutput+
 �� UpdateSourceTrigger$
 PropertyChanged=��� 5.      $��Center=�6    $��10q�6;   $��70��6G   $��Ngày xuất: ��5/      �� 50      $��Center=�6!   $��3q�6<   $	��100��6G   ��51      �� *
DateOutput+$
 PropertyChanged=��� 52      $��Center=�6    $��10q�6;   $	��120��6G   $!��Người tạo hóa đơn: ��53      �� 54      $��Center=�6!   $��3q�6<   $	��100��6G   ��55      �� *
UserOutput+$
 PropertyChanged=�56      57        58      $��1��6"   $��5q�6/   .��59      � $��	 0 0 0 10q�6   .+�5:      �� $��5 5 15 5q�6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Tên hàng��61    �� 
IsEditable .  �� DisplayMemberPath$ DisplayName��5;       & "MaterialDesignFloatingHintComboBox#��[ 5=      ��5<      �� *
CakeList+ �� SelectedItem 6@   �� *SelectedCake+ �� Mode$ TwoWay=�$
 PropertyChanged=�5=      �� 5>      $ Số lượng��6   $��5 5 15 5q�6H    % !MaterialDesignFloatingHintTextBox#��[ 5?   Y   ��6   �� *Count+$
 PropertyChanged=�6Y   �� 5@      $ Giá xuất��6   $��5 5 15 5q�6H   #��[ 5A   _   ��6   �� *OutputPrice+$
 PropertyChanged=�6_   �� 5B      $��5 5 15 5q�6   $ Khách hàng��61    . $ DisplayName��5C      #��[ 5E      ��5D      �� *CustomerList+ 6D   �� *SelectedCustomer+$ TwoWay=�$
 PropertyChanged=�5E      �� 5F      $ Trạng thái��6   $��5 5 15 5q�6J   #��[ 5G   Z   ��6   �� *Status+$
 PropertyChanged=�6Z   �� 5H      $	��110��6    $��Center=�6,   $��16(�6G   $��Số lượng tồn: ��5I      �� 5J      $��Center=�6    $	��150��6<   $��18(�6H   ��5K      �� *InventoryCake+$
 PropertyChanged=��� 5L      $	��110��6    $��Center=�6,   $��16(�6G   $��Giá nhập: ��5M      �� 5N      $��Center=�6    $	��150��6<   $��18(�6H   ��5O      �� *
PriceInput+$
 PropertyChanged=�5P      5Q        5S      $��2��6"   $��5q�6/   .��5T      �  � ColumnDefinitions 5U      �� 5V      6-   �� 5W      $
��auto �6+   6:   .+�5Z      � $��0��6    .+�5[      ��   MaterialDesignRaisedButton#��[ 6!   $	��100��6U   $��5q�6b   $��Thêm��5\      
����d���5]      �� *
AddCommand+�� 5^      #��[ 6!   $	��100��6U   $��5q�6b   
����+��$��Sửa��5`      ��5a      �� *EditCommand+�� 5b      #��[ 6!   $	��100��6U   $��5q�6b   $
��Xóa��5c      
��� E����5d      �� *DeleteCommand+�� 5e       $  MaterialDesignRaisedAccentButton#��[ 6!   $	��100��6[   $��5q�6h   $
��Xong��5f      ��5g      �� *FinishCommand+��5h      �� $	 outputcakewindow��5j      �� 5k      $��1��6   #��[ 6-   $	��100��6a   $��5q�6n   $
��Bỏ��5l      
��� E����5m      �� *DestroyInputCommand+��5n      �� $	 outputcakewindow��5o      5p        5q      $��3��6"   $��5q�6/   $��Stretch=�6:   .��5r      �� $
��Auto=�6   .��5s      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5t      �� 5u      .P�5v   "   �� $��
Tên hàng��61    �� DisplayMemberBinding 6C   �� *Cake.DisplayName+6w   �� 5w   "   $��Số lượng��61    6C   �� *Count+6l   �� 5x   "   $��Giá xuất��61    6C   �� *OutputPrice+6r   �� 5y   "   $��Khách hàng��61    6E   �� *Customer.DisplayName+6}   �� 5z   "   $��Trạng thái��61    6F   �� *Status+6p   5{      5}      5~      5      5�      5�      5�      