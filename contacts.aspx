<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="contacts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contacts</title>     
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/> <!--To use an animate library-->
     <link type="text/css" rel="stylesheet" href="StyleSheet.css" />  <!--To use the CSS page-->
</head>
<body>
    <form id="form1" runat="server">
 <div>
        <header>
    <h1>Contacts Page</h1>
                <p> <%: DateTime.Now.ToString() %></p>
        </header>
       
     <!--Top Navigation bar-->
            <div id="nav">
                <ul>
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="products.aspx">Products</a></li> 
                    <li><a href="login.aspx">Log-in</a></li>    
                    <li><a href="about.aspx">About Us</a></li>         
                    <li><a href="contacts.aspx">Contact Us</a></li>                 
                </ul>                
            </div>
         <div>
             <img id="banner" src="contact.jpg" alt="logo2" />
        </div>       
 </div>   
         <!--Wizard to create a contacts form-->        
        <center>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="Large" Height="247px" Width="642px" CellPadding="10" OnFinishButtonClick="Wizard1_FinishButtonClick2">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <HeaderTemplate>
                Welcome to the Contacts Page
            </HeaderTemplate>
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Contacts">
                    <br />
                    &nbsp; First Name:&nbsp;
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp; Last Name:&nbsp;
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp; Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp; Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    <br />
                    <asp:RadioButtonList ID="preference" runat="server" AutoPostBack="True">
                        <asp:ListItem>Email</asp:ListItem>
                        <asp:ListItem>Phone</asp:ListItem>
                    </asp:RadioButtonList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Products">
                    Please choose a topic that you are interested in:<br />
                    <br />
                    <asp:CheckBoxList ID="Products" runat="server" AutoPostBack="True">
                        <asp:ListItem>Evolution</asp:ListItem>
                        <asp:ListItem>Cloning</asp:ListItem>
                        <asp:ListItem>Genetics</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Comments" StepType="Finish">
                    Additional Comments or Concerns:<br />
                    <asp:TextBox ID="txtComments" runat="server" Height="151px" TextMode="MultiLine" Width="354px"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Display" StepType="Complete">
                    <asp:Label ID="Result" runat="server"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
            </center>           
    </form>
</body>
</html>
