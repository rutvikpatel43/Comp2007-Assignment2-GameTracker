<%@ Page Title="Week Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Comp2007_Assignment2_GameTracker.Details" EnableEventValidation="false"%>
<%--
        Team : Rutvik(#200305366),Himanshu(#200306422)
        File Name: Details.ascx
        Description: form for entering all the information for game and also the form used for edit option
        Website:http://comp2007-assignment2-gametracker.azurewebsites.net
--%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-4 col-md-4">
                <%-- 3 division  for game and team details--%>
                <asp:Label ID="CheckLabel" runat="server" CssClass="alert alert-danger btn-danger btn-lg" Visible="false" Width="100%"></asp:Label>
                <h1>Week Details</h1>
                <h5>All Fields are Required</h5>
                <br />
                <div class="Game-details">
                    <div class="form-group" id="201">
                        <label class="control-label" for="GameDateTextBox">Game Date:</label>
                        <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="GameDateTextBox" placeholder="Enrollment Date Format: mm/dd/yyyy" required="true"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid Date! Format: mm/dd/yyyy"
                            ControlToValidate="GameDateTextBox" MinimumValue="2000-01-01"
                            Type="Date" Display="Dynamic" BackColor="Yellow" ForeColor="Blue" Font-Size="Small" MaximumValue="2999-01-01"></asp:RangeValidator>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="GameNameTextBox">Game Name: </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="GameNameTextBox" placeholder="Game Name" required="true"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="Game Name Required" ControlToValidate="GameNameTextBox"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="GameDescriptionTextbox">Game Description: </label>
                        <asp:TextBox runat="server" TextMode="MultiLine" Columns="3" Rows="3" CssClass="form-control" ID="GameDescriptionTextBox" placeholder="Game Description" required="true"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="Game Description Required" ControlToValidate="GameDescriptionTextBox"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="TotalPointsTextbox">Total Points: </label>
                        <asp:TextBox TextMode="Number" runat="server" CssClass="form-control" ID="TotalPointsTextBox" placeholder="Points Allowed" required="true"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="Total Point For Game Required" ControlToValidate="TotalPointsTextBox"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="SpectatorsTextbox">Total Spectators: </label>
                        <asp:TextBox TextMode="Number" runat="server" CssClass="form-control" ID="SpectatorsTextBox" placeholder="Number of visitors" required="true"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="No of Spectators Required" ControlToValidate="SpectatorsTextBox"></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>

            <div class="col-md-offset-2 col-md-4">
                <h1>Team 1 Details</h1>
                <h5>All Fiellds are Required</h5>
                <br />
                <div class="Game-details">
                    <div class="from-group">
                        <label for="Team1NameTextBox" class="control-label">Team 1 Name:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="Team1NameTextbox" placeholder="Team 1 Name" required="true"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="Team 1 Name Required" ControlToValidate="Team1NameTextBox"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <label class="control-label" for="Team1DescriptionTextbox">Team 1 Description: </label>
                        <asp:TextBox runat="server" TextMode="MultiLine" Columns="3" Rows="3" CssClass="form-control" ID="Team1DescriptionTextBox" placeholder="Team 1 Description" required="true"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="Team 1 Description Required" ControlToValidate="Team1DescriptionTextBox"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <label class="control-label" for="Team1TotalPointScoredTextbox">Total Points Scored: </label>
                        <asp:TextBox TextMode="Number" runat="server" CssClass="form-control" ID="Team1TotalPointScoredTextBox" placeholder="Point Scored by team 1" required="true" OnTextChanged="Team1TotalPointScoredTextBox_TextChanged" AutoPostBack="True"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="Team 1 Total Point Required" ControlToValidate="Team1TotalPointScoredTextBox"></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>

            <div class="col-md-offset-1 col-md-4">
                <h1>Team 2 Details</h1>
                <h5>All Fiellds are Required</h5>
                <br />
                <div class="Game-details">
                    <div class="from-group">
                        <label for="Team2NameTextBox" class="control-label">Team 2 Name:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="Team2NameTextBox" placeholder="Team 1 Name" required="true"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="Team 2 Name Required" ControlToValidate="Team2NameTextBox"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <label class="control-label" for="Team2DescriptionTextbox">Team 2 Description: </label>
                        <asp:TextBox runat="server" TextMode="MultiLine" Columns="3" Rows="3" CssClass="form-control" ID="Team2DescriptionTextBox" placeholder="Team 1 Description" required="true"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="Team 2 Description Required" ControlToValidate="Team2DescriptionTextBox"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="Team2TotalPointScoredTextbox">Total Points Scored: </label>
                        <asp:TextBox Enabled="false" Text="''" TextMode="Number" runat="server" CssClass="form-control" ID="Team2TotalPointScoredTextBox" placeholder="Point Scored by team 1" required="true"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" CssClass="alert-danger" ErrorMessage="Team 2 Total Points Scored Required" ControlToValidate="Team2TotalPointScoredTextBox"></asp:RequiredFieldValidator>
                    </div>

                </div>
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server"
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
