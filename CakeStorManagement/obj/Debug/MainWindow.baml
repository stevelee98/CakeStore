   M S B A M L   `   `   `  ����M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  5   	   ` \De.TorstenMandelkow.MetroChart, Version=0.9.5818.20693, Culture=neutral, PublicKeyToken=nullwTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChartDe.TorstenMandelkow.MetroChart 5   	   S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  5   	   #    CakeStorManagement.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CakeStorManagement     5   	   k
MetroChartTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChart     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   
   7uc.clr-namespace:CakeStorManagement.MyUserControl  5   	   -   5        $��
mainwindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Phần mềm quản lý��5   	   $	��750��6"   $
��1300��6/    
 MainVM � DataContext# [ 5   	    � 	Resources 5        ScrollThumbs �� 
TargetType	 �� Property
 �� Value �� 
TargetType �Name ��Name �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName ]�Name ]� Thumb n�Name ]� IncreaseRepeatButton ��Name J� Opacity ]� DecreaseRepeatButton P� 
SourceName  ButtonSelectBrush  	DarkBrush �� Angle�� 5   
   %�  &	       '�� D    �� 5      " n�6)   .�5      �� 	 � ��
 5      �� 5       " n�6*   .R�5!      � $
 Grid��6#   .+�5"   "   �� $��Stretch=�6,   $��Stretch=�6J   $
��Auto��6f   $
��Auto��6s   
������ 6�   �� 5#   "   $ 
Rectangle1��6)   $ 10��6=   $��Stretch=�6O   $��Stretch=�6m   $
��Auto��6�   $
��Auto��6�   #��z��6�   5$       5%      P� 5&   "    �@�Tag$ 
Horizontal��69   . �5'   &   �� $ 
Rectangle1��6-   	 � ��$

 Auto��6V   �� 5(   &   $ 
Rectangle1��6-   	 � ��$
 7��6W   5)   #   5+      5-      5.      �� 51      " ��6/   .�52      �� 	 �@��IsFlicksEnabled
 .  6;   �� 53      	 � ��

 �����6/   �� 54      	 � ��

 �����6/   �� 55      	 � ��$
 10��6*   �� 56      	 � ��
 57      �� 58      " ��6*   .R�59      � $ GridRoot��6#   $��19��65   ��6@   Z� .+�5:   "   ]� $ 
