using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class products : BasePage
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            ItemList myList = new ItemList();
            foreach (InventoryItem item in myList.getList())
            {
                string str = item.Name + " ( $" + item.Price + " )";
                leftListBox.Items.Add(new ListItem(str , item.Price.ToString("0.00")));
            }

        }
       
     }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Add_Click(object sender, EventArgs e)
    {
        if (leftListBox.SelectedIndex == -1)
        { 
            Server.Transfer("error.aspx?err_code=7");
        }
        rightListBox.Items.Add(leftListBox.SelectedItem);
        leftListBox.Items.Remove(leftListBox.SelectedItem);
        rightListBox.ClearSelection();
        leftListBox.ClearSelection();
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        foreach (object item in rightListBox.Items)
        {
            sb.Append(item.ToString());
            sb.AppendLine();

        }

        decimal totalPrice = 0.0m;
        foreach (ListItem item in rightListBox.Items)
        {
            totalPrice += Convert.ToDecimal(item.Value);

        }

        lblSummary.Text = "Summary: " + "<br>" + sb.ToString() + "<br>" + "Total: " + " $" + totalPrice;

    }

    protected void Delete_Click(object sender, EventArgs e)
    {
        if (rightListBox.SelectedIndex == -1)
        {
            Server.Transfer("error.aspx?err_code=8");
        }

        leftListBox.Items.Add(rightListBox.SelectedItem);
        rightListBox.Items.Remove(rightListBox.SelectedItem);
        
        rightListBox.ClearSelection();
        leftListBox.ClearSelection();
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        foreach (object item in rightListBox.Items)
        {
            sb.Append(item.ToString());
            sb.Append("  ");

        }

        decimal totalPrice = 0.0m;
        foreach (ListItem item in rightListBox.Items)
        {
            totalPrice += Convert.ToDecimal(item.Value);

        }

        lblSummary.Text = "Summary: " + "<br>" + sb.ToString() + "<br>" + "Total: " + " $" + totalPrice;
    }

    protected void InventoryList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

}

  
 

