using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
using Tulpep.NotificationWindow;
using System.Data;

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
                //GridView1.DataSource = rdr;
                //GridView1.DataBind();
                while (rdr.Read())
                {
                    Brach_ID_TextBox_Search.Text = rdr.GetValue(0).ToString();
                    FirstName_TextBox_Search.Text = rdr.GetValue(1).ToString();
                    LastName_TextBox_Search.Text = rdr.GetValue(2).ToString();
                    DOB_TextBox_Search.Text = rdr.GetValue(3).ToString();
                    Address_TextBox_Search.Text = rdr.GetValue(4).ToString();
                    Contact_Number_TextBox_Search.Text = rdr.GetValue(5).ToString();
                    Email_TextBox_Search.Text = rdr.GetValue(6).ToString();
                    ID_Type_TextBox_Search.Text = rdr.GetValue(7).ToString();
                    ID_Type_Number_TextBox_Search.Text = rdr.GetValue(8).ToString();
                    Referee_TextBox_Search.Text = rdr.GetValue(9).ToString();
                }
                if (rdr.HasRows)

                {
                    SearchResult.Text = "RECORD FOUND";
                }
                else
                {

                    SearchResult.Text = "RECORD NOT FOUND";
                    //TRN_TextBox.Text = ""; /*this will clear the TRN field after the query runs*/
                    Brach_ID_TextBox_Search.Text = "";
                    FirstName_TextBox_Search.Text = "";
                    LastName_TextBox_Search.Text = "";
                    DOB_TextBox_Search.Text = "";
                    Address_TextBox_Search.Text = "";
                    Contact_Number_TextBox_Search.Text = "";
                    Email_TextBox_Search.Text = "";
                    ID_Type_TextBox_Search.Text = "";
                    ID_Type_Number_TextBox_Search.Text = "";
                    Referee_TextBox_Search.Text = "";
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
            protected void GetAccountInfo_Click(object sender, EventArgs e)
            {
                string CS = ConfigurationManager.ConnectionStrings["Banking_SystemConnectionString"].ConnectionString;

                    using (SqlConnection con = new SqlConnection(CS))
                    {

                        SqlDataAdapter da = new SqlDataAdapter("Execute sp_Find_customer_Accounts '" + TRN_TextBox.Text + "'", con);

                        DataSet ds = new DataSet();
                         da.Fill(ds);

                        ds.Tables[0].TableName = "Loan";
                        ds.Tables[1].TableName = "Saving";
                        ds.Tables[2].TableName = "Chequing";

                        Loans_GridView.DataSource = ds.Tables["Loan"];
                         Loans_GridView.DataBind();
                        Saving_Account_GridView.DataSource = ds.Tables["Saving"];
                         Saving_Account_GridView.DataBind();
                        Chequing_AccountGridView.DataSource = ds.Tables["Chequing"];
                         Chequing_AccountGridView.DataBind();


            }

            }
    }  
}