PART_Track��6(   $��0��6<   ��. |�.   5;   &   n� 5<   *   $ Thumb��60   #��z��6?   #���  6i    5>   &   �� 5?   *   $ PageUp��67   $��ScrollBar.PageDownCommand��6G   $ 0Q�6k   |�.  6w    5A   &   �� 5B   *   $ PageDown��67   $��ScrollBar.PageUpCommand��6I   $ 0Q�6k   |�.  6w   5D   #   5E       5G      P� 5H   "   $ Thumb��6*    �@J�IsMouseOver . . �5I   &   �� #
 �  6-   $ Thumb��6Y   	 � ��6l   5J   #   P� 5K   "   $ Thumb��6*    �@n�
IsDragging . . �5L   &   �� #
 �  6-   $ Thumb��6Q   	 � ��6d   5M   #   P� 5O   "    � {� .  . �5P   &   �� $ Thumb��6-   	 � y�$
 	Collapsed=�6V   5Q   #   P� 5R   "    �@��Orientation$ 
Horizontal=�6A   . �5S   &   �� $ GridRoot��6-   	 �@�LayoutTransform
 5T   *   �� 5U   .   $	 -90Q�6>   5W   '   �� 5X   &   $ 
PART_Track��6-   	 �@�LayoutTransform
 5Y   *   �� 5Z   .   $	 -90Q�6>   5\   '   �� 5]   &   	 � ��$

 Auto��6>   �� 5^   &   	 � ��$
 12��6?   �� 5_   &   $ Thumb��6-   	 �@�Tag$
 
Horizontal��6O   �� 5`   &   $ PageDown��6-   	 � ��$
 ScrollBar.PageLeftCommand��6V   �� 5a   &   $ PageUp��6-   	 � ��$ 
 ScrollBar.PageRightCommand��6T   5b   #   5d      5f      5g      5h      .  (System.Windows.Interactivity.Interaction   Triggers 5k      /  )System.Windows.Interactivity.EventTrigger  5l   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5m      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadedWindowCommand+    CommandParameter  6M   �� ! �� ElementName$! 
mainwindow��5n      .��5q      � " � RowDefinitions" 5r   
   �� 5s      $
��auto �6   �� 5t      .+�5v   
   � .+�5w      3   -CakeStorManagement.MyUserControl.ControlBarUC  
# � Tag# 6   �� *Title+$! 
mainwindow��6P   5x      � 5y   
   $��1��6   .+�5z      � $ � ColumnDefinitions$ 5{      �� 5|      $	��200 �6'   65   �� 5}      6)   .+�5�      � $��0��6   ��5�      �� 5�      % �� EndPoint$% 0.5,1&�6.   & �� 
StartPoint$& 0.5,0&�6?   .��5�      � ' � Color$' 	LightGray��6+   ( � Offset$( 1Q�6=   � 5�      $' 	#FFE6E6E6��6+   5�      " 5�      �� 5�      $	��100 �6(   �� 5�      $��* �6(   ) J� Effect) 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�      *   
BlurRadius$* 20Q�6+   +   Color$+ 	#FFDEDEDE��6;   ,   RenderingBias$, Quality=�6M   -   ShadowDepth$- 1Q�6e   .+�5�      � ���	#FFA46FE4.+�5�      �� $��	Xin chào��6$   $��Center=�64   $��Center=�6Q   $��WS Simple Gallifreyan)�6l   
�������$��15(�6�   $��63,10,61,66q�6�   �� 5�      $��Center=�6>   $��Center=�6[   $��WS Simple Gallifreyan)�6v   ���	#FFF3F3F7$��23(�6�   $��25,44,25,29q�6�   ��6$   �� *
UserName+6�   5�      �� 5�      $��1��6!   .+�5�      �� $��10q�6!   ���	#FF8522BD���	#FF8522BD��6\   �� *ViewStatisticCommand+.��5�      � $	��150��6#   .+�5�   "   '  !MaterialDesignThemes.Wpf.PackIcon  �	  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]. 	  Kind$. ViewDashboard=�6:   $��Center=�6O   �� 5�   "   $��Center=�6,   $��Thống kê��6I   $��Champagne & Limousines)�6Y   5�      5�      �� 5�      $��10q�6!   ���	#FF8522BD���	#FF8522BD��6\   �� *OutputCommand+.��5�      � $	��150��6#   .+�5�   "     $. Upload=�6:   $��Center=�6H   �� 5�   "   $��Center=�6,   $��Xuất hàng��6I   $��Champagne & Limousines)�6Z   5�      5�      �� 5�      $��10q�6!   ���	#FF8522BD���	#FF8522BD��6\   �� *InputCommand+.��5�      � $	��150��6#   .+�5�   "     $. Download=�6:   $��Center=�6J   �� 5�   "   $��Center=�6,   $��Nhập hàng��6I   $��Champagne & Limousines)�6Z   5�      5�      �� 5�      $��10q�6!   ���	#FF8522BD���	#FF8522BD��6\   �� *HistoryCommand+.��5�      � $	��150��6#   .+�5�   "     $. History=�6:   $��Center=�6I   �� 5�   "   $��Center=�6,   $��Lịch sử nhập xuất��6I   $��Champagne & Limousines)�6b   5�      5�      �� 5�      $��10q�6!   ���	#FF8522BD���	#FF8522BD��6\   �� *CakeCommand+.��5�      � $	��150��6#   .+�5�   "     $
. Food=�6:   $��Center=�6F   �� 5�   "   $��Center=�6,   $��Sản phẩm��6I   $��Champagne & Limousines)�6Y   5�      5�      �� 5�      $��10q�6!   ���	#FF8522BD���	#FF8522BD��6\   �� *CustomerCommand+.��5�      � $	��150��6#   .+�5�   "     $. HumanGreeting=�6:   $��Center=�6O   �� 5�   "   $��Center=�6,   $��Khách hàng��6I   $��Champagne & Limousines)�6[   5�      5�      �� 5�      $��10q�6!   ���	#FF8522BD���	#FF8522BD��6\   �� *SuplierCommand+.��5�      � $	��150��6#   .+�5�   "     $. TruckDelivery=�6:   $��Center=�6O   �� 5�   "   $��Center=�6,   $��Nhà cung cấp��6I   $��Champagne & Limousines)�6]   5�      5�      �� 5�      $��10q�6!   ���	#FF8522BD���	#FF8522BD��6\   �� *UserCommand+.��5�      � $	��150��6#   .+�5�   "     $. Account=�6:   $��Center=�6I   �� 5�   "   $��Center=�6,   $
��User��6I   $��Champagne & Limousines)�6U   5�      5�      �� 5�      $��10q�6!   ���	#FF8522BD���	#FF8522BD��6\   �� *LoadedWindowCommand+��6�   �� $! 
mainwindow��.��5�      � $	��150��6#   .+�5�   "     $. Logout=�6:   $��Center=�6H   �� 5�   "   $��Center=�6,   $��Đăng xuất��6I   $��Champagne & Limousines)�6Z   5�      5�      5�      5�      � 5�      $��1��6   ���	#FFCFCFCF.+�5�      �� .��5�      � " 5�      �� 5�   "   $	��200 �60   �� 5�   "   $��* �60   .+�5�      � $��0��6#   $ 5�   "   �� 5�   &   $��1* �67   �� 5�   &   $��1* �67   �� 5�   &   $��1* �67   .+�5�   "   � $��0��6'   .+�5�   &   �� $	��120��60   $��20q�6=   
�������/ �� RadiusY$/ 10��6V   0 �� RadiusX$0 10��6c   ) 5�   *     5�   .   $* 20Q�6?   $+ 	#FFDEDEDE��6O   $, Quality=�6a   $- 1Q�6y   5�   '   � 5�   &   $��25q�6+   $	��120��67   .+�5�   *   � $��35��6/   $��50��6:   ���	#FFFFAF24$
��Left=�6]   $	��Top=�6x   $
��20 0q�6�   ) 5�   .     5�   2   $* 20Q�6C   $+ 	#FFECECEC��6S   $, Quality=�6e   $- 1Q�6}   .+�5�   .     $. Cookie=�6F   $��Center=�6T   $��Bottom=�6q   $��5q�6�   
�������$��30��6�   $��30��6�   5�   +   �� 5�   *   $��Bánh bán chạy��64   $��Right=�6I   $��Champagne & Limousines)�6e   $��5q�6�   $	��Top=�6�   
�������$��15(�6�   �� 5�   *   1 �� Orientation$1 
Horizontal=�65   $��Right=�6N   $	��Top=�6j   $��10 30q�6�   .+�5�   .   �� $��Champagne & Limousines)�6W   $��Center=�6   
�������$��50(�6�   ��69   �� *CountCakeMax+6�   5�   +   �� 5�   *   $1 
Horizontal=�65   $��Bottom=�6N   $��10 15 q�6i   2 � Cursor$
2 Hand��6y   .+�5�   .   �� $��30(�6]   ���	#FF8522BD��68   �� *CountMaxDisplayName+6k   5�   +   �� 5�   *   $��Right=�65   $1 
Horizontal=�6Q   $��Bottom=�6j   $��10 15 q�6�   $
2 Hand��6�   .+�5�   .   �� $��bánh��68   $��10(�6D   
�������6R   5�   +   5�   '   5   #   � 5  "   $��1��6'   .+�5  &   �� $	��120��60   $��20q�6=   
�������$/ 10��6V   $0 10��6c   ) 5  *     5  .   $* 20Q�6?   $+ 	#FFDEDEDE��6O   $, Quality=�6a   $- 1Q�6y   5  '   � 5  &   $��25q�6+   $	��120��67   .+�5	  *   � $��35��6/   $��50��6:   ���	#FF41A43C$
��Left=�6]   $	��Top=�6x   $
��20 0q�6�   ) 5
  .     5  2   $* 20Q�6C   $+ 	#FFECECEC��6S   $, Quality=�6e   $- 1Q�6}   .+�5  .     $. CurrencyUsd=�6F   $��Center=�6Y   $��Bottom=�6v   $��5q�6�   
�������$��20��6�   $��20��6�   5  +   �� 5  *   $��Doanh thu tháng��64   $��15(�6K   $��Right=�6Y   $��Champagne & Limousines)�6u   $��5q�6�   $	��Top=�6�   
�������6�   �� 5  *   $1 
Horizontal=�65   $��Right=�6N   $	��Top=�6j   $��10 30q�6�   .+�5  .   �� $��Champagne & Limousines)�6o   $��Center=�6�   
�������$��40(�6�   ��68   �� *RevenueInMonth+3 �� StringFormat$3 {0:C0}��6�   5  +   �� 5  *   $1 
Horizontal=�65   $��Bottom=�6N   $��Right=�6i   $��10 15q�6�   .+�5  .   �� $
��VNĐ��68   $��20(�6C   
�������6Q   5  +   5  '   5  #   � 5  "   $��2��6'   .+�5  &   �� $	��120��60   $��20q�6=   
�������$/ 10��6V   $0 10��6c   ) 5  *     5  .   $* 20Q�6?   $+ 	#FFDEDEDE��6O   $, Quality=�6a   $- 1Q�6y   5  '   � 5  &   $��25q�6+   $	��120��67   .+�5   *   � $��35��6/   $��50��6:   ���	#FFCF1F1F$
��Left=�6]   $	��Top=�6x   $
��20 0q�6�   ) 5!  .     5"  2   $* 20Q�6C   $+ 	#FFECECEC��6S   $, Quality=�6e   $- 1Q�6}   .+�5$  .     $. InformationOutline=�6F   $��Center=�6`   $��Bottom=�6}   $��5q�6�   
�������$��20��6�   $��20��6�   5%  +   �� 5&  *   $��Bánh bán ế��64   $��15(�6F   $��Right=�6T   $��Champagne & Limousines)�6p   $��5q�6�   $	��Top=�6�   
�������6�   �� 5'  *   $1 
Horizontal=�65   $��Right=�6N   $	��Top=�6j   $��10 30q�6�   .+�5(  .   �� $��Champagne & Limousines)�6V   $��Center=�6~   
�������$��40(�6�   ��68   �� *CountCakeMin+6�   5)  +   �� 5*  *   $1 
Horizontal=�65   $��Bottom=�6N   $��10 15q�6i   .+�5+  .   �� $��30(�6]   ���	#FF8522BD��68   �� *CountMinDisplayName+6k   5,  +   5-  '   5.  #   50     � 53     $��1��6#   " 54  "   �� 55  &   $��1* �64   6B   �� 56  &   $��1* �64   6B   �� 57  &   $��1* �64   6B   $ 59  "   �� 5:  &   $��1* �67   �� 5;  &   $��1* �67   .+�5=  "   #
  MaterialDesignThemes.Wpf.Card
  $��0��66   $��1��6C   $��0,50,10,250q�6S   $	��300��6h   $��Right=�6t   $��Center=�5>  6   ��6Q   Z� .��5?  &   �� $��	 0 0 0 10q�61   .+�5@  *   �� $��Lọc thống kê��64   $��Center=�6H   $��Champagne & Limousines)�6e   $	��Top=�6�   
