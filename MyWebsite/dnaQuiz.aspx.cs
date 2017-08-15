using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Configuration;

public partial class dnaQuiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
    {

    }

    protected void dnaSubmitBtn_Click(object sender, EventArgs e)
    {
        CalcScores calculate = new CalcScores();
        int correctAnswer = 0;
 
        string answer1 = TextBox1.Text;
        string answer2 = TextBox2.Text;
        string answer3 = TextBox3.Text;
        string answer4 = TextBox4.Text;
        string answer5 = TextBox5.Text;
        if (answer1 == "replication")
        {
            correctAnswer++;
        }
        if (answer2 == "cytosine")
        {
            correctAnswer++;
        }
        if (answer3 == "adenine")
        {
            correctAnswer++;
        }
        if (answer4 == "helicase")
        {
            correctAnswer++;
        }
        if (answer5 == "ligase")
        {
            correctAnswer++;
        }

           if (correctAnswer >= 4)
        {
            lblResult.Text = "Congratulations! You score: " + correctAnswer.ToString() + " correctly out of 5. Your grade is: " + calculate.CalculateScore(correctAnswer) + "% Please wait. You will be given a downloadable link in 5 seconds.";
            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "5;gameLink1.aspx";
            this.Page.Controls.Add(meta);
            
        }
        else
        {
            lblResult.Text = "You score: " + correctAnswer.ToString() + "correctly out of 5. Your grade is: "
               + calculate.CalculateScore(correctAnswer) + "%" + "  Please try again.";

        }
        

    }
}