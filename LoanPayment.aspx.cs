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
	public partial class LoanPayment1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void ClientFormContainerSubmitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) /* This is for server side validation if the client side validation is disabled*/
            {

                string CS = ConfigurationManager.ConnectionStrings["Banking_SystemConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(CS);
                try
                {
                    SqlCommand cmd = new SqlCommand
                   ("Execute sp_LoanPayment  '"+ AccountNumber_TextBox.Text + "','"+ PaymentAmount_TextBox.Text + "'", con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();      
                    Output_Message.Text = "Payment sucessful";
                }

                catch
                {


                }
                finally
                {
                    con.Close();

                }

            }
            else
            {
                Output_Message.Text = "Payment was not Successful Try again";
            }
        }
    }
}