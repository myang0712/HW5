<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUS.aspx.vb" Inherits="ContactUS" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Web Contact Form</title>
     <link rel="stylesheet" type="text/css" href="./style.css" />
</head>

<body>
    <div class="background">
        <div class="Header">
    <p>
        Wicked Easy Recipes</p>
    <p>
        Using 5 Ingredient or less!</p>
    <p>
        &nbsp;</p>
            <a href="default.aspx">Home</a>
 
    <a href="Insert.aspx">New Recipe</a>
    <a href="AboutUs.aspx">About Us</a>
    <a href="ContactUS.aspx">Contact</a>

    <br />
    <form id="form1" runat="server">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
            </div>
    </div>
   
    </form>
</body>
</html>
