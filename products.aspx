<%@ Page Language="C#" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
     <link type="text/css" rel="stylesheet" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>    
      <header>
    <h1>Products Page</h1>
                <p> <%: DateTime.Now.ToString() %></p>
        </header>  
         <div id="nav">
                <ul>
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="products.aspx">Products</a></li> 
                    <li><a href="login.aspx">Log-in</a></li>    
                    <li><a href="about.aspx">About Us</a></li>         
                    <li><a href="contacts.aspx">Contact Us</a></li>                 
                </ul>                
            </div>        
    </div>
    </form>
</body>
</html>
