using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq.Dynamic;
using Comp2007_Assignment2_GameTracker.Models;
namespace Comp2007_Assignment2_GameTracker
{
    /**
* @author: Rutvik(#200305366),Himanshu(#200306422)
* @date: Jun 15, 2016
* @version: 0.0.1 - added all the function for edit and delete sorting
*/
    public partial class GameDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // session varaiable stored for shorting
                Session["SortColumn"] = "GameName";
                Session["SortDirection"] = "DESC";
                this.get_weekDetails();
            }
        }
        /**
         * This method  get the data
         * @method get_weekDetails
         * @return {void}
         */
        protected void get_weekDetails()
        {
            using (DefaultConnection1 db = new DefaultConnection1())
            {
                string sortString = Session["SortColumn"].ToString() + " " + Session["SortDirection"].ToString();
                // query the Students Table using EF and LINQ
                var weekDetails = (from alldetails in db.WeekDetails
                                   select alldetails);

                // bind the result to the GridView
                GameDetailsGridView.DataSource = weekDetails.AsQueryable().OrderBy(sortString).ToList();
                GameDetailsGridView.DataBind();
            }
        }
        /**
         * This method does the sorting function it takes  ascending for default then takes desc
         * @method GameDetailsGridView_Sorting
         * @return {void}
         */

        protected void GameDetailsGridView_Sorting(object sender, GridViewSortEventArgs e)
        {
            Session["SortColumn"] = e.SortExpression;
            this.get_weekDetails();
            Session["SortDirection"] = Session["SortDirection"].ToString() == "ASC" ? "DESC" : "ASC";
        }
        /**
         * This method it provides the carat sign and it sorts the data
         * @method  GameDetailsGridView_RowDataBound
         * @return {void}
         */

        protected void GameDetailsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (IsPostBack)
            {
                if (e.Row.RowType == DataControlRowType.Header)
                {
                    LinkButton linkbutton = new LinkButton();
                    for (int index = 0; index < GameDetailsGridView.Columns.Count; index++)
                    {
                        if (GameDetailsGridView.Columns[index].SortExpression == Session["SortColumn"].ToString())
                        {
                            if (Session["SortDirection"].ToString() == "ASC")
                            {
                                linkbutton.Text = "<i class='fa fa-caret-up fa-lg'></i>";
                            }
                            else
                            {
                                linkbutton.Text = "<i class='fa fa-caret-down fa-lg'></i>";
                            }
                            e.Row.Cells[index].Controls.Add(linkbutton);
                        }
                    }
                }
            }
        }
        /**
          * This method to delete the data 
          * 
          * @method GameDetailsGridView_RowDeleting
          * @return {void}
          */
        protected void GameDetailsGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int selectedrow = e.RowIndex;
            int gameId = Convert.ToInt32(GameDetailsGridView.DataKeys[selectedrow].Values["Id"]);
            using (DefaultConnection1 db = new DefaultConnection1())
            {
                WeekDetail details = (from alldetails in db.WeekDetails
                                      where alldetails.Id == gameId
                                      select alldetails).FirstOrDefault();
                db.WeekDetails.Remove(details);
                db.SaveChanges();
                this.get_weekDetails();
            }
        }

        
    }
}