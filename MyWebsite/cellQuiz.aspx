<%@ Page Title="Cell Biology Quiz" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="cellQuiz.aspx.cs" Inherits="cellQuiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div id="content">
    <h2>Cell Biology Quiz</h2>
        <p>
            Please fill in the 5 blank spaces with the correct answer. All answers must be in lowercase. (spelling counts!)
        </p>
        <p>
            Animal cells are
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> cells. DNA in animal cells is housed within the 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>. The
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> can generate energy for the cell and are the sites of cellular respiration. A plant cell structure that is not found in animal cells and stores fluid and provide protection is called the
             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>. The site of photosythesis is called the           
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>.</p>
        <p>
            &nbsp;<asp:Button ID="cellSubmitBtn" runat="server" BackColor="#33CCFF" Height="44px" Text="Submit" Width="95px" style="float:right;clear:right;" OnClick="dnaSubmitBtn_Click"  />
            <asp:Label ID="lblCellResult" runat="server"></asp:Label>
        </p>

    </div>
</asp:Content>