�������$��20(�6�   $��	80,0,92,0q�6�   (  "System.Windows.Controls.DatePicker  5A  *   $��Center=�65   $	��100��6Q   )  #MaterialDesignThemes.Wpf.HintAssist4   Hint$4 Ngày bắt đầu��6]   $��5 5 15 5q�6�    ( $MaterialDesignFloatingHintDatePicker#��[ 6�   5   SelectedDate5 5B  "   �� *	DateStart+  5C  *   $��Center=�65   $	��100��6Q   $4 Ngày kết thúc��6]   $��5 5 15 5q�6�   #��[ 6�   5 5D  "   �� *	DateEnd+�� 5E  *    # MaterialDesignRaisedLightButton#��[ 61   $	��100��6j   $��
-10,20,0,0q�6w   $��Center=�6�   6 � ToolTip$6 Filter - Lọc��5F     $��Lọc��64   ��6B   �� *StatisticCommand+5G  '   5H  #   � 5J  "   $��0��6'   $��0��64   $��2��6D   $
��Left=�6X   $	��700��6s   $	��500��6   $��10,0,0,0q�6�   .+�5K  &   � 
�������$��20 50 20 20q�6>   7 J� OpacityMask7 5L  *   !� 5M  .   8 !� Visual8 6:   �� $! BorderG1��.+�5O  *   �� -   5        $ BorderG1��5O  1   $ 5��6C   
�������6T   5P  '   � 5Q  &   $��50 20 50 150q�6+   7 5R  *   !� 5S  .   8 6:   �� $! BorderG2��.+�5U  *   �� -   5        $ BorderG2��5U  1   $ 15��6C   ���	#FF692E89$��
0,0,0,-106q�6l   2  ,De.TorstenMandelkow.MetroChart.DoughnutChart  5W  *   .  (De.TorstenMandelkow.MetroChart.ChartBase9   
ChartTitle$9 Tỉ lệ nhập - xuất��6C   :   ChartSubTitle$': !Tỉ lệ hàng nhập và xuất��6b   $��	0,0,0,-54q�6�   ;   Series; 5Y  2   0  *De.TorstenMandelkow.MetroChart.ChartSeries  <   DisplayMember$< Title��5Z  )   =   SeriesTitle$= InputOutput��5[  5   >   ValueMember$> Count��5]  )   $��Center=�6=   ��5\  5   �� ? �� Path$? InputOutput�5]  =   5_  +   5`  '   5a  #   � 5c  "   $��1��6'   $��2��65   $��Right=�6I   $	��712��6e   $	��500��6q   .+�5d  &   � 
�������$��20 50 20 20q�6>   7 5e  *   !� 5f  .   8 6:   �� $! BorderG1��.+�5h  *   �� -   5        $ BorderG4��5h  1   $ 5��6C   
�������6T   5j  '   � 5k  &   $��50 20 50 150q�6+   7 5l  *   !� 5m  .   8 6:   �� $! BorderG2��.+�5o  *   �� -   5        $ BorderG5��5o  1   $ 15��6C   ���	#FF5474C9$��
0,0,0,-106q�6l   9  3De.TorstenMandelkow.MetroChart.ClusteredColumnChart  5q  *   $9 	Doanh thu��6J   $#: Doanh thu từng sản phẩm��6a   $��	0,0,0,-54q�6�   ; 5s  2     $< Title��5t  )   $= CakeListRevenue��5u  6   $> Revenue��5w  )   $��Center=�6?   ��5v  )   �� $? CakeListRevenue�5w  ?   5y  +   5z  '   5{  #   � 5~  "   $��0��6'   $��2��67   $��2��6E   $��Center=�6Y   $	��700��6v   $	��500��6�   $��0,0,0,0q�6�   .+�5  &   � 
�������$��20 50 20 20q�6>   7 5�  *   !� 5�  .   8 6:   �� $! BorderG1��.+�5�  *   �� -   5        $ BorderG6��5�  1   $ 5��6C   
�������6T   5�  '   � 5�  &   $��50 20 50 150q�6+   7 5�  *   !� 5�  .   8 6:   �� $! BorderG2��.+�5�  *   �� -   5        $ BorderG7��5�  1   $ 15��6C   ���	#FF692E89$��
0,0,0,-106q�6l     5�  *   $9 	Doanh thu��6J   $<: 6Doanh thu cửa hàng trong vòng 7 ngày gần nhất��6a   $��	0,0,0,-57q�6�   ; 5�  2     $< Title��5�  )   $= RevenueStore��5�  7   $> Revenue��5�  )   $��Center=�6?   ��5�  )   �� $? RevenueStore�5�  ?   5�  +   5�  '   5�  #   5�     5�     5�     5�     5�     5�     5�     5�     