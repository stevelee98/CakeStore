   M S B A M L   `   `   `  ���� M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  ` \De.TorstenMandelkow.MetroChart, Version=0.9.5818.20693, Culture=neutral, PublicKeyToken=nullwTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChartDe.TorstenMandelkow.MetroChart S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  (    "CakeStorManagement.StatisticWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:CakeStorManagement     k
MetroChartTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChart     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  7uc.clr-namespace:CakeStorManagement.MyUserControl  -   $��statisticwindow��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � Title$ Thống kê��$	��750��$
��1300��  StatisticVM � DataContext# [  � 	Resources   ScrollThumbs �� 
TargetType	 �� Property
 �� Value �� 
TargetType �Name ��Name �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName ]�Name ]� Thumb n�Name ]� IncreaseRepeatButton ��Name J� Opacity ]� DecreaseRepeatButton P� 
SourceName  ButtonSelectBrush  	DarkBrush �� Angle�� %\  &	       '�� P    �� " n�.��� 	 � ��
 �� " n�.R�� $
 Grid��.+��� $��Stretch=�$��Stretch=�$
��Auto��$
��Auto��
������ �� $ 
Rectangle1��$ 10��$��Stretch=�$��Stretch=�$
��Auto��$
��Auto��#��z�� P�  �@�Tag$ 
Horizontal��. ��� $ 
Rectangle1��	 � ��$

 Auto���� $ 
Rectangle1��	 � ��$
 7���� " ��.��� 	 �@��IsFlicksEnabled
 .  �� 	 � ��

 ������� 	 � ��

 ������� 	 � ��$
 10���� 	 � ��
 �� " ��.R�� $ GridRoot��$��19����Z� .+�]� $ 
PART_Track��$��0����. |�.   n� $ Thumb��#��z��#���   �� $ PageUp��$��ScrollBar.PageDownCommand��$ 0Q�|�.   �� $ PageDown��$��ScrollBar.PageUpCommand��$ 0Q�|�.   P� $ Thumb�� �@J�IsMouseOver . . ��� #
 �  $ Thumb��	 � ��P� $ Thumb�� �@n�
