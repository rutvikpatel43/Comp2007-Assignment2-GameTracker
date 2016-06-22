using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using Comp2007_Assignment2_GameTracker.Models;
namespace Comp2007_Assignment2_GameTracker
{
    /**
 * @author: Rutvik(#200305366),Himanshu(#200306422)
 * @date: Jun 15, 2016
 * @version: 0.0.1 - added GetGames
 */
    public partial class Default : System.Web.UI.Page
    {
        DateTime thisWeekStart, thisWeekEnd, dat;
        protected void Page_Load(object sender, EventArgs e)
        {
            //checks if it is postback
            if(!IsPostBack)
            {
                dat = DateTime.Today;
                // get all theinformation from the table
                this.GetGames();
            }
           
        }
        protected void GetGames()
        {
         
            thisWeekStart = dat.AddDays(-(int)dat.DayOfWeek);
            thisWeekEnd = thisWeekStart.AddDays(7).AddSeconds(-1);
            using (GameConnection db = new GameConnection())
            {
                // make a variable to store all the record
                var details = (from alldetails in db.WeekDetails
                               where alldetails.GameDate>=thisWeekStart && alldetails.GameDate<=thisWeekEnd
                               select alldetails);
                // gets the data source
                JumboGameDetails.DataSource = details.ToList();
                JumboGameDetails.DataBind();

            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            dat = Calendar1.SelectedDate;
            this.GetGames();
        }
    }
}