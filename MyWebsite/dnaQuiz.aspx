<%@ Page Title="DNA Quiz" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="dnaQuiz.aspx.cs" Inherits="dnaQuiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div id="content">
    <h2>DNA Quiz</h2>
        <p>
            Please fill in the 5 blank spaces with the correct answer. All answers must be in lowercase. (spelling counts!)
        </p>
        <p>
            DNA does not unzip entirely. It unzips in a small area called a 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> fork. The four DNA bases are Thymine, Guanine, 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> , and Adenine. Thymine pairs with 
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> . During DNA replication, an enzyme called  
             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            unwinds the double-stranded DNA. At the end of this process, DNA 
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            seals up the fragments into one long continuous strand.</p>
        <p>
            &nbsp;<asp:Button ID="dnaSubmitBtn" runat="server" BackColor="#33CCFF" Height="44px" Text="Submit" Width="95px" style="float:right;clear:right;" OnClick="dnaSubmitBtn_Click"  />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </p>

    </div>
</asp:Content>

