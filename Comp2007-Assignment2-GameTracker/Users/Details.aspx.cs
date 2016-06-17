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
* @version: 0.0.1 - added all the functions
*/
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             // check for postback  
            if (IsPostBack)
            {
                // if it is postback we need that for displaying the alert message for record duplication
                GameDateTextBox.Focus();
                CheckLabel.Visible = true;
                Team2NameTextBox.Focus();
            }
            if (!IsPostBack && Request.QueryString.Count > 0)
            {
                // if there is any query string gets the information
                this.Get_WeekDeatils();
            }
        }

        /**
         * This method gets the data
         *  
         * @method Get_weekDeatils
         * @return {void}
         */
        protected void Get_WeekDeatils()
        {
            int WeekDetailID = Convert.ToInt32(Request.QueryString["Id"]);
            using (GameConnection db = new GameConnection())
            {
                // gets inform from the database
                WeekDetail WeekDetails = (from allDetails in db.WeekDetails
                                          where allDetails.Id == WeekDetailID
                                          select allDetails).FirstOrDefault();
                // check if the object is null or not
                if (WeekDetails != null)
                {
                    // get the information
                    GameDateTextBox.Text = WeekDetails.GameDate.ToString("yyyy-MM-dd");
                    GameNameTextBox.Text = WeekDetails.GameName;
                    GameDescriptionTextBox.Text = WeekDetails.GameDescription;
                    TotalPointsTextBox.Text = WeekDetails.TotalPoints.ToString();
                    SpectatorsTextBox.Text = WeekDetails.TotalSpectators.ToString();
                    Team1NameTextbox.Text = WeekDetails.Team1Name;
                    Team1DescriptionTextBox.Text = WeekDetails.Team1Description;
                    Team1TotalPointScoredTextBox.Text = WeekDetails.Team1PointScored.ToString();
                    Team2NameTextBox.Text = WeekDetails.Team2Name;
                    Team2DescriptionTextBox.Text = WeekDetails.Team2Description;
                    Team2TotalPointScoredTextBox.Text = WeekDetails.Team2PointScored.ToString();
                }

            }
        }
        /**
         * This method redirects the user to game list
         * 
         * 
         * @method CAncelButton_click
         * @return {void}
         */
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GameDetails.aspx");
        }
        /**
        * This method check for the record whether it exists or not
        * 
        * 
        * @method CheckNew()
        * @return {void}
        */
        protected bool CheckNew()
        {
            DateTime dt = Convert.ToDateTime(GameDateTextBox.Text);
            using (GameConnection db = new GameConnection())
            {
                WeekDetail details = (from alldetails in db.WeekDetails
                               where alldetails.GameDate == dt
                               && alldetails.GameName == GameNameTextBox.Text
                               && alldetails.Team1Name == Team1NameTextbox.Text
                               && alldetails.Team2Name == Team2NameTextBox.Text
                               select alldetails).FirstOrDefault();
                if (details != null)
                {
                   
                    CheckLabel.Visible = true;
                    CheckLabel.Text = "Record Already Exist";
                    return true;
                }
                else
                    return false;
            }
        }
        /**
        * This method is called when the save button is clicked
        * 
        * 
        * @method SaveButton_Click
        * @return {void}
        */
        protected void SaveButton_Click(object sender, EventArgs e)
        {
              using (GameConnection db = new GameConnection())
                {
                    WeekDetail details = new WeekDetail();
                    int weekDetails = 0;
                    if (Request.QueryString.Count > 0)
                    {
                        weekDetails = Convert.ToInt32(Request.QueryString["Id"]);
                        details = (from alldetails in db.WeekDetails
                                   where alldetails.Id == weekDetails
                                   select alldetails).FirstOrDefault();
                    }
                    // saves the data if the user click save
                    details.GameDate = Convert.ToDateTime(GameDateTextBox.Text);
                    details.GameName = GameNameTextBox.Text;
                    details.GameDescription = GameDescriptionTextBox.Text;
                    details.TotalPoints = Convert.ToInt32(TotalPointsTextBox.Text);
                    details.TotalSpectators = Convert.ToInt32(SpectatorsTextBox.Text);
                    details.Team1Name = Team1NameTextbox.Text;
                    details.Team1Description = Team1DescriptionTextBox.Text;
                    details.Team1PointScored = Convert.ToInt32(Team1TotalPointScoredTextBox.Text);
                    details.Team1PointLoss = Convert.ToInt32(TotalPointsTextBox.Text) - Convert.ToInt32(Team1TotalPointScoredTextBox.Text);
                    details.Team2Name = Team2NameTextBox.Text;
                    details.Team2Description = Team2DescriptionTextBox.Text;
                    details.Team2PointScored = Convert.ToInt32(Team2TotalPointScoredTextBox.Text);
                    details.Team2PointLoss = Convert.ToInt32(Team1TotalPointScoredTextBox.Text);
                if (Convert.ToInt32(Team1TotalPointScoredTextBox.Text) > Convert.ToInt32(Team2TotalPointScoredTextBox.Text))
                    details.WiningTeam = Team1NameTextbox.Text;
                else
                    details.WiningTeam = Team2NameTextBox.Text;
                    details.UserID = 1;
                    if (weekDetails == 0 && !CheckNew())
                    {
                        db.WeekDetails.Add(details);
                    }
                    // saves the changes to database
                    db.SaveChanges();
                    // redirects to the gamelist
                    Response.Redirect("~/GameDetails.aspx");
                }
            

        }
        // just to count the point for team 2
        protected void Team1TotalPointScoredTextBox_TextChanged(object sender, EventArgs e)
        {
            Team2TotalPointScoredTextBox.Text = Convert.ToString((Convert.ToInt32(TotalPointsTextBox.Text) - Convert.ToInt32(Team1TotalPointScoredTextBox.Text)));
        }
    }
}
 