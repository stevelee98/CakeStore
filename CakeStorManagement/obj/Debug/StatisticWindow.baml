   M S B A M L   `   `   `  ����M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  5   	   ` \De.TorstenMandelkow.MetroChart, Version=0.9.5818.20693, Culture=neutral, PublicKeyToken=nullwTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChartDe.TorstenMandelkow.MetroChart 5   	   S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  5   	   (    "CakeStorManagement.StatisticWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:CakeStorManagement     5   	   k
MetroChartTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChart     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   
   7uc.clr-namespace:CakeStorManagement.MyUserControl  5   	   -   5        $��statisticwindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Thống kê��5   	   $	��750��6   $
��1300��6'     StatisticVM � DataContext# [ 5   	    � 	Resources 5        ScrollThumbs �� 
TargetType	 �� Property
 �� Value �� 
TargetType �Name ��Name �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName ]�Name ]� Thumb n�Name ]� IncreaseRepeatButton ��Name J� Opacity ]� DecreaseRepeatButton P� 
SourceName  ButtonSelectBrush  	DarkBrush �� Angle�� 5   
   %�  &	       '�� D    �� 5      " n�6)   .�5      �� 	 � ��
 5       �� 5!      " n�6*   .R�5"      � $
 Grid��6#   .+�5#   "   �� $��Stretch=�6,   $��Stretch=�6J   $
��Auto��6f   $
��Auto��6s   
������ 6�   �� 5$   "   $ 
Rectangle1��6)   $ 10��6=   $��Stretch=�6O   $��Stretch=�6m   $
��Auto��6�   $
��Auto��6�   #��z��6�   5%       5&      P� 5'   "    �@�Tag$ 
Horizontal��69   . �5(   &   �� $ 
Rectangle1��6-   	 � ��$

 Auto��6V   �� 5)   &   $ 
Rectangle1��6-   	 � ��$
 7��6W   5*   #   5,      5.      5/      �� 52      " ��6/   .�53      �� 	 �@��IsFlicksEnabled
 .  6;   �� 54      	 � ��

 �����6/   �� 55      	 � ��

 �����6/   �� 56      	 � ��$
 10��6*   �� 57      	 � ��
 58      �� 59      " ��6*   .R�5:      � $ GridRoot��6#   $��19��65   ��6@   Z� .+�5;   "   ]� $ 
