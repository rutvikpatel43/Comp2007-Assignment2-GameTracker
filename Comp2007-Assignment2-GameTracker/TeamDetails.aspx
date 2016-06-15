<%@ Page Title="Team Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeamDetails.aspx.cs" Inherits="Comp2007_Assignment2_GameTracker.TeamDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <h1>Team Detail</h1>
                <div class="col-md-12">
                    <a href="GameDetails.aspx"><i class="fa fa-arrow-circle-left fa-3x" aria-hidden="true"></i></a>
                    <br />
                </div>
                <div class="col-md-5">
                        <asp:Label runat="server" Text="Team Name :">Team Name:</asp:Label>
                    <asp:Label runat="server" ID="TeamName"></asp:Label>
                    <br />
                    <br />
                        <asp:Label runat="server" Text="Team Point :">Team Points Scored:</asp:Label>
                    <asp:Label runat="server" ID="TeamPoints"></asp:Label>
                    </div>
                <div class="col-md-5">
                    <asp:Label runat="server" Text="Team Desciption:">Team Description:</asp:Label>
                    <asp:TextBox runat="server" TextMode="MultiLine" Columns="3" Rows="3" CssClass="form-control" ID="TeamDescriptionText" placeholder="Game Description" required="true"></asp:TextBox>
                    <br />
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
