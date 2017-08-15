<%@ Page Title="Protein Synthesis Quiz" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="proteinQuiz.aspx.cs" Inherits="proteinQuiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div id="content">
    <h2>Protein Quiz</h2>
        <p>
            Please fill in the 5 blank spaces with the correct answer. All answers must be in lowercase. (spelling counts!)
        </p>
        <p>
            The synthesis of proteins takes two steps: 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> and 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>. The first step in transcription is the partial unwinding of the
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> molecule so that the portion of DNA that codes for the needed protein can be transcribed. After transcription, the new RNA strand is released and the two unzipped DNA strands bind together again to form the double
             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>. An  
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>pairs complementary nitrogenous bases with mRNA.</p>
        <p>
            &nbsp;<asp:Button ID="cellSubmitBtn" runat="server" BackColor="#33CCFF" Height="44px" Text="Submit" Width="95px" style="float:right;clear:right;" OnClick="proteinSubmitBtn_Click" />
            <asp:Label ID="lblProteinResult" runat="server"></asp:Label>
        </p>

    </div>
</asp:Content>

