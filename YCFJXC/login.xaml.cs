using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using MySql.Data.MySqlClient;

namespace YCFJXC
{
    /// <summary>
    /// login.xaml 的交互逻辑
    /// </summary>
    public partial class login : Window
    {
        public login()
        {
            InitializeComponent();
        }

        private void LoginWindow_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                this.DragMove();
            }
            catch { }
        }

        private void CmdExit_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            //this.Close();
        }

        private void CmdOK_Click(object sender, RoutedEventArgs e)
        {
            if (txtUser.Text == "")
            {
                MessageBox.Show("请输入用户名", "用户登录", MessageBoxButton.OK);
                return;
            }
            if (txtPwd.Text == "")
            {
                MessageBox.Show("请输入密码", "用户登录", MessageBoxButton.OK);
                return;
            }

            String txtCmd = "select count(userName) from user WHERE UserName=@UserName AND UserPwd=@UserPwd";
            
      
            MySqlParameter[] loginParameter = new MySqlParameter[2];

            loginParameter[0] = new MySqlParameter("@UserName", MySqlDbType.VarChar, 30);
            loginParameter[0].Value = txtUser.Text.Trim();
            loginParameter[1] = new MySqlParameter("UserPwd", MySqlDbType.VarChar, 30);
            loginParameter[1].Value = txtPwd.Text.Trim();



            try
            {
                object obj = MysqlHelper.ExecuteScalar(new MySqlConnection(MysqlHelper.Conn), System.Data.CommandType.Text, txtCmd, loginParameter);

                if ( Convert.ToInt32(obj) > 0)
                {
                    DialogResult = true;
                    //this.Close();
                }
                else
                {
                    MessageBox.Show("用户名或密码错误", "用户登录", MessageBoxButton.OK);
                    return;
                }
            }
            catch {

            }

        }
    }
}
