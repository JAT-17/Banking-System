using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace Banking_System
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

             if (Convert.ToInt32(Session["Role"]) == 1)

              {
               
                Welcome.Text = "Welcome: " + Convert.ToString(Session["Username"]);
                DashBoard_Manager.Visible = true;
                LoanPayment.Visible = false;
                Signout.Visible = true;
                


             }

            if (Convert.ToInt32(Session["Role"]) == 2)

            {

                Welcome.Text = "Welcome: " + Convert.ToString(Session["Username"]);
                DashBoard_Manager.Visible = true;
                LoanPayment.Visible = false;
                Signout.Visible = true;
            }

            if (Convert.ToInt32(Session["Role"]) == 3)

            {

                Welcome.Text = "Welcome: " + Convert.ToString(Session["Username"]);
                DashBoard_Manager.Visible = false;
                LoanPayment.Visible = true;
                Signout.Visible = true;

            }


            if (Session["Username"] == null)
            {     //This is for anonymous user 
                DashBoard_Manager.Visible = false;
                LoanPayment.Visible = false;
                Signout.Visible = false;
               


            }
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }


        protected void DashBoard_Manager_Click(object sender, EventArgs e)
        {
            Response.Redirect("DashBoard_Manager.aspx");
        }


        protected void LoanPayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoanPayment.aspx");
        }

        protected void Disbrusted_Click(object sender, EventArgs e)
        {
            Response.Redirect("TotalLoanForPeriod.aspx");
        }

        protected void Signout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }

        //protected void Login_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Login.aspx");
        //}

    }
}