<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp2007_Assignment2_GameTracker.Default" %>

<%--
        Team : Rutvik(#200305366),Himanshu(#200306422)
        File Name: Default.ascx
        Description: Landing page for our small web app
        Website:http://comp2007-assignment2-gametracker.azurewebsites.net
--%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-lg-offset-4 col-md-4">
                <asp:Calendar ID="Calendar1" runat="server" SelectionMode="DayWeekMonth" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            </div>
            <div>
                <%-- Repeater to display all the information--%>
                <asp:Repeater runat="server" ID="JumboGameDetails">
                    <ItemTemplate runat="server">
                        <%-- Division to display  block of all information--%>
                        <div class="HomePageGameDetails col-md-4">
                            <label for="GameNameLabel">Game Name:</label>
                            <asp:Label runat="server" ID="GameNameLabel" Text='<%#DataBinder.Eval(Container.DataItem, "GameName") %>' />
                            <br />

                            <label for="GamePointsLabel">Game Points:</label>
                            <asp:Label runat="server" ID="GamePointsLabel" Text='<%#DataBinder.Eval(Container.DataItem, "TotalPoints") %>' />
                            <br />
                            <label for="GameSpectatorsLabel">Game Spectators:</label>
                            <asp:Label runat="server" ID="GameSpectatorsLabel" Text='<%#DataBinder.Eval(Container.DataItem, "TotalSpectators") %>' />
                            <br />
                            <label for="Team1NameLabel">Team 1 Name:</label>
                            <asp:Label runat="server" ID="Team1NameLabel" Text='<%#DataBinder.Eval(Container.DataItem, "Team1Name") %>' />
                            <br />

                            <label for="Team1PointLabel">Team 1 Point Scored:</label>
                            <asp:Label runat="server" ID="Team1PointLabel" Text='<%#DataBinder.Eval(Container.DataItem, "Team1PointScored") %>' />
                            <br />

                            <label for="Team2NameLabel">Team 2 Name:</label>
                            <asp:Label runat="server" ID="Team2NameLabel" Text='<%#DataBinder.Eval(Container.DataItem, "Team2Name") %>' />
                            <br />

                            <label for="Team2PointLabel">Team 2 Point:</label>
                            <asp:Label runat="server" ID="Team2PointLabel" Text='<%#DataBinder.Eval(Container.DataItem, "Team2PointScored") %>' />
                            <br />

                            <label for="WinningTeam">Winning Team:</label>
                            <asp:Label runat="server" ID="Label1" Text='<%#DataBinder.Eval(Container.DataItem, "WiningTeam") %>' />
                            <br />
                        </div>
                    </ItemTemplate>

                </asp:Repeater>
            </div>

        </div>
    </div>

</asp:Content>
