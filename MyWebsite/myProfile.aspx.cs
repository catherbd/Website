using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class myProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FirstName.Text = Profile.FirstName;
            LastName.Text = Profile.LastName;
            DateOfBirth.Text = Profile.DateOfBirth.ToShortDateString();
            Bio.Text = Profile.Bio;
        }      
    }

    protected void SaveButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Profile.FirstName = FirstName.Text;
            Profile.LastName = LastName.Text;
            Profile.DateOfBirth = DateTime.Parse(DateOfBirth.Text);
            Profile.Bio = Bio.Text;
            lblUpdageMsg.Text = "Your Profile have been updated.";
        }
    }

    protected void btnViewScore1_Click(object sender, EventArgs e)
    {
        if (User.IsInRole("Student"))
        {
            Response.Redirect("viewScoreStudent.aspx");
        }
        else
        {
            Response.Redirect("viewScoreTeacher.aspx");
        }
    }
}