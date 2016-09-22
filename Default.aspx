<!--This is the homepage for my website. It uses a separate CSS page for its design and a animate library to create animations-->
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Website</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/> <!--To use an animate library-->
    <link type="text/css" rel="stylesheet" href="StyleSheet.css" />  <!--To use the CSS page-->
</head>
<body>
    <form id="form1" runat="server">
    <div>     
            <header>
                <h1 class="animated fadeInDown">Catherine's Website</h1>
                <p class="animated fadeInLeftBig">Welcome to my Website on <%: DateTime.Now.ToString() %></p>           
            </header>
        
<!--Top Navigation bar. Clicking on the home tab will refresh the homepage-->
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
            <img class="animated slideInDown" style="height: 100%; width: 100%; object-fit: contain" src="banner.png" alt="logo" />             
        </div>
    
    </div>   
         <div id="sidenav">  <!--Side navigation bar--->          
            <ul>
                <li><a href="#">Biology Information</a></li>
                <li><a href="#">Take a Test/Quiz</a></li>
                <li><a href="#">Interactive Games</a></li>
                <li><a href="#">Worksheets</a></li>
                <li><a href="#">Videos</a></li>
            </ul>
         </div> 
            <!--The main content-->
            <div id="content">                
                <h2>Introduction</h2>
                <p>
                    Biology is the study of life and living organisms, from the smallest bacteria to giant sequoias. Biologists use observation and experimentation to gain an understanding about the natural world. Branches of biology include anatomy, biotechnology, botany, cell biology, ecology, genetics, medicine, microbiology, molecular biology, and zoology. Many people entering the field of biology become specialized in a particular area.
                </p>
                <p>
                    The website is a resource site for science teachers and students who wants to learn more in biology. It contains a variety of lessons, quizzes/tests, interactive games, worksheets, and information on science topics for all levels. You can find lessons related to biology topics in the links listed on the sidebar.
                </p>   
                
                    <p><img style="float:left;clear:left;" src="dna.gif" alt="animated dna gif"/> </p>      
                    <p>Three important topics in biology are covered in the website.  Students will learn interesting information about DNA such as how DNA replicates as see in the picture to the left.  In addition, this website also contain information about protein syntesis. The last topic is about the     basic animal cells and plant cells structures. 
                    </p> 
            </div>
    <!--The footer at the botom of the page with the copyright-->
            <div id="footer">
                <p>
                   @2016 Catherine Do ASP.NET Application
                </p>
            </div>          
    </form>  
</body>
</html>




