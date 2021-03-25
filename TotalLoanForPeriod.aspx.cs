using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;



namespace Banking_System
{
    public partial class TotalLoanForPeriod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {

                Response.Redirect("Login.aspx");

            }

        }

        protected void ClientFormContainerSubmitButton_Click(object sender, EventArgs e)
        {

            string CS = ConfigurationManager.ConnectionStrings["Banking_SystemConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            try
            {
                SqlCommand cmd = new SqlCommand("Execute sp_TotalLoanForPeriod '" + From_TextBox.Text + "', '" + To_TextBox.Text + "'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView3.DataSource = rdr;
                GridView3.DataBind();

                if (rdr.HasRows)

                {
                    Output_Message.Text = "Search Complete";
                }
                else
                {

                    Output_Message.Text = "No Record Found";
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