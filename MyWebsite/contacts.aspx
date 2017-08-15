<%@ Page Title="Contacts" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="contacts" %>

<%@ Register Src="Controls/ContactForm.ascx" TagPrefix="contacts" TagName="ContactForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
  
           <Contacts:ContactForm ID="ContactForm" runat="server" />

</asp:Content>

