using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp2007_Assignment2_GameTracker
{
/**
 * @author: Rutvik(#200305366),Himanshu(#200306422)
 * @date: Jun 15, 2016
 * @version: 0.0.1
 */
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            // Temporarily moving to home page
            Response.Redirect("Default.aspx");
        }
    }
}