using Comp2007_Assignment2_GameTracker.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp2007_Assignment2_GameTracker
{
    public partial class GameDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.get_weekDetails();
            }
        }
        protected void get_weekDetails()
        {
            using (DefaultConnection1 db = new DefaultConnection1())
            {
                // query the Students Table using EF and LINQ
                var weekDetails = (from alldetails in db.WeekDetails
                                   select alldetails);

                // bind the result to the GridView
                GameDetailsGridView.DataSource = weekDetails.ToList();
                GameDetailsGridView.DataBind();
            }
        }

        protected void GameDetailsGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GameDetailsGridView_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

        protected void GameDetailsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}