PART_Track��6(   $��0��6<   ��. |�.   5<   &   n� 5=   *   $ Thumb��60   #��z��6?   #���  6i    5?   &   �� 5@   *   $ PageUp��67   $��ScrollBar.PageDownCommand��6G   $ 0Q�6k   |�.  6w    5B   &   �� 5C   *   $ PageDown��67   $��ScrollBar.PageUpCommand��6I   $ 0Q�6k   |�.  6w   5E   #   5F       5H      P� 5I   "   $ Thumb��6*    �@J�IsMouseOver . . �5J   &   �� #
 �  6-   $ Thumb��6Y   	 � ��6l   5K   #   P� 5L   "   $ Thumb��6*    �@n�
IsDragging . . �5M   &   �� #
 �  6-   $ Thumb��6Q   	 � ��6d   5N   #   P� 5P   "    � {� .  . �5Q   &   �� $ Thumb��6-   	 � y�$
 	Collapsed=�6V   5R   #   P� 5S   "    �@��Orientation$ 
Horizontal=�6A   . �5T   &   �� $ GridRoot��6-   	 �@�LayoutTransform
 5U   *   �� 5V   .   $	 -90Q�6>   5X   '   �� 5Y   &   $ 
PART_Track��6-   	 �@�LayoutTransform
 5Z   *   �� 5[   .   $	 -90Q�6>   5]   '   �� 5^   &   	 � ��$

 Auto��6>   �� 5_   &   	 � ��$
 12��6?   �� 5`   &   $ Thumb��6-   	 �@�Tag$
 
Horizontal��6O   �� 5a   &   $ PageDown��6-   	 � ��$
 ScrollBar.PageLeftCommand��6V   �� 5b   &   $ PageUp��6-   	 � ��$ 
 ScrollBar.PageRightCommand��6T   5c   #   5e      5g      5h      5i      .��5m      �  � RowDefinitions 5n   
   �� 5o      $
��auto �6   6,   �� 5p      6   .+�5r   
   � $��0��6   .+�5s      3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ statisticwindow��6U   5t      � 5u   
   $��1��6   .+�5v      � ���	#FFCFCFCF.+�5w      �� .��5x      �  5y      �� 5z      $��40 �6,   �� 5{      $	��200 �6,   �� 5|      $��* �6,   .+�5~      � $��0��6   .+�5      � $��Center=�6(   $��Center=�6E   .+�5�   "   �� $��Thống kê từ ngày: ��6,   $��20(�6F   
�������$	��200��6f   6t   �� 5�   "   $��20(�6G   
���������6,   �� *	DateStart+6i   �� 5�   "   $��         =>��6,   $��20(�6?   
�������$	��130��6_   6m   �� 5�   "   $��20(�6E   
���������6,   �� *	DateEnd+6g   5�      5�      � 5�      $��1��6    � ColumnDefinitions 5�      �� 5�   "   $��1* �63   �� 5�   "   $��1* �63   �� 5�   "   $��1* �63   .+�5�      � $��0��6#   .+�5�   "   �� $	��120��6,   $��20q�69   
�������  �� RadiusY$  10��6R   ! �� RadiusX$! 10��6_   " J� Effect" 5�   &   3  -System.Windows.Media.Effects.DropShadowEffect  5�   *   #   
BlurRadius$# 20Q�6;   $   Color$$ 	#FFDEDEDE��6K   %   RenderingBias$% Quality=�6]   &   ShadowDepth$& 1Q�6u   5�   #   � 5�   "   $��25q�6'   $	��120��63   .+�5�   &   � $��35��6+   $��50��66   ���	#FFFFAF24$
��Left=�6Y   $	��Top=�6t   $
��20 0q�6�   " 5�   *     5�   .   $# 20Q�6?   $$ 	#FFECECEC��6O   $% Quality=�6a   $& 1Q�6y   .+�5�   *   '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]'   Kind$' Cookie=�6B   $��Center=�6P   $��Bottom=�6m   $��5q�6�   
�������$��30��6�   $��30��6�   5�   '   �� 5�   &   $��Bánh bán chạy��60   $��Right=�6E   $��Champagne & Limousines)�6a   $��5q�6�   $	��Top=�6�   
�������$��15(�6�   �� 5�   &   ( �� Orientation$( 
Horizontal=�61   $��Right=�6J   $	��Top=�6f   $��10 30q�6~   .+�5�   *   �� $��Champagne & Limousines)�6S   $��Center=�6{   
�������$��50(�6�   ��65   �� *CountCakeMax+6�   5�   '   �� 5�   &   $( 
Horizontal=�61   $��Bottom=�6J   $��10 15 q�6e   ) � Cursor$
) Hand��6u   .+�5�   *   �� $��30(�6Y   ���	#FF8522BD��64   �� *CountMaxDisplayName+6g   5�   '   �� 5�   &   $��Right=�61   $( 
Horizontal=�6M   $��Bottom=�6f   $��10 15 q�6�   $
) Hand��6�   .+�5�   *   �� $��bánh��64   $��10(�6@   
�������6N   5�   '   5�   #   5�      � 5�      $��1��6#   .+�5�   "   �� $	��120��6,   $��20q�69   
�������$  10��6R   $! 10��6_   " 5�   &     5�   *   $# 20Q�6;   $$ 	#FFDEDEDE��6K   $% Quality=�6]   $& 1Q�6u   5�   #   � 5�   "   $��25q�6'   $	��120��63   .+�5�   &   � $��35��6+   $��50��66   ���	#FF41A43C$
��Left=�6Y   $	��Top=�6t   $
��20 0q�6�   " 5�   *     5�   .   $# 20Q�6?   $$ 	#FFECECEC��6O   $% Quality=�6a   $& 1Q�6y   .+�5�   *     $' CurrencyUsd=�6B   $��Center=�6U   $��Bottom=�6r   $��5q�6�   
�������$��20��6�   $��20��6�   5�   '   �� 5�   &   $��	Doanh thu��60   $��15(�6A   $��Right=�6O   $��Champagne & Limousines)�6k   $��5q�6�   $	��Top=�6�   
�������6�   �� 5�   &   $( 
Horizontal=�61   $��Right=�6J   $	��Top=�6f   $��10 30q�6~   .+�5�   *   �� $��Champagne & Limousines)�6i   $��Center=�6�   
�������$��40(�6�   ��64   �� *TotalRevenue+* �� StringFormat$* {0:C0}��6�   5�   '   �� 5�   &   $( 
Horizontal=�61   $��Bottom=�6J   $��Right=�6e   $��10 15q�6�   .+�5�   *   �� $
��VNĐ��64   $��20(�6?   
�������6M   5�   '   5�   #   5�      � 5�      $��2��6#   .+�5�   "   �� $	��120��6,   $��20q�69   
�������$  10��6R   $! 10��6_   " 5�   &     5�   *   $# 20Q�6;   $$ 	#FFDEDEDE��6K   $% Quality=�6]   $& 1Q�6u   5�   #   � 5�   "   $��25q�6'   $	��120��63   .+�5�   &   � $��35��6+   $��50��66   ���	#FFCF1F1F$
��Left=�6Y   $	��Top=�6t   $
��20 0q�6�   " 5�   *     5�   .   $# 20Q�6?   $$ 	#FFECECEC��6O   $% Quality=�6a   $& 1Q�6y   .+�5�   *     $' InformationOutline=�6B   $��Center=�6\   $��Bottom=�6y   $��5q�6�   
�������$��20��6�   $��20��6�   5�   '   �� 5�   &   $��Bánh bán ế��60   $��15(�6B   $��Right=�6P   $��Champagne & Limousines)�6l   $��5q�6�   $	��Top=�6�   
�������6�   �� 5�   &   $( 
Horizontal=�61   $��Right=�6J   $	��Top=�6f   $��10 30q�6~   .+�5�   *   �� $��Champagne & Limousines)�6R   $��Center=�6z   
�������$��40(�6�   ��64   �� *CountCakeMin+6�   5�   '   �� 5�   &   $( 
Horizontal=�61   $��Bottom=�6J   $��10 15q�6e   .+�5�   *   �� $��30(�6Y   ���	#FF8522BD��64   �� *CountMinDisplayName+6g   5�   '   5�   #   5�      5�      � 5�      $��2��6    5�      �� 5�   "   $	��650 �60   6?   �� 5�   "   $	��500 �60   6?    5�      �� 5�   "   $��1* �63   �� 5�   "   $��1* �63   .+�5�      � $��0��6#   $��0��63   $��2��6@   .+�5�   "   � 
�������$��20 50 20 20q�6:   + J� OpacityMask+ 5�   &   !� 5�   *   , !� Visual, 66   �� $ BorderG1��.+�5�   &   �� -   5        $ BorderG6��5�   -   $ 5��6?   
�������6P   5�   #   � 5�   "   $��50 20 50 150q�6'   + 5�   &   !� 5�   *   , 66   �� $ BorderG2��.+�5�   &   �� -   5        $ BorderG7��5�   ;   $	 100Q�6-   $ 15��6M   $��
0,0,0,-112q�6_   
�������6s   9  3De.TorstenMandelkow.MetroChart.ClusteredColumnChart  5�   &   .  (De.TorstenMandelkow.MetroChart.ChartBase-   
ChartTitle$- 	Doanh thu��6F   .   ChartSubTitle$-. 'Doanh thu cửa hàng theo từng ngày��6]   $��	0,0,0,-33q�6�   /   Series/ 5�   .   0  *De.TorstenMandelkow.MetroChart.ChartSeries  0   DisplayMember$0 Title��5�   )   1   SeriesTitle$1 RevenueStoreaa��5�   7   2   ValueMember$2 Revenue��5�   )   $��Center=�6?   ��5�   )   �� 3 �� Path$3 RevenueStore�5�   ?   5�   '   5�   #   5�      � 5�      $��1��6#   $��1��60   .+�5�   "   � 
�������$��20 50 20 20q�6:   + 5�   &   !� 5   *   , 66   �� $ BorderG1��.+�5  &   �� -   5        $ BorderG3��5  -   $ 5��6?   
�������6P   5  #   � 5  "   $��50 20 50 150q�6'   + 5  &   !� 5  *   , 66   �� $ BorderG5��.+�5	  &   �� -   5        $ BorderG5��5	  -   $ 15��6?   ���	#FFFF0097$��
0,0,0,-106q�6h     5  &   $- 	Doanh thu��6F   $#. Doanh thu từng sản phẩm��6]   $��	0,0,0,-54q�6�   / 5  .     $0 Title��5  )   $1 CakeListRevenue��5  6   $2 Revenue��5  )   $��Center=�6?   ��5  )   �� $3 CakeListRevenue�5  ?   5  '   5  #   5     � 5     $��1��6#   $��0��60   .+�5  "   � 
�������$��20 50 20 20q�6:   + 5  &   !� 5  *   , 66   �� $ BorderG1��.+�5  &   �� -   5        $ BorderG1��5  -   $ 5��6?   
�������6P   5  #   � 5  "   $��50 20 50 150q�6'   + 5   &   !� 5!  *   , 66   �� $ BorderG2��.+�5#  &   �� -   5        $ BorderG2��5#  -   $ 15��6?   ���	#FF692E89$��
0,0,0,-106q�6h   2	  ,De.TorstenMandelkow.MetroChart.DoughnutChart	  5%  &   $- Tỉ lệ nhập - xuất��6?   $'. !Tỉ lệ hàng nhập và xuất��6^   $��	0,0,0,-53q�6�   / 5'  .     $0 Title��5(  )   $1 InputOutput��5)  5   $2 Count��5+  )   $��Center=�6=   ��5*  5   �� $3 InputOutput�5+  =   5-  '   5.  #   5/     51     54     55     56     57     58     59     