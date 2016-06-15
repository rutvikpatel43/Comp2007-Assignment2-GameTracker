<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp2007_Assignment2_GameTracker.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater runat="server" ID="JumboGameDetails">


        <ItemTemplate runat="server">
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
                    
              <label for="Team2PointLabel">Game Name:</label>
                    <asp:Label runat="server" ID="Team2PointLabel" Text='<%#DataBinder.Eval(Container.DataItem, "Team2PointScored") %>' />
                    <br />
              <label for="Team1PointLabel">Team 1 Point Scored:</label>
                    <asp:Label runat="server" ID="Label1" Text='<%#DataBinder.Eval(Container.DataItem, "Team1PointScored") %>' />
                    <br />
                    
              <label for="Team2NameLabel">Team 2 Name:</label>
                    <asp:Label runat="server" ID="Label2" Text='<%#DataBinder.Eval(Container.DataItem, "Team2Name") %>' />
                    <br />
                    
              <label for="Team2PointLabel">Game Name:</label>
                    <asp:Label runat="server" ID="Label3" Text='<%#DataBinder.Eval(Container.DataItem, "Team2PointScored") %>' />
                    <br />
              <label for="Team1PointLabel">Team 1 Point Scored:</label>
                    <asp:Label runat="server" ID="Label4" Text='<%#DataBinder.Eval(Container.DataItem, "Team1PointScored") %>' />
                    <br />
                    
              <label for="Team2NameLabel">Team 2 Name:</label>
                    <asp:Label runat="server" ID="Label5" Text='<%#DataBinder.Eval(Container.DataItem, "Team2Name") %>' />
                    <br />
                    
              <label for="Team2PointLabel">Game Name:</label>
                    <asp:Label runat="server" ID="Label6" Text='<%#DataBinder.Eval(Container.DataItem, "Team2PointScored") %>' />
                    <br />
                    
                      
          </div>
        </ItemTemplate>

    </asp:Repeater>

    <h1>Welcome!</h1>

</asp:Content>
