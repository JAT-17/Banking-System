using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.Azure.NotificationHubs;

namespace Banking_System
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Button_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) /* This is for server side validation if the client side validation is disabled*/
            {

                string CS = ConfigurationManager.ConnectionStrings["Banking_SystemConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(CS);
                try
                {
                    SqlCommand cmd = new SqlCommand
                   ("Execute sp_User_Registration  '" + User_Name_TextBox.Text + "','" + Registration_TRN_TextBox.Text + "' ,'" + Registration_Password.Text + "'," +
                   "'" + Registration_Pin.Text + "'", con);
                    con.Open();
                    int TRN_Found = cmd.ExecuteNonQuery();

                    


                    if (TRN_Found > 0)
                    {

                        User_Name_TextBox.Text = "";
                        Registration_TRN_TextBox.Text = "";
                        RegistrationResult.Text = "Sucessfully Registered";
                        Response.Redirect("~/Login.aspx");

                    }
                    else
                    {
                        RegistrationResult.Text = "Registration Unsucessfull! ERROR 1392";
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