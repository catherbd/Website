using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Wizard1_FinishButtonClick2(object sender, WizardNavigationEventArgs e)
    {
        Result.Text = "Your Submission has been successfully completed and processed with the following:";
        Result.Text += "<br />Full Name: " + txtFirstName.Text + " " + txtLastName.Text;
        Result.Text += "<br />Email:" + txtEmail.Text;
        Result.Text += "<br />Phone:" + txtPhone.Text;
        Result.Text += "<br />You prefer to be contacted by: " + preference.SelectedValue;
        Result.Text += "<br />Interested in: " + Products.SelectedValue;
        Result.Text += "<br />Comments: " + txtComments.Text;
    }
}