<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div>
        <header>
            <h1>Products Page</h1>
            <p>
                <%: DateTime.Now.ToString() %>
            </p>
        </header>
        <div id="nav">
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="products.aspx">Products</a></li>
                <li><a href="login.aspx">Log-in</a></li>
                <li><a href="about.aspx">About Us</a></li>
                <li><a href="contacts.aspx">Contact Us</a></li>
            </ul>
        </div>
    </div>
</asp:Content>

