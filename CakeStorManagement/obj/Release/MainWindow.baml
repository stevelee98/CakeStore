   M S B A M L   `   `   `  ���� M  ICakeStorManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CakeStorManagementCakeStorManagement  ` \De.TorstenMandelkow.MetroChart, Version=0.9.5818.20693, Culture=neutral, PublicKeyToken=nullwTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChartDe.TorstenMandelkow.MetroChart S.clr-namespace:CakeStorManagement.MyUserControl CakeStorManagement.MyUserControl  #    CakeStorManagement.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:CakeStorManagement     k
MetroChartTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChart     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  7uc.clr-namespace:CakeStorManagement.MyUserControl  -   $��
mainwindow��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � Title$ Phần mềm quản lý��$	��750��$
��1300�� 
 MainVM � DataContext# [  � 	Resources   ScrollThumbs �� 
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
 ScrollBar.PageRightCommand��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadedWindowCommand+    CommandParameter  �� ! �� ElementName$! 
mainwindow��.��� " � RowDefinitions" �� $
��auto ��� .+�� $��0��.+�3   -CakeStorManagement.MyUserControl.ControlBarUC  
# � Tag# �� *Title+$! 
mainwindow��� $��1��.+�� $ � ColumnDefinitions$ �� $	��200 ��� .+�� $��0������ % �� EndPoint$% 0.5,1&�& �� 
StartPoint$& 0.5,0&�.��� ' � Color$' 	LightGray��( � Offset$( 1Q�� $' 	#FFE6E6E6��" �� $	��100 ��� $��* �) J� Effect) 3  -System.Windows.Media.Effects.DropShadowEffect  *   
BlurRadius$* 20Q�+   Color$+ 	#FFDEDEDE��,   RenderingBias$, Quality=�-   ShadowDepth$- 1Q�.+�� ���	#FFA46FE4.+��� $��	Xin chào��$��Center=�$��Center=�$��WS Simple Gallifreyan)�
�������$��15(�$��63,10,61,66q��� $��Center=�$��Center=�$��WS Simple Gallifreyan)����	#FFF3F3F7$��23(�$��25,44,25,29q����� *
UserName+�� $��1��.+��� $��10q����	#FF8522BD���	#FF8522BD���� *ViewStatisticCommand+.��� $	��150��.+�'  !MaterialDesignThemes.Wpf.PackIcon  �	  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]. 	  Kind$. ViewDashboard=�$��Center=��� $��Center=�$��Thống kê��$��Champagne & Limousines)��� $��10q����	#FF8522BD���	#FF8522BD���� *OutputCommand+.��� $	��150��.+�  $. Upload=�$��Center=��� $��Center=�$��Xuất hàng��$��Champagne & Limousines)��� $��10q����	#FF8522BD���	#FF8522BD���� *InputCommand+.��� $	��150��.+�  $. Download=�$��Center=��� $��Center=�$��Nhập hàng��$��Champagne & Limousines)��� $��10q����	#FF8522BD���	#FF8522BD���� *HistoryCommand+.��� $	��150��.+�  $. History=�$��Center=��� $��Center=�$��Lịch sử nhập xuất��$��Champagne & Limousines)��� $��10q����	#FF8522BD���	#FF8522BD���� *CakeCommand+.��� $	��150��.+�  $
. Food=�$��Center=��� $��Center=�$��Sản phẩm��$��Champagne & Limousines)��� $��10q����	#FF8522BD���	#FF8522BD���� *CustomerCommand+.��� $	��150��.+�  $. HumanGreeting=�$��Center=��� $��Center=�$��Khách hàng��$��Champagne & Limousines)��� $��10q����	#FF8522BD���	#FF8522BD���� *SuplierCommand+.��� $	��150��.+�  $. TruckDelivery=�$��Center=��� $��Center=�$��Nhà cung cấp��$��Champagne & Limousines)��� $��10q����	#FF8522BD���	#FF8522BD���� *UserCommand+.��� $	��150��.+�  $. Account=�$��Center=��� $��Center=�$
��User��$��Champagne & Limousines)��� $��10q����	#FF8522BD���	#FF8522BD���� *LogoutCommand+���� $! statisticwindow��.��� $	��150��.+�  $. Logout=�$��Center=��� $��Center=�$��Đăng xuất��$��Champagne & Limousines)�� $��1�����	#FFCFCFCF.+��� .��� " �� $	��200 ��� $��* �.+�� $��0��$ �� $��1* ��� $��1* ��� $��1* �.+�� $��0��.+��� $	��120��$��20q�
�������/ �� RadiusY$/ 10��0 �� RadiusX$0 10��)   $* 20Q�$+ 	#FFDEDEDE��$, Quality=�$- 1Q�� $��25q�$	��120��.+�� $��35��$��50�����	#FFFFAF24$
��Left=�$	��Top=�$
��20 0q�)   $* 20Q�$+ 	#FFECECEC��$, Quality=�$- 1Q�.+�  $. Cookie=�$��Center=�$��Bottom=�$��5q�
�������$��30��$��30���� $��Bánh bán chạy��$��Right=�$��Champagne & Limousines)�$��5q�$	��Top=�
�������$��15(��� 1 �� Orientation$1 
Horizontal=�$��Right=�$	��Top=�$��10 30q�.+��� $��Champagne & Limousines)�$��Center=�
�������$��50(����� *CountCakeMax+�� $1 
Horizontal=�$��Bottom=�$��10 15 q�2 � Cursor$
2 Hand��.+��� $��30(����	#FF8522BD���� *CountMaxDisplayName+�� $��Right=�$1 
Horizontal=�$��Bottom=�$��10 15 q�$
2 Hand��.+��� $��bánh��$��10(�
�������� $��1��.+��� $	��120��$��20q�
�������$/ 10��$0 10��)   $* 20Q�$+ 	#FFDEDEDE��$, Quality=�$- 1Q�� $��25q�$	��120��.+�� $��35��$��50�����	#FF41A43C$
��Left=�$	��Top=�$
��20 0q�)   $* 20Q�$+ 	#FFECECEC��$, Quality=�$- 1Q�.+�  $. CurrencyUsd=�$��Center=�$��Bottom=�$��5q�
�������$��20��$��20���� $��Doanh thu tháng��$��15(�$��Right=�$��Champagne & Limousines)�$��5q�$	��Top=�
��������� $1 
Horizontal=�$��Right=�$	��Top=�$��10 30q�.+��� $��Champagne & Limousines)�$��Center=�
�������$��40(����� *RevenueInMonth+3 �� StringFormat$3 {0:C0}���� $1 
Horizontal=�$��Bottom=�$��Right=�$��10 15q�.+��� $
��VNĐ��$��20(�
�������� $��2��.+��� $	��120��$��20q�
�������$/ 10��$0 10��)   $* 20Q�$+ 	#FFDEDEDE��$, Quality=�$- 1Q�� $��25q�$	��120��.+�� $��35��$��50�����	#FFCF1F1F$
��Left=�$	��Top=�$
��20 0q�)   $* 20Q�$+ 	#FFECECEC��$, Quality=�$- 1Q�.+�  $. InformationOutline=�$��Center=�$��Bottom=�$��5q�
�������$��20��$��20���� $��Bánh bán ế��$��15(�$��Right=�$��Champagne & Limousines)�$��5q�$	��Top=�
��������� $1 
Horizontal=�$��Right=�$	��Top=�$��10 30q�.+��� $��Champagne & Limousines)�$��Center=�
�������$��40(����� *CountCakeMin+�� $1 
Horizontal=�$��Bottom=�$��10 15q�.+��� $��30(����	#FF8522BD���� *CountMinDisplayName+� $��1��" �� $��1* ��� $��1* ��� $��1* �$ �� $��1* ��� $��1* �.+�#
  MaterialDesignThemes.Wpf.Card
  $��0��$��1��$��0,50,10,250q�$	��300��$��Right=�$��Center=���Z� .���� $��	 0 0 0 10q�.+��� $��Lọc thống kê��$��Center=�$��Champagne & Limousines)�$	��Top=�
�������$��20(�$��	80,0,92,0q�(  "System.Windows.Controls.DatePicker  $��Center=�$	��100��)  #MaterialDesignThemes.Wpf.HintAssist4   Hint$4 Ngày bắt đầu��$��5 5 15 5q� ( $MaterialDesignFloatingHintDatePicker#��[ 5   SelectedDate5 �� *	DateStart+  $��Center=�$	��100��$4 Ngày kết thúc��$��5 5 15 5q�#��[ 5 �� *	DateEnd+��  # MaterialDesignRaisedLightButton#��[ $	��100��$��
-10,20,0,0q�$��Center=�6 � ToolTip$6 Filter - Lọc��$��Lọc������ *StatisticCommand+� $��0��$��0��$��2��$
��Left=�$	��700��$	��500��$��10,0,0,0q�.+�� 
�������$��20 50 20 20q�7 J� OpacityMask7 !� 8 !� Visual8 �� $! BorderG1��.+��� -   $ BorderG1��$ 5��
�������� $��50 20 50 150q�7 !� 8 �� $! BorderG2��.+��� -   $ BorderG2��$ 15�����	#FF692E89$��
0,0,0,-106q�2  ,De.TorstenMandelkow.MetroChart.DoughnutChart  .  (De.TorstenMandelkow.MetroChart.ChartBase9   
ChartTitle$9 Tỉ lệ nhập - xuất��:   ChartSubTitle$': !Tỉ lệ hàng nhập và xuất��$��	0,0,0,-54q�;   Series; 0  *De.TorstenMandelkow.MetroChart.ChartSeries  <   DisplayMember$< Title��=   SeriesTitle$= InputOutput��>   ValueMember$> Count��$��Center=����� ? �� Path$? InputOutput�� $��1��$��2��$��Right=�$	��712��$	��500��.+�� 
�������$��20 50 20 20q�7 !� 8 �� $! BorderG1��.+��� -   $ BorderG4��$ 5��
�������� $��50 20 50 150q�7 !� 8 �� $! BorderG2��.+��� -   $ BorderG5��$ 15�����	#FF5474C9$��
0,0,0,-106q�9  3De.TorstenMandelkow.MetroChart.ClusteredColumnChart  $9 	Doanh thu��$#: Doanh thu từng sản phẩm��$��	0,0,0,-54q�;   $< Title��$= CakeListRevenue��$> Revenue��$��Center=����� $? CakeListRevenue�� $��0��$��2��$��2��$��Center=�$	��700��$	��500��$��0,0,0,0q�.+�� 
�������$��20 50 20 20q�7 !� 8 �� $! BorderG1��.+��� -   $ BorderG6��$ 5��
�������� $��50 20 50 150q�7 !� 8 �� $! BorderG2��.+��� -   $ BorderG7��$ 15�����	#FF692E89$��
0,0,0,-106q�  $9 	Doanh thu��$<: 6Doanh thu cửa hàng trong vòng 7 ngày gần nhất��$��	0,0,0,-57q�;   $< Title��$= RevenueStore��$> Revenue��$��Center=����� $? RevenueStore