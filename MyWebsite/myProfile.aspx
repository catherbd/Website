<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="myProfile.aspx.cs" Inherits="myProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
     <div id="content">
    <h2>My Account</h2>
  <p>
    Welcome to My Account page. You can personalize your profile in this page and change your password here.
  </p>
  <table class="auto-style1">
  <tr>
    <td>
      <asp:Label ID="Label1" runat="server" AssociatedControlID="FirstName" Text="First name"></asp:Label>
    </td>
    <td>
      <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
    </td>
    <td>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" Display="Dynamic" ErrorMessage="First name is required."></asp:RequiredFieldValidator>
    </td>
  </tr>
  <tr>
    <td>
      <asp:Label ID="Label2" runat="server" AssociatedControlID="LastName" Text="Last name"></asp:Label>
    </td>
    <td>
      <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
    </td>
    <td>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" Display="Dynamic" ErrorMessage="Last name is required."></asp:RequiredFieldValidator>
    </td>
  </tr>
  <tr>
    <td>
      <asp:Label ID="Label3" runat="server" AssociatedControlID="DateOfBirth" Text="Date of birth"></asp:Label>
    </td>
    <td>
      <asp:TextBox ID="DateOfBirth" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:CompareValidator ErrorMessage="(mm/dd/yyyy)" Display="Dynamic" ID="valcDate" ControlToValidate="DateOfBirth" Operator="DataTypeCheck" Type="Date" runat="server"></asp:CompareValidator>           

<asp:RangeValidator ID="valrDate" runat="server" ControlToValidate="DateOfBirth" MinimumValue="12/31/1920" MaximumValue="1/1/2018" Type="Date" text="Invalid Date" Display="Dynamic"/>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DateOfBirth" Display="Dynamic" ErrorMessage="Date of birth is required."></asp:RequiredFieldValidator>
      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DateOfBirth" Display="Dynamic" ErrorMessage="Please enter a valid date." Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
    </td>
  </tr>
  <tr>
    <td>
      <asp:Label ID="Label4" runat="server" AssociatedControlID="Bio" Text="Biography"></asp:Label>
    </td>
    <td>
      <asp:TextBox ID="Bio" runat="server" Height="75px" TextMode="MultiLine" Width="300px"></asp:TextBox>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
      <asp:Button ID="Button1" runat="server" Text="Save Profile" OnClick="SaveButton_Click" />
    </td>
    <td>&nbsp;</td>
  </tr>
      <tr>
    <td>&nbsp;</td>
    <td>
      
        <asp:Label ID="lblUpdageMsg" runat="server" ForeColor="Red"></asp:Label>
      
    </td>
    <td>&nbsp;</td>
  </tr>
  </table>
        
         <p> View Quiz Scores</p>
         <asp:Button ID="btnViewScore1" runat="server" Text="View Quiz Scores" OnClick="btnViewScore1_Click" />
 <br /> <br />

    <asp:ChangePassword ID="ChangePassword1" runat="server">
    </asp:ChangePassword>
 
 </div>
</asp:Content>

