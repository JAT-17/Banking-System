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
    public partial class ApprovedCreditCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //This will ensure that if the someone knows the man of the page they can't type the url in the search bar inorder to get to the page if they are not logged in
            if (Session["Username"] == null)
            {

                Response.Redirect("Login.aspx");

            }
        }

        protected void ApprovedCreditCardSubmitButton_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Banking_SystemConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from  vw_CreditCard_PreApproval", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView2.DataSource = rdr;
                GridView2.DataBind();

                if (rdr.HasRows)

                {
                    SearchResult.Text = "Search Completed";
                }
                else
                {

                    SearchResult.Text = "ERROR 12271";
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