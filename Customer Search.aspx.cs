using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Banking_System
{
    public partial class Customer_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void CustomerSearchSubmitButton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("data source =.; database = Banking_System; integrated security=SSPI");
            try
            {
                SqlCommand cmd = new SqlCommand("Execute sp_Find_customer '" + TRN_TextBox.Text + "'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();

                if(rdr.HasRows)

                {
                    while (rdr.Read())
                    {
                        Response.Write("<script>alert('Saved');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Customer Not Found');</script>");
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