<%@ Page Title="quiz" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="quiz.aspx.cs" Inherits="quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
      <div id="content">
          <img alt="quiz" src="quiz.jpg" height="200" width="550" style="float:right; clear:right;"/>
    <h2>Take a Quiz when you are ready!</h2>
          <p>
    <b style="color:blue;">DNA Quiz</b><br />
          The DNA quiz will test your knowledge on all information presented about DNA on the <a href="DNA.aspx">DNA page</a>. Please make sure that you have review the materials properly before taking the quiz.<br />
          <asp:Button ID="dnaBtn" runat="server" BackColor="#66CCFF" Text="Take the DNA Quiz!" OnClientClick="if (!confirm('Are you sure you want to continue?')) return false;" Height="36px" OnClick="dnaBtn_Click" Width="164px" />
              </p>
           <p>
    <b style="color:blue;">Protein Synthesis Quiz</b><br />
         
              The protein quiz will test your knowledge on all information presented about protein on the <a href="protein.aspx">protein page</a>. Please make sure that you have review the materials properly before taking the quiz.<br />
          <asp:Button ID="proteinBtn" runat="server" BackColor="#66CCFF" Text="Take the Protein Quiz!" OnClientClick="if (!confirm('Are you sure you want to continue?')) return false;" Height="36px" Width="164px" OnClick="proteinBtn_Click" />
              </p>
           <p>
   <b style="color:blue;">Cell Biology Quiz</b><br />
         
              The cell biology quiz will test your knowledge on all information presented about cellular biology on the <a href="cell.aspx">cell biology page</a>. Please make sure that you have review the materials properly before taking the quiz.<br />
          <asp:Button ID="cellBtn" runat="server" BackColor="#66CCFF" Text="Take the Cell Quiz!" OnClientClick="if (!confirm('Are you sure you want to continue?')) return false;" Height="36px" Width="164px" OnClick="cellBtn_Click" />
              </p>
          </div>
</asp:Content>

