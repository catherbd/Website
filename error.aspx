<%@ Page Title="Error" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <header><h1 style="color:red">Error</h1></header>
    <h2 style="color:red"><asp:Label ID="Label1" runat="server"></asp:Label>
    </h2>
</asp:Content>

