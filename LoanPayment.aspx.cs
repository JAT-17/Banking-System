using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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

                SqlConnection con = new SqlConnection("data source =.; database = Banking_System; integrated security=SSPI");
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