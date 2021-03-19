using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Banking_System
{
    public partial class ClientFormJAT : System.Web.UI.Page
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
                   ("Execute sp_insert_customer  '" + TRN_TextBox.Text + "','" + BranchID_TextBox.Text + "' ,'" + FirstName_TextBox.Text + "'," +
                   "'" + LastNameTextBox.Text + "','" + Address_TextBox.Text + "' ,'" + DOB_TextBox.Text + "',    " +
                   "'" + Email_TextBox.Text + "' ,'" + DropDownList1.SelectedValue + "','" + ID_TextBox.Text + "' ," +
                   "'" + Contact_TextBox.Text + "' ,'" + Referee_TextBox.Text + "' ", con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();

                    ClientFormSubmitResult.Text = "Data saved sucessfully";
                }

                catch
                {


                }
                finally
                {
                    con.Close();

                }

            }else
                {
                ClientFormSubmitResult.Text = "Data not saved sucessfully";
            }
        }    
       
        
    }
}