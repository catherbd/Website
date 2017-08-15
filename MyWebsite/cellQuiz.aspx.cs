using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class cellQuiz : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
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
        if (answer1 == "eukaryotic")
        {
            correctAnswer++;
        }
        if (answer2 == "nucleus")
        {
            correctAnswer++;
        }
        if (answer3 == "mitochondria")
        {
            correctAnswer++;
        }
        if (answer4 == "vacuole")
        {
            correctAnswer++;
        }
        if (answer5 == "chloroplast")
        {
            correctAnswer++;
        }

        if (correctAnswer >= 4)
        {
            lblCellResult.Text = "Congratulations! You score: " + correctAnswer.ToString() + " correctly out of 5. Your grade is: " + calculate.CalculateScore(correctAnswer) + "%" + " Please wait. You will be given a downloadable link in 5 seconds.";
            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "5;gameLink3.aspx";
            this.Page.Controls.Add(meta);

        }
        else
        {
            lblCellResult.Text = "You score: " + correctAnswer.ToString() + "correctly out of 5. Your grade is: "
               + calculate.CalculateScore(correctAnswer) + "%" + "  Please try again.";

        }
        int score = correctAnswer;

    }
}