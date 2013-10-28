<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
    <div class="background">

    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [RId] = @RId" InsertCommand="INSERT INTO [Table] ([RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@RecipeName, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [RecipeName] = @RecipeName, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [RId] = @RId">
            <DeleteParameters>
                <asp:Parameter Name="RId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="RId" Type="Int32" />
                 </UpdateParameters>
        </asp:SqlDataSource>
        <div class="Homeheader">
            <br />
            <br />
            <a href="default.aspx">Home</a>
       
        <a href="Insert.aspx")>Add new recipe</a>
        <a href="AboutUs.aspx">About Us</a>
        <a href="ContactUS.aspx">Contact Us</a>
            <br />
            <br />
        </div>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" 
            runat="server" 
            AllowPaging="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="RId" 
            DataSourceID="SqlDataSource1"
            GridLines="None"
            CssClass="cssgridview" AllowSorting="True"
            
            >



            <Columns>
                <asp:BoundField DataField="RecipeName" 
                    HeaderText="RecipeName" 
                    SortExpression="RecipeName" />
                <asp:BoundField DataField="SubmittedBy" HeaderText="SubmittedBy" SortExpression="SubmittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="RId" DataNavigateUrlFormatString="RecipeDetails.aspx?RId={0}" Text="Select" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
    </div>
    </div>
    </form>
</body>
</html>
