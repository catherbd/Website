<%@ Page Title="Error" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ErrorNotStudent.aspx.cs" Inherits="Errors_ErrorNotStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h2>Access Denied</h2>
    <asp:loginview ID="LoginView2" runat="server">
        <AnonymousTemplate>
<p>Access is only granted to Students, please sign in to proceed.</p>
</AnonymousTemplate>
    <RoleGroups>
<asp:RoleGroup Roles="Teacher">
<ContentTemplate>
<p>You are logged in as a Teacher. Only Students may take the quiz.</p>
</ContentTemplate>
</asp:RoleGroup>
</RoleGroups>

    </asp:loginview>

</asp:Content>

