using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Comp2007_Assignment2_GameTracker.Models;
namespace Comp2007_Assignment2_GameTracker
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                this.GetGames();
            }
        }
        protected void GetGames()
        {
            using (DefaultConnection1 db = new DefaultConnection1())
            {
                var details = (from alldetails in db.WeekDetails
                               select alldetails);

                JumboGameDetails.DataSource = details.ToList();
                JumboGameDetails.DataBind();

            }
        }
    }
}