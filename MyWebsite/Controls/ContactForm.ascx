<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>

  
         <!--Wizard to create a contacts form-->        
        <center>
           
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" CellPadding="10" Font-Names="Verdana" Font-Size="Large" Height="292px" OnFinishButtonClick="Wizard1_FinishButtonClick2" Width="707px">
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your first name" TabIndex="1">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp; Last Name:&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLastName" CssClass="ErrorMessage" ErrorMessage="Enter your last name">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp; Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="ErrorMessage">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter an e-mail address" CssClass="ErrorMessage">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 0px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp; Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPhone" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a phone number">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhone" CssClass="ErrorMessage" ErrorMessage="Please enter a valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="preference" CssClass="ErrorMessage" ErrorMessage="Choose your preference">*</asp:RequiredFieldValidator>
                        <asp:RadioButtonList ID="preference" runat="server" AutoPostBack="True">
                            <asp:ListItem>Email</asp:ListItem>
                            <asp:ListItem>Phone</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
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
                    <asp:WizardStep runat="server" StepType="Finish" Title="Comments">
                        Additional Comments or Concerns:<br />                  
                        <asp:TextBox ID="txtComments" runat="server" Height="151px" TextMode="MultiLine" Width="354px"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Display">
                        <asp:Label ID="Result" runat="server"></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>

            </asp:Wizard>
</center>
     
   
   
  

<script type="text/javascript">
            function ValidatorUpdateDisplay(val) {
                if (val.isvalid) {
                    val.style.visibility = "hidden";
                    $('#' + val.controltovalidate).animate({ backgroundColor: '', opacity: 1 }, 600);
                }
                else {
                    val.style.visibility = "visible";
                    $('#' + val.controltovalidate).animate({backgroundColor: 'red', opacity: 0.5}, 600);
                }
            }
        </script>







