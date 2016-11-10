using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class error : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int code = int.Parse(Request.QueryString["err_code"]);

        if (code == 7)
        {
            Label1.Text = "Please choose an item to add to shopping cart";
        }
        else if (code == 8)
        {
            Label1.Text = "Please choose an item to remove from shopping cart";
        }

        else
        {
            Label1.Text = "Error, please try again.";
        }

    }
}