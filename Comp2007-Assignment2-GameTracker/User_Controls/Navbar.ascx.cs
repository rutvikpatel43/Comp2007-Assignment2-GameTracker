using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
/**
 * @author: Rutvik(#200305366),Himanshu(#200306422)
 * @date: Jun 15, 2016
 * @version: 0.0.1 - added the SetActivePage method
 */

namespace Comp2007_Assignment2_GameTracker
{
    public partial class Navbar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // call the function to set active page
            SetActivePage();
            if(!IsPostBack)
            {
                // check if a user is logged in
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {

                    // show the user area
                    PublicLinks.Visible = false;
                    UserLinks.Visible = true;
                    // show admin option if login as admin
                    if (HttpContext.Current.User.Identity.GetUserName() == "Admin")
                    {
                        Logout1.Visible = false;
                        Admin.Visible = true;
                        UserLinks.Visible = true;
                    }
                    else if (HttpContext.Current.User.Identity.GetUserName() != "Admin")
                    {
                        UserLinks.Visible = true;
                        Admin.Visible = false;
                    }
                }
                else
                {
                    // only show login and register
                    UserLinks.Visible = false;
                    Admin.Visible = false;
                    PublicLinks.Visible = true;
                    //afterward change to admin
                  
                }
            }
        }

        /**
         * This method adds a css class of "active" to list items related
         * to navigation links of each page 
         * 
         * @method SetActivePage
         * @return {void}
         */
        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Home Page":
                    Home.Attributes.Add("class", "link-active");
                    break;
                case "Contact":
                    contact.Attributes.Add("class", "link-active");
                    break;
                case "Dashboard":
                    GameDetails.Attributes.Add("class", "link-active");
                    break;
                case "Week Details":
                    Details.Attributes.Add("class", "link-active");
                    break;
                case "Login":
                    Login.Attributes.Add("class", "link-active");
                    break;
                case "Register":
                    Register.Attributes.Add("class", "link-active");
                    break;
                case "Users":
                    Users.Attributes.Add("class", "link-active");
                    break;
                case "UserDetails":
                    UserDetails.Attributes.Add("class", "link-active");
                    break;
            }
        }
    }
}