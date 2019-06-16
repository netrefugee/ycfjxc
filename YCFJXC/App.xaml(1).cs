using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace YCFJXC
{
    /// <summary>
    /// App.xaml 的交互逻辑
    /// </summary>
    public partial class App : Application
    {
 protected override void OnStartup(StartupEventArgs e)
    {
        Application.Current.ShutdownMode = System.Windows.ShutdownMode.OnExplicitShutdown;
            login window = new login();
        bool? dialogResult = window.ShowDialog();
        if ((dialogResult.HasValue == true) &&
            (dialogResult.Value == true))
        {
            base.OnStartup(e);
            Application.Current.ShutdownMode = ShutdownMode.OnMainWindowClose;
        }
        else
        {
            this.Shutdown();
        }
    }
    }
   
}
