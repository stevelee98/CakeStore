   M S B A M L   `   `   `  ����M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  5   	   S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  5   	   +    %CakeStorManagement.OutputDetailWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CakeStorManagement     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      7uc.clr-namespace:CakeStorManagement.MyUserControl  5   	   -   5        $��window��5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Danh sách hàng xuất��5   	   $	��720��6%   $
��1000��62     OutputDetailVM � DataContext# [ 5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 window��6L   5       � 5!   
   $��1��6    5"      �� 5#      $
��auto �6    60   �� 5$      6"   .+�5&      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5'      � $��	 0 0 0 10q�6   .+�5(      �� )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 ID đơn hàng��6   $��5 5 15 5q�6K   |�.   % !MaterialDesignFloatingHintTextBox#��[ 5)   m   ��6/   �� *
IdOutput+ �� UpdateSourceTrigger$ PropertyChanged=�6m   �� 5*      $
 Người tạo��6   $��5 5 15 5q�6I   |�.  #��[ 5+   s   ��6/   �� *UserNameOutput+$ PropertyChanged=�6s   �� 5,      $
 Ngày xuất��6   $��5 5 15 5q�6I   |�.  #��[ 5-   o   ��6/   �� *
DateOutput+$ PropertyChanged=�6o   �� 5.      $ 
 Số lượng hàng xuất��6   $��5 5 15 5q�6R   |�.  #��[ 5/   o   ��6/   �� *
TotalCount+$ PropertyChanged=�6o   �� 50      $!
 Phương thức thanh toán��6   $��5 5 15 5q�6V   |�.  #��[ 51   p   ��6/   �� *PayMentType+$ PropertyChanged=�6p   52      53        54      $��1��6"   $��5q�6/   $��Stretch=�6:   .��55      �� $
��Auto=�6   .��56      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 57      �� 58      .P�59   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 5:   "   $��
Tên hàng��61    6C   �� *Cake.DisplayName+6w   �� 5;   "   $��Ngày xuất��61    6D   �� *Output.DateOutput+6y   �� 5<   "   $��Số lượng��61    6C   �� *Count+6l   �� 5=   "   $��Giá xuất��61    6C   �� *OutputPrice+6r   �� 5>   "   $��Khách hàng��61    6E   �� *Customer.DisplayName+6}   �� 5?   "   $��Trạng thái��61    6F   �� *Status+6p   5@      5B      5C      5D      5E      5F      5G      