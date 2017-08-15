<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div>

        <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
<div id="content">
  
    <h2>Log in to EZ-Learning</h2>
      
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:Login ID="Login1" runat="server" CreateUserText="Sign Up Now" CreateUserUrl="~/register.aspx" DestinationPageUrl="~/myProfile.aspx" >
                </asp:Login>
            </AnonymousTemplate>
            <LoggedInTemplate>
                You are already logged in
            </LoggedInTemplate>
        </asp:LoginView>
   
        <asp:loginstatus runat="server"></asp:loginstatus>     
  
</div>
    
</div>
</asp:Content>

