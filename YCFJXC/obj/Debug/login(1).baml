   M S B A M L   `   `   `  ����A  =YCFJXC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:YCFJXCYCFJXC  5   	       YCFJXC.login   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aW SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:YCFJXC     5   	   -   5          �Name$  loginWindow��5   	    � Title$ login��5   	   $��381.522��6   $��539.538��6(    � AllowsTransparency .  � WindowStyle$
 None=�6R   $��22(�6�    � WindowStartupLocation$ CenterScreen=�6�   .��5	      � ��5
   
   �� 5       � RowDefinitions 5   
   �� 5      $
��251* �6   �� 5      $
��199* �6   .+�5   
   �� -   5         ��Name$ labUser��5      $��
用户名:��6!   $
��Left=�60   $��
78,173,0,0q�6K   $	��Top=�6_   $	��146��6w   �� 5   
   -   5        $ labPwd��5      $��
密   码:��6    $
��Left=�61   $��	78,29,0,0q�6L   $	��Top=�6_   $	��146��6w   $��1��6�   �� 5   
   -   5         ��Name$ txtUser��5      $
��Left=�6#   $��31��6>   $��197,181,0,0q�6J    �� TextWrapping$
 Wrap=�6_   $	��Top=�6t   $	��236��6�   $��admin��6�   �� 5   
   -   5        $ txtPwd��5      $
��Left=�6"   $��39��6=   $��
197,29,0,0q�6I   $
 Wrap=�6]   $	��Top=�6q   $	��236��6�   $��admin��6�   $��1��6�   �� 5   
   -   5        	 ��Name$	 cmdExit��5      $��退  出��6"   $
��Left=�61   $��198,101,0,0q�6L   $��1��6a   $	��Top=�6n   $	��100��6�   $��37��6�   4  .System.Windows.Automation.AutomationProperties
   IsRowHeader
 . 6�   �� 5   
   -   5        $	 cmdOK��5      $��登  录��6    $
��Left=�6/   $��332,101,0,0q�6J   $��1��6_   $	��Top=�6l   $	��101��6�   $��37��6�   6�   �� 5   
   -   5        $ labUser_Copy��5      $��
总   门:��6&   $
��Left=�67   $��
78,114,0,0q�6R   $	��Top=�6f   $	��146��6~   �� 5   
   -	   5         ��Name$ cobDepartment��5      $
��Left=�6*   $��197,114,0,0q�6E   $	��Top=�6Z   $	��236��6r      IsRequiredForForm . .@�5      �� $��总部��6    �� 
IsSelected . 6(   �� 5      $��	庆丰店��6   �� 5      $��	红星店��6   5      �� 5   
   $$��元呈坊进销存管理系统��6   $
��Left=�6%   $��	92,37,0,0q�6@   $	��Top=�6S   $	��375��6k   $��36(�6w   $��YouYuan)�6�   $
��Bold"�6�   5      5       