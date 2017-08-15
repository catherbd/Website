using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.UI.HtmlControls;
public partial class proteinQuiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void proteinSubmitBtn_Click(object sender, EventArgs e)
    {
        CalcScores calculate = new CalcScores();
        int correctAnswer = 0;

        string answer1 = TextBox1.Text;
        string answer2 = TextBox2.Text;
        string answer3 = TextBox3.Text;
        string answer4 = TextBox4.Text;
        string answer5 = TextBox5.Text;
        if (answer1 == "transcription" || answer1 == "translation")
        {
            correctAnswer++;
        }
        if (answer2 == "translation" || answer2 == "transcription")
        {
            correctAnswer++;
        }
        if (answer3 == "dna")
        {
            correctAnswer++;
        }
        if (answer4 == "helix")
        {
            correctAnswer++;
        }
        if (answer5 == "anticodon")
        {
            correctAnswer++;
        }

        if (correctAnswer >= 4)
        {
            lblProteinResult.Text = "Congratulations! You score: " + correctAnswer.ToString() + " correctly out of 5. Your grade is: " + calculate.CalculateScore(correctAnswer) + "%" + " Please wait. You will be given a downloadable link in 5 seconds.";
            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "5;gameLink2.aspx";
            this.Page.Controls.Add(meta);

        }
        else
        {
            lblProteinResult.Text = "You score: " + correctAnswer.ToString() + "correctly out of 5. Your grade is: "
               + calculate.CalculateScore(correctAnswer) + "%" + "  Please try again.";

        }
        int score = correctAnswer;

        SqlDataSource userQuizDataSource = new SqlDataSource();
        userQuizDataSource.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        userQuizDataSource.InsertCommand = "INSERT INTO [QuizScore] ([UserId], [Score], [DateTaken]) VALUES (@UserId, @Score, @DateTaken)";
        userQuizDataSource.InsertParameters.Add("UserID", Session["UserId"].ToString());
        userQuizDataSource.InsertParameters.Add("Score", score.ToString());
        userQuizDataSource.InsertParameters.Add("DateTaken", DateTime.Now.ToString());

        userQuizDataSource.Insert();
    }
}