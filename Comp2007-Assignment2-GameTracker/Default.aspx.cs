using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        protected void Page_Load(object sender, EventArgs e)
        {
            //checks if it is postback
            if(!IsPostBack)
            {
                // get all theinformation from the table
                this.GetGames();
            }
        }
        protected void GetGames()
        {
            using (DefaultConnection1 db = new DefaultConnection1())
            {
                // make a variable to store all the record
                var details = (from alldetails in db.WeekDetails
                               select alldetails);
                // gets the data source
                JumboGameDetails.DataSource = details.ToList();
                JumboGameDetails.DataBind();

            }
        }
    }
}