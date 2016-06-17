<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="Comp2007_Assignment2_GameTracker.GameDetails" %>

<%--
        Team : Rutvik(#200305366),Himanshu(#200306422)
        File Name: GameDetails.aspx
        Description: displays the information in grid view
        Website:http://comp2007-assignment2-gametracker.azurewebsites.net
--%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Game List</h1>
                <div class="col-md-12">
                    <a href="Details.aspx"><i class="fa fa-plus-circle fa-3x"></i>Add Game</a>
                </div>
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-responsive"
                    ID="GameDetailsGridView" AutoGenerateColumns="false" DataKeyNames="Id" OnRowDeleting="GameDetailsGridView_RowDeleting"
                    AllowSorting="true" OnSorting="GameDetailsGridView_Sorting" OnRowDataBound="GameDetailsGridView_RowDataBound">
                    <Columns>
                        <asp:BoundField HeaderText="Game Date" DataField="GameDate" Visible="true" SortExpression="GameDate" DataFormatString="{0:MMM dd, yyyy}" />
                        <asp:BoundField HeaderText="Game Name" DataField="GameName" SortExpression="GameName" />
                        <asp:BoundField HeaderText="Game Desciption" DataField="GameDescription" SortExpression="GameDescription" />
                        <asp:BoundField HeaderText="Game Points" DataField="TotalPoints" SortExpression="TotalPoints" />
                        <asp:BoundField HeaderText="Game Spectator" DataField="TotalSpectators" SortExpression="Spectators" />
                        <asp:HyperLinkField HeaderText="Team 1" DataTextField="Team1Name" NavigateUrl="~/TeamDeatils.aspx"
                            DataNavigateUrlFields="Id, Team1Name" DataNavigateUrlFormatString="TeamDetails.aspx?Id={0}&Team1Name={1}" />
                        <asp:HyperLinkField HeaderText="Team 2" DataTextField="Team2Name" NavigateUrl="~/TeamDeatils.aspx"
                            DataNavigateUrlFields="Id, Team2Name" DataNavigateUrlFormatString="TeamDetails.aspx?Id={0}&Team2Name={1}" />
                        <asp:BoundField HeaderText="Wining Team" DataField="WiningTeam" SortExpression="WiningTeam" />
                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" NavigateUrl="~/Details.aspx"
                            DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Details.aspx?Id={0}"
                            ControlStyle-CssClass="btn btn-primary btn-sm" />
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="deleteButton" runat="server" CommandName="Delete" Text="<i class='fa fa-trash-o fa-lg'> Delete</i>" CssClass="btn btn-danger btn-sm"
                                    OnClientClick="return confirm('Are you sure you want to delete this user?');" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