IsDragging . . ��� #
 �  $ Thumb��	 � ��P�  � {� .  . ��� $ Thumb��	 � y�$
 	Collapsed=�P�  �@��Orientation$ 
Horizontal=�. ��� $ GridRoot��	 �@�LayoutTransform
 �� $	 -90Q��� $ 
PART_Track��	 �@�LayoutTransform
 �� $	 -90Q��� 	 � ��$

 Auto���� 	 � ��$
 12���� $ Thumb��	 �@�Tag$
 
Horizontal���� $ PageDown��	 � ��$
 ScrollBar.PageLeftCommand���� $ PageUp��	 � ��$ 
 ScrollBar.PageRightCommand��.���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�3   -CakeStorManagement.MyUserControl.ControlBarUC  
 � Tag �� *Title+ �� ElementName$ statisticwindow��� $��1��.+�� ���	#FFCFCFCF.+��� .���  �� $��40 ��� $	��200 ��� $��* �.+�� $��0��.+�� $��Center=�$��Center=�.+��� $��Thống kê từ ngày: ��$��20(�
�������$	��200���� $��20(�
����������� *	DateStart+�� $��         =>��$��20(�
�������$	��130���� $��20(�
����������� *	DateEnd+� $��1�� � ColumnDefinitions �� $��1* ��� $��1* ��� $��1* �.+�� $��0��.+��� $	��120��$��20q�
�������  �� RadiusY$  10��! �� RadiusX$! 10��" J� Effect" 3  -System.Windows.Media.Effects.DropShadowEffect  #   
BlurRadius$# 20Q�$   Color$$ 	#FFDEDEDE��%   RenderingBias$% Quality=�&   ShadowDepth$& 1Q�� $��25q�$	��120��.+�� $��35��$��50�����	#FFFFAF24$
��Left=�$	��Top=�$
��20 0q�"   $# 20Q�$$ 	#FFECECEC��$% Quality=�$& 1Q�.+�'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]'   Kind$' Cookie=�$��Center=�$��Bottom=�$��5q�
�������$��30��$��30���� $��Bánh bán chạy��$��Right=�$��Champagne & Limousines)�$��5q�$	��Top=�
�������$��15(��� ( �� Orientation$( 
Horizontal=�$��Right=�$	��Top=�$��10 30q�.+��� $��Champagne & Limousines)�$��Center=�
�������$��50(����� *CountCakeMax+�� $( 
Horizontal=�$��Bottom=�$��10 15 q�) � Cursor$
) Hand��.+��� $��30(����	#FF8522BD���� *CountMaxDisplayName+�� $��Right=�$( 
Horizontal=�$��Bottom=�$��10 15 q�$
) Hand��.+��� $��bánh��$��10(�
�������� $��1��.+��� $	��120��$��20q�
�������$  10��$! 10��"   $# 20Q�$$ 	#FFDEDEDE��$% Quality=�$& 1Q�� $��25q�$	��120��.+�� $��35��$��50�����	#FF41A43C$
��Left=�$	��Top=�$
��20 0q�"   $# 20Q�$$ 	#FFECECEC��$% Quality=�$& 1Q�.+�  $' CurrencyUsd=�$��Center=�$��Bottom=�$��5q�
�������$��20��$��20���� $��	Doanh thu��$��15(�$��Right=�$��Champagne & Limousines)�$��5q�$	��Top=�
��������� $( 
Horizontal=�$��Right=�$	��Top=�$��10 30q�.+��� $��Champagne & Limousines)�$��Center=�
�������$��40(����� *TotalRevenue+* �� StringFormat$* {0:C0}���� $( 
Horizontal=�$��Bottom=�$��Right=�$��10 15q�.+��� $
��VNĐ��$��20(�
�������� $��2��.+��� $	��120��$��20q�
�������$  10��$! 10��"   $# 20Q�$$ 	#FFDEDEDE��$% Quality=�$& 1Q�� $��25q�$	��120��.+�� $��35��$��50�����	#FFCF1F1F$
��Left=�$	��Top=�$
��20 0q�"   $# 20Q�$$ 	#FFECECEC��$% Quality=�$& 1Q�.+�  $' InformationOutline=�$��Center=�$��Bottom=�$��5q�
�������$��20��$��20���� $��Bánh bán ế��$��15(�$��Right=�$��Champagne & Limousines)�$��5q�$	��Top=�
��������� $( 
Horizontal=�$��Right=�$	��Top=�$��10 30q�.+��� $��Champagne & Limousines)�$��Center=�
�������$��40(����� *CountCakeMin+�� $( 
Horizontal=�$��Bottom=�$��10 15q�.+��� $��30(����	#FF8522BD���� *CountMinDisplayName+� $��2�� �� $	��650 ��� $	��500 � �� $��1* ��� $��1* �.+�� $��0��$��0��$��2��.+�� 
�������$��20 50 20 20q�+ J� OpacityMask+ !� , !� Visual, �� $ BorderG1��.+��� -   $ BorderG6��$ 5��
�������� $��50 20 50 150q�+ !� , �� $ BorderG2��.+��� -   $ BorderG7��$	 100Q�$ 15��$��
0,0,0,-112q�
�������9  3De.TorstenMandelkow.MetroChart.ClusteredColumnChart  .  (De.TorstenMandelkow.MetroChart.ChartBase-   
ChartTitle$- 	Doanh thu��.   ChartSubTitle$-. 'Doanh thu cửa hàng theo từng ngày��$��	0,0,0,-33q�/   Series/ 0  *De.TorstenMandelkow.MetroChart.ChartSeries  0   DisplayMember$0 Title��1   SeriesTitle$1 RevenueStoreaa��2   ValueMember$2 Revenue��$��Center=����� 3 �� Path$3 RevenueStore�� $��1��$��1��.+�� 
�������$��20 50 20 20q�+ !� , �� $ BorderG1��.+��� -   $ BorderG4��$ 5��
�������� $��50 20 50 150q�+ !� , �� $ BorderG2��.+��� -   $ BorderG5��$ 15�����	#FFFF0097$��
0,0,0,-106q�  $- 	Doanh thu��$#. Doanh thu từng sản phẩm��$��	0,0,0,-54q�z�V� .~��� �� 4 �� AngleX$4 -0.641Q��� T� 5 T� X$5 -2.239Q�/   $0 Title��$1 CakeListRevenue��$2 Revenue��$��Center=����� $3 CakeListRevenue�� $��1��$��0��.+�� 
�������$��20 50 20 20q�+ !� , �� $ BorderG1��.+��� -   $ BorderG1��$ 5��
�������� $��50 20 50 150q�+ !� , �� $ BorderG2��.+��� -   $ BorderG2��$ 15�����	#FF692E89$��
0,0,0,-106q�2	  ,De.TorstenMandelkow.MetroChart.DoughnutChart	  $- Tỉ lệ nhập - xuất��$'. !Tỉ lệ hàng nhập và xuất��$��	0,0,0,-53q�/   $0 Title��$1 InputOutput��$2 Count��$��Center=����� $3 InputOutput