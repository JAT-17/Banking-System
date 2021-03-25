using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Banking_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Button_Click(object sender, EventArgs e)
        {
           //if (Session["Username"] != null )
           // {

           //     Response.Redirect("~/Default.aspx");
           // }
            
            
            if (Page.IsValid) /* This is for server side validation if the client side validation is disabled*/
            {

                string CS = ConfigurationManager.ConnectionStrings["Banking_SystemConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(CS);
                try
                {
                    SqlCommand cmd = new SqlCommand
                   ("Execute sp_Login  '" + Txtemail.Text + "','" + TxtPassword.Text + "'", con);
                    con.Open();
                    int RoleReturnCode = (int)cmd.ExecuteScalar();




                    if (RoleReturnCode > 0)
                    {

                        Session["Username"] = Txtemail.Text;
                        Session["Role"] = Convert.ToString(RoleReturnCode);
                        Txtemail.Text = "";
                        TxtPassword.Text = "";
                        Response.Redirect("~/Default.aspx");
                    }
                    else
                    {
                        LoginResult.Text = "Login Unsucessfull! ERROR 1392";
                    }

                }

                catch
                {

                }
                finally
                {
                    con.Close();

                }




            }
        }
    }
}