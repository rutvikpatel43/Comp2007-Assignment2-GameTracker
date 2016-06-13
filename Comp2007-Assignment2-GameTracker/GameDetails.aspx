<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="Comp2007_Assignment2_GameTracker.GameDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h1>Game List</h1>
                <div class="col-md-4">
                <a href="Details.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i>Add Game</a>
                </div>
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-responsive"
                    ID="GameDetailsGridView" AutoGenerateColumns="false" DataKeyNames="Id" OnRowDeleting="GameDetailsGridView_RowDeleting"
                    AllowSorting="true" OnSorting="GameDetailsGridView_Sorting" OnRowDataBound="GameDetailsGridView_RowDataBound">
                    <Columns>
                        <asp:BoundField HeaderText="Game Name" DataField="GameName" SortExpression="GameName" />
                        <asp:BoundField HeaderText="Game Desciption" DataField="GameDescription" SortExpression="GameDescription" />
                        <asp:BoundField HeaderText="Game Points" DataField="TotalPoints" SortExpression="TotalPoints" />
                        <asp:BoundField HeaderText="Game Spectator" DataField="TotalSpectators" SortExpression="Spectators" />
                        <asp:BoundField HeaderText="Team 1 Name" DataField="Team1Name" SortExpression="Team1Name" />
                        <asp:BoundField HeaderText="Team 1 Description" DataField="Team1Description" SortExpression="Team1Description" />
                        <asp:BoundField HeaderText="Team 1 Points Scored" DataField="Team1PointScored" SortExpression="Team1PointScored" />
                        <asp:BoundField HeaderText="Team 1 Points Loss" DataField="Team1PointLoss" SortExpression="Team1PointLoss" />
                        <asp:BoundField HeaderText="Team 2 Name" DataField="Team2Name" SortExpression="Team2Name" />
                        <asp:BoundField HeaderText="Team 2 Description" DataField="Team2Description" SortExpression="Team2Description" />
                        <asp:BoundField HeaderText="Team 2 Points Scored" DataField="Team2PointScored" SortExpression="Team2PointsScored" />
                        <asp:BoundField HeaderText="Team 2 Points Loss" DataField="Team2PointLoss" SortExpression="Team2PointLoss" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
