<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="viewScoreTeacher.aspx.cs" Inherits="viewScoreTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
            <asp:BoundField DataField="DateTaken" HeaderText="DateTaken" SortExpression="DateTaken" />
            <asp:BoundField DataField="QuizTopic" HeaderText="QuizTopic" SortExpression="QuizTopic" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-MyWebsite-20170429223434ConnectionString %>" SelectCommand="SELECT [UserName], [Score], [DateTaken], [QuizTopic] FROM [QuizScore]"></asp:SqlDataSource>
</asp:Content>

