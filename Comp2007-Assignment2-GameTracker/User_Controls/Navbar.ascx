<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="Comp2007_Assignment2_GameTracker.Navbar" %>
<%--
        Team : Rutvik(#200305366),Himanshu(#200306422)
        File Name: Navbar.ascx
        Description: Navbar for wesite
        Website:http://comp2007-assignment2-gametracker.azurewebsites.net
--%>
<nav class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="./" class="navbar-brand">
          <img src="../Assets/Logo.png" /></a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li id="Home" runat="server"><a href="Default.aspx"><i class="fa fa-home fa-lg"></i> Home</a></li>
                <asp:PlaceHolder ID="PublicLinks" runat="server">
                    <li id="Login" runat="server"><a href="Login.aspx"><i class="fa fa-sign-in fa-lg"></i> Login</a></li>
                    <li id="Register" runat="server"><a href="Register.aspx"><i class="fa fa-plus-circle fa-lg"></i> Register</a></li>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="UserLinks" runat="server">
                    <li id="Details" runat="server"><a href="../Users/Details.aspx"><i class="fa fa-wpforms fa-lg"></i> Add Game</a></li>
                   <li id="GameDetails" runat="server"><a href="../Users/GameDetails.aspx"><i class="fa fa-th-list fa-lg"></i> Games</a></li>
                    <li id="Logout1" runat="server"><a href="../Logout.aspx"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
                </asp:PlaceHolder>
                 <asp:PlaceHolder ID="Admin" runat="server">
                    <li id="Users" runat="server"><a href="../Admin/Users.aspx"><i class="fa fa-list fa-lg"></i> Users</a></li>
                   <li id="UserDetails" runat="server"><a href="../Admin/UserDetails.aspx"><i class="fa fa-plus-circle fa-lg"></i> Add User</a></li>
                     <li id="Logout" runat="server"><a href="../Logout.aspx"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
                </asp:PlaceHolder>
                <li id="contact" runat="server"><a href="Contact.aspx"><i class="fa fa-phone fa-lg"></i> Contact Us</a></li>
            </ul>
        </div>
  </div>
</nav>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
                  <a class="navbar-brand" href="#">    <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.png" Height="120%" Width="110%"/>
</a>

            
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
