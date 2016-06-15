<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp2007_Assignment2_GameTracker.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater runat="server" ID="JumboGameDetails">


        <ItemTemplate runat="server">
          <div class="HomePageGameDetails col-md-4">
                    <label for="GameNameLabel">Game Name:</label>
                    <asp:Label runat="server" ID="Label1" Text='<%#DataBinder.Eval(Container.DataItem, "TotalPoints") %>' />
                    <br />
                     
                    <label for="GamePointsLabel">Game Points:</label>
                    <asp:Label runat="server" ID="GamePointsLabel" Text='<%#DataBinder.Eval(Container.DataItem, "TotalPoints") %>' />
                    <br />
                    <label for="GameSpectatorsLabel">Game Spectators:</label>
                    <asp:Label runat="server" ID="GameSpectatorsLabel" Text='<%#DataBinder.Eval(Container.DataItem, "TotalSpectators") %>' />
                    <br />  
          </div>
        </ItemTemplate>

    </asp:Repeater>

    <h1>Welcome!</h1>

</asp:Content>
