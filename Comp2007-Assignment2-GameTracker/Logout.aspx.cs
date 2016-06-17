using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Libraries 
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Comp2007_Assignment2_GameTracker
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // store session info and authentication methods in the authenticationManager object
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            // perform sign out
            authenticationManager.SignOut();

            // Redirect to the Default page
            Response.Redirect("~/Default.aspx");
        }
    }
}