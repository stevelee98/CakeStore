   M S B A M L   `   `   `  ����M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  5   	   S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  5   	   "    CakeStorManagement.InputCake   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CakeStorManagement     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      7uc.clr-namespace:CakeStorManagement.MyUserControl  5   	   -   5        $��inputcakewindow��5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Nhập hàng��5   	   $	��720��6   $
��1000��6(     InputCakeVM � DataContext# [ 5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5    
   � $��0��6   .+�5!      3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 inputcakewindow��6U   5"      � 5#   
   $��1��6    5$      �� 5%      $
��auto �6    60   �� 5&      $
��auto �6    60   �� 5'      $
��auto �6    60   �� 5(      6"   .+�5*      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $�� 5 5 5 5q�6/   .��5+      � .+�5,      �� $��Center=�6    $��10q�6;   $��70��6G   $��Id hóa đơn: ��5-      �� 5.      $��Center=�6!   $��80��6<   ��5/      �� *	IdInput+
 �� UpdateSourceTrigger$
 PropertyChanged=��� 50      $��Center=�6    $��10q�6;   $��70��6G   $��Ngày nhập: ��51      �� 52      $��Center=�6!   $��3q�6<   $	��100��6G   ��53      �� *	DateInput+$
 PropertyChanged=��� 54      $��Center=�6    $��10q�6;   $	��120��6G   $!��Người tạo hóa đơn: ��55      �� 56      $��Center=�6!   $��3q�6<   $	��100��6G   ��57      �� *	UserInput+$
 PropertyChanged=�59      5:        5<      $��1��6"   $��5q�6/   .��5>      � $��	 0 0 0 10q�6   .+�5?      �� $��5 5 15 5q�6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Tên hàng��61    �� 
IsEditable .  �� DisplayMemberPath$ DisplayName��5@       & "MaterialDesignFloatingHintComboBox#��[ 5B      ��5A      �� *
CakeList+ �� SelectedItem 6@   �� *SelectedCake+ �� Mode$ TwoWay=�$
 PropertyChanged=�5B      �� 5D      $ Số lượng��6   $��5 5 15 5q�6H    % !MaterialDesignFloatingHintTextBox#��[ 5E   Y   ��6   �� *Count+$
 PropertyChanged=�6Y   �� 5F      $ Giá nhập��6   $��5 5 15 5q�6H   #��[ 5G   ^   ��6   �� *
InputPrice+$
 PropertyChanged=�6^   �� 5H      $ Trạng thái��6   $��5 5 15 5q�6J   #��[ 5I   Z   ��6   �� *Status+$
 PropertyChanged=�6Z   5J      5K        5L      $��2��6"   $��5q�6/   .��5M      �  � ColumnDefinitions 5N      �� 5O      6-   �� 5P      $
��auto �6+   6:   .+�5S      � $��0��6   .+�5T      ��   MaterialDesignRaisedButton#��[ 6   $	��100��6Q   $��5q�6^   $��Thêm��5U      
����d���5V      �� *
AddCommand+�� 5W      #��[ 6   $	��100��6Q   $��5q�6^   
����+��$��Sửa��5Y      ��5Z      �� *EditCommand+�� 5[      #��[ 6   $	��100��6Q   $��5q�6^   $
��Xóa��5\      
��� E����5]      �� *DeleteCommand+�� 5^       $  MaterialDesignRaisedAccentButton#��[ 6   $	��100��6W   $��5q�6d   $
��Xong��5_      ��5`      �� *FinishCommand+��5a      �� $	 inputcakewindow��5c      �� 5d      $��1��6   #��[ 6)   $	��100��6]   $��5q�6j   $
��Bỏ��5e      
��� E����5f      �� *DestroyInputCommand+��5g      �� $	 inputcakewindow��5i      5j        5k      $��3��6"   $��5q�6/   $��Stretch=�6:   .��5l      �� $
��Auto=�6   .��5m      �� ��6   �� *List+ 6<   �� *SelectedItem+$ TwoWay=� �� View 5n      �� 5o      .P�5p   "   �� $��
Tên hàng��61    �� DisplayMemberBinding 6C   �� *Cake.DisplayName+6w   �� 5q   "   $��Nhà cung cấp��61    6G   �� *Suplier.DisplayName+6~   �� 5r   "   $��Số lượng��61    6C   �� *Count+6l   �� 5s   "   $��Giá nhập��61    6C   �� *
InputPrice+6q   �� 5t   "   $��Trạng thái��61    6F   �� *Status+6p   5u      5w      5x      5y      5z      5{      5|      