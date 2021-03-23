using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
using Tulpep.NotificationWindow;

namespace Banking_System
{
    public partial class Customer_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {

                Response.Redirect("Login.aspx");

            }

        }

        protected void CustomerSearchSubmitButton_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Banking_SystemConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            try
            {
                SqlCommand cmd = new SqlCommand("Execute sp_Find_customer '" + TRN_TextBox.Text + "'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();

                if(rdr.HasRows)

                {                    
                        SearchResult.Text="RECORD FOUND";
                }
                else
                {
                    
                    SearchResult.Text = "RECORD NOT FOUND";
                    //TRN_TextBox.Text = ""; /*this will clear the TRN field after the query runs*/
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