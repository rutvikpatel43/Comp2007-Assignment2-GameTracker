<%@ Page Title="Team Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeamDetails.aspx.cs" Inherits="Comp2007_Assignment2_GameTracker.TeamDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <br />
                <br />
                <h1>Team Detail</h1>
                <div class="col-md-4">
                    <a href="GameDetails.aspx" class="btn btn-success btn-lg"><i class="fa fa-plus"></i>Back</a>
                </div>
                <asp:Label runat="server" Text="Team Name :">Team Name:</asp:Label>
                <asp:Label runat="server" ID="TeamName"></asp:Label>
                <br />
                <asp:Label runat="server" Text="Team Desciption:">Team Description:</asp:Label>
                <asp:TextBox runat="server" TextMode="MultiLine" Columns="3" Rows="3" CssClass="form-control" ID="TeamDescriptionText" placeholder="Game Description" required="true"></asp:TextBox>

                <br />
                <asp:Label runat="server" Text="Team Point :">Team Points Scored:</asp:Label>
                <asp:Label runat="server" ID="TeamPoints"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
