﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products List.aspx.cs" Inherits="WebApplication8.Products_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .newStyle2 {
            font-family: "Comic Sans MS";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('http://localhost:54131/Images/Mixer.jpg')">
            <table>

                <tr>
                    <td>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Kitchen_online" runat="server" CssClass="newStyle2" Font-Size="X-Large" Text="KITCHEN ONLINE"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                </td>
                </tr>
                <tr>
                    <td>
                     <asp:Button ID="Home" runat="server" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" Text="Home" Width="87px" PostBackUrl="~/Home.aspx" />
                    
                    
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Brand" runat="server" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" Text="Brand" Width="87px" PostBackUrl="~/Brand.aspx" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="AddBrand" runat="server" Text="Product List"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Text="Add Product" OnClick="Button1_Click" PostBackUrl="~/Add Product.aspx" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Products" runat="server" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" Text="Products" Width="87px" PostBackUrl="~/Products List.aspx" />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                    </td>
                </tr>           

                 <tr>
                    <td>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="363px">
                            <Columns>
                                <asp:BoundField DataField="Product_Id" HeaderText="Product_Id" SortExpression="Product_Id" />
                                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                                <asp:BoundField DataField="Sales_Price" HeaderText="Sales_Price" SortExpression="Sales_Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="Brand_name" HeaderText="Brand_name" SortExpression="Brand_name" />
                                <asp:TemplateField HeaderText="Edit">
                                    <EditItemTemplate>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="False" CommandName="Edit" ImageUrl="~/Images/edit.png" Text="" />
                                    </ItemTemplate>
                                    <ControlStyle Height="12px" Width="15px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/Images/Delete.png" Text="" />
                                    </ItemTemplate>
                                    <ControlStyle Height="12px" Width="15px" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kitchen_OnlineConnectionString %>" SelectCommand="SELECT * FROM [Products]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Products] WHERE [Product_Id] = @original_Product_Id AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Sales_Price] = @original_Sales_Price) OR ([Sales_Price] IS NULL AND @original_Sales_Price IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Brand_name] = @original_Brand_name) OR ([Brand_name] IS NULL AND @original_Brand_name IS NULL))" InsertCommand="INSERT INTO [Products] ([Product_Id], [Product_Name], [Sales_Price], [Quantity], [Brand_name]) VALUES (@Product_Id, @Product_Name, @Sales_Price, @Quantity, @Brand_name)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Products] SET [Product_Name] = @Product_Name, [Sales_Price] = @Sales_Price, [Quantity] = @Quantity, [Brand_name] = @Brand_name WHERE [Product_Id] = @original_Product_Id AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Sales_Price] = @original_Sales_Price) OR ([Sales_Price] IS NULL AND @original_Sales_Price IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Brand_name] = @original_Brand_name) OR ([Brand_name] IS NULL AND @original_Brand_name IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Product_Id" Type="String" />
                                <asp:Parameter Name="original_Product_Name" Type="String" />
                                <asp:Parameter Name="original_Sales_Price" Type="String" />
                                <asp:Parameter Name="original_Quantity" Type="String" />
                                <asp:Parameter Name="original_Brand_name" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Product_Id" Type="String" />
                                <asp:Parameter Name="Product_Name" Type="String" />
                                <asp:Parameter Name="Sales_Price" Type="String" />
                                <asp:Parameter Name="Quantity" Type="String" />
                                <asp:Parameter Name="Brand_name" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Product_Name" Type="String" />
                                <asp:Parameter Name="Sales_Price" Type="String" />
                                <asp:Parameter Name="Quantity" Type="String" />
                                <asp:Parameter Name="Brand_name" Type="String" />
                                <asp:Parameter Name="original_Product_Id" Type="String" />
                                <asp:Parameter Name="original_Product_Name" Type="String" />
                                <asp:Parameter Name="original_Sales_Price" Type="String" />
                                <asp:Parameter Name="original_Quantity" Type="String" />
                                <asp:Parameter Name="original_Brand_name" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
