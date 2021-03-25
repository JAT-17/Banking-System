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
    public partial class Money_Transfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {

                Response.Redirect("Login.aspx");

            }
        }

        protected void MoneyTransferSubmitButton_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Banking_SystemConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_fundsToAndFromAccount", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@reciever", Receiver_AccountNumber_TextBox.Text);
                cmd.Parameters.AddWithValue("@sender", Sender_AccountNumber_TextBox.Text);
                cmd.Parameters.AddWithValue("@Amt", PaymentAmount_TextBox.Text);
                cmd.Parameters.AddWithValue("@PIN", PIN_TextBox.Text);

                con.Open();

                int TransferSuccess = cmd.ExecuteNonQuery();
                //
                // TransferSuccess should be two if it is successful but two recordds will be affeted if the transfer when through
                if (TransferSuccess == 2)
                {
                    Receiver_AccountNumber_TextBox.Text = "";
                    Sender_AccountNumber_TextBox.Text = "";
                    PaymentAmount_TextBox.Text = "";
                    PIN_TextBox.Text = "";
                    MoneyTransferSubmitResult.Text =  " Transfer sucessfully";
                   
                }
                else
                {
                    MoneyTransferSubmitResult.Text = " Invail Input! Unsucessfully";
                }
            }
        }
    }
}