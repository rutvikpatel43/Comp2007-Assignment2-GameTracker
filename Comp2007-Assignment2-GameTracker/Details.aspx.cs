using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Comp2007_Assignment2_GameTracker.Models;
namespace Comp2007_Assignment2_GameTracker
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               
            if (IsPostBack)
            {
                GameDateTextBox.Focus();
                CheckLabel.Visible = true;
                Team2NameTextBox.Focus();
            }
            if (!IsPostBack && Request.QueryString.Count > 0)
            {
                this.Get_WeekDeatils();
            }
        }
        protected void Get_WeekDeatils()
        {
            int WeekDetailID = Convert.ToInt32(Request.QueryString["Id"]);
            using (DefaultConnection1 db = new DefaultConnection1())
            {

                WeekDetail WeekDetails = (from allDetails in db.WeekDetails
                                          where allDetails.Id == WeekDetailID
                                          select allDetails).FirstOrDefault();
                if (WeekDetails != null)
                {
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

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GameDetails.aspx");
        }
        protected bool CheckNew()
        {
            DateTime dt = Convert.ToDateTime(GameDateTextBox.Text);
            using (DefaultConnection1 db = new DefaultConnection1())
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
        protected void SaveButton_Click(object sender, EventArgs e)
        {
              using (DefaultConnection1 db = new DefaultConnection1())
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
                    if (weekDetails == 0 && !CheckNew())
                    {
                        db.WeekDetails.Add(details);
                    }
                    db.SaveChanges();

                    Response.Redirect("~/GameDetails.aspx");
                }
            

        }

        protected void Team1TotalPointScoredTextBox_TextChanged(object sender, EventArgs e)
        {
            Team2TotalPointScoredTextBox.Text = Convert.ToString((Convert.ToInt32(TotalPointsTextBox.Text) - Convert.ToInt32(Team1TotalPointScoredTextBox.Text)));
        }
    }
}