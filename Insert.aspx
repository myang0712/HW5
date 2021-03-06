﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Insert.aspx.vb" Inherits="Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
    <div class="background">

    <p>

        <br />
    </p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [RId] = @RId" InsertCommand="INSERT INTO [Table] ([RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@RecipeName, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Table] WHERE ([RId] = @RId)" UpdateCommand="UPDATE [Table] SET [RecipeName] = @RecipeName, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [RId] = @RId">
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
                <SelectParameters>
                    <asp:QueryStringParameter Name="RId" QueryStringField="RId" Type="Int32" />
                </SelectParameters>
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
            <div class="Header">
                Wicked Easy Recipes<br />
                Using 5 Ingredients or less!<br />
        </div>
            <div class="Homeheader">
                <br />
                <a href="default.aspx">Home</a>
       
            <a href="Insert.aspx">New Recipes</a>
            <a href="AboutUs.aspx">About Us</a>
            <a href="ContactUS.aspx">Contacts</a>
                <br />
            </div>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="RId" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="262px">
                <Fields>
                    <asp:BoundField DataField="RecipeName" HeaderText="RecipeName" SortExpression="RecipeName" />
                    <asp:BoundField DataField="SubmittedBy" HeaderText="SubmittedBy" SortExpression="SubmittedBy" />
                    <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient1" SortExpression="Ingredient1" />
                    <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient2" SortExpression="Ingredient2" />
                    <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient3" SortExpression="Ingredient3" />
                    <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient4" SortExpression="Ingredient4" />
                    <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient5" SortExpression="Ingredient5" />
                    <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                
                </Fields>
            </asp:DetailsView>
        </p>
    <div>
    
    </div>
</div>
  
    </form>
</body>
</html>
