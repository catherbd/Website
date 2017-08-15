using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class quiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void dnaBtn_Click(object sender, EventArgs e)
    {
       if  (User.IsInRole("Student"))
        
        {
          Response.Redirect("dnaQuiz.aspx");
        }
       else
        {
            Response.Redirect("Errors/ErrorNotStudent.aspx");
        }
       
    }

    protected void proteinBtn_Click(object sender, EventArgs e)
    {
        

        if (User.IsInRole("Student"))

        {
            Response.Redirect("proteinQuiz.aspx");
        }
        else
        {
            Response.Redirect("Errors/ErrorNotStudent.aspx");
        }
    }

    protected void cellBtn_Click(object sender, EventArgs e)
    {
       
        if (User.IsInRole("Student"))

        {
            Response.Redirect("cellQuiz.aspx");
        }
        else
        {
            Response.Redirect("Errors/ErrorNotStudent.aspx");
        }
    }
}