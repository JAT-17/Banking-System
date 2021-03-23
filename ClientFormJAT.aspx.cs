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
            if (Session["Username"] == null)
            {

                Response.Redirect("Login.aspx");

            }
        }

        protected void ClientFormContainerSubmitButton_Click(object sender, EventArgs e)
        {
           

                string CS = ConfigurationManager.ConnectionStrings["Banking_SystemConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_insert_customer", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@trn", TRN_TextBox.Text);
                cmd.Parameters.AddWithValue("@b_id", BranchID_TextBox.Text);
                cmd.Parameters.AddWithValue("@fname", FirstName_TextBox.Text);
                cmd.Parameters.AddWithValue("@lname", LastName_TextBox.Text);
                cmd.Parameters.AddWithValue("@add", Address_TextBox.Text);
                cmd.Parameters.AddWithValue("@dob", DOB_TextBox.Text);
                cmd.Parameters.AddWithValue("@email", Email_TextBox.Text);
                cmd.Parameters.AddWithValue("@id_t", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@id", ID_TextBox.Text);
                cmd.Parameters.AddWithValue("@pnum", Contact_TextBox.Text);
                cmd.Parameters.AddWithValue("@ref", Referee_TextBox.Text);
                cmd.Parameters.AddWithValue("@role", Type_Of_User_TextBox.Text);
                cmd.Parameters.AddWithValue("@PIN", PIN_TextBox.Text);

                con.Open();

                int Success = cmd.ExecuteNonQuery();

                if (Success == 1)
                {
                    TRN_TextBox.Text = "";
                    BranchID_TextBox.Text = "";
                    FirstName_TextBox.Text = "";
                    LastName_TextBox.Text = "";
                    Address_TextBox.Text = "";
                    DOB_TextBox.Text = "";
                    Email_TextBox.Text = "";
                    DropDownList1.Text = "";
                    ID_TextBox.Text = "";
                    Contact_TextBox.Text = "";
                    Referee_TextBox.Text = "";
                    Type_Of_User_TextBox.Text = "";
                    PIN_TextBox.Text = "";
                    ClientFormSubmitResult.Text = " Saved sucessfully";
                }
                else
                {
                    ClientFormSubmitResult.Text = "Data not saved sucessfully";
                }
            }
        }

    }
}