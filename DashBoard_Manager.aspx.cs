using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banking_System
{
    public partial class DashBoard_Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {

                Response.Redirect("Login.aspx");

            }



        }


        protected void BECUST_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientFormJAT.aspx");
        }

        protected void CustomerSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Search.aspx");
        }

        protected void LoanPayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoanPayment.aspx");
        }
    }
}