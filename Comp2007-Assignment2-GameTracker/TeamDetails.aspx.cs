using Comp2007_Assignment2_GameTracker.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Comp2007_Assignment2_GameTracker
{
    public partial class TeamDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack && Request.QueryString.Count>0)
            {
                // sets all field to blank
                TeamDescriptionText.Text = " ";
                TeamName.Text = " ";
                TeamPoints.Text = " ";
                get_TeamDetails();
            }
            
        }
        protected void get_TeamDetails()
        {
            int gameId = Convert.ToInt32(Request.QueryString["Id"]);
            using (GameConnection db = new GameConnection())
            {
                WeekDetail TeamDetails = (from details in db.WeekDetails
                                          where details.Id == gameId
                                          select details).FirstOrDefault();
                if (Request.QueryString["Team1Name"] == null)
                {
                    TeamName.Text = Request.QueryString["Team2Name"];
                    TeamDescriptionText.Text = TeamDetails.Team2Description;
                    TeamPoints.Text = TeamDetails.Team2PointScored.ToString();
                }
                else
                {
                    TeamName.Text = Request.QueryString["Team1Name"];
                    TeamDescriptionText.Text = TeamDetails.Team1Description;
                    TeamPoints.Text = TeamDetails.Team1PointScored.ToString();
                }
            }
        }
    }
}