<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Product.aspx.cs" Inherits="WebApplication8.Add_Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .newStyle2 {
            font-family: "Comic Sans MS";
        }
        .auto-style2 {
            width: 259px;
        }
        .auto-style3 {
            width: 187px;
        }
        .auto-style4 {
            width: 108px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 128px;
        }
        .auto-style7 {
            width: 128px;
            text-align: center;
        }
        .auto-style8 {
            width: 612px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            width: 101px;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style12 {
            width: 108px;
        }
        .auto-style13 {
            width: 128px;
        }
        .auto-style14 {
            width: 195px;
        }
        .auto-style15 {
            width: 174px;
        }
        .auto-style16 {
            width: 101px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('Images/Mixer.jpg')">
            <table>

                <tr>
                    <td class="auto-style3">

                    </td>
                    
                    <td class="auto-style8">

                     <asp:Label ID="Kitchen_online" runat="server" CssClass="newStyle2" Font-Size="X-Large" Text="KITCHEN ONLINE"></asp:Label>

                    </td>
                    <td class="auto-style10">   <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                </td>
                </tr>
                </table>
                <table>
                <tr>
                    <td class="auto-style12">
                     <asp:Button ID="Home" runat="server" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" Text="Home" Width="87px" PostBackUrl="~/Home.aspx" />
                    
                    
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Brand" runat="server" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" Text="Brand" Width="87px" PostBackUrl="~/Brand.aspx" />
                    </td>
                    <td class="auto-style5">   <asp:Label ID="AddBrand" runat="server" Text="Add Product"></asp:Label> </td>
                 </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="Products" runat="server" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" Text="Products" Width="87px" PostBackUrl="~/Products List.aspx" />
                        </td>
                    <td class="auto-style7">

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:Label ID="Brandid" runat="server" Text="Product ID"></asp:Label>

                    </td>
                    <td class="auto-style14">

                         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                    </td>
                    
                    <td class="auto-style9">
                        <asp:Label ID="Brandnm0" runat="server" Text="Product Name"></asp:Label>
                       </td>
                    <td class="auto-style15"> 

                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                        </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                         </td>
                    <td class="auto-style7">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Brandnm1" runat="server" Text="Sales Price"></asp:Label>
                       </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                    </td>
                    <td class="auto-style9">

                        <asp:Label ID="Brandid0" runat="server" Text="Brand Name"></asp:Label>

                    </td>
                    <td class="auto-style15">

                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Brand_Name" DataValueField="Brand_Name">
                        </asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Kitchen_OnlineConnectionString %>" SelectCommand="SELECT [Brand_Name] FROM [Brand_Table]"></asp:SqlDataSource>

                    </td>
                    
                </tr>
                
                <tr>
                    <td class="auto-style12">

                    </td>
                    <td class="auto-style7">

                        <asp:Label ID="Brandnm2" runat="server" Text="Available Quantity"></asp:Label>
                        </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                <tr>
                    <td class="auto-style12">

                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">

                    </td>
                    <td class="auto-style13">

                    </td>
                    <td class="auto-style14">

                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button1" runat="server" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Text="Add" OnClick="Button1_Click" style="height: 26px" />
                    </td>
                   
                </tr>
                </table>
               <table>
               <tr>
                    <td class="auto-style2">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="363px">
                            <Columns>
                                <asp:BoundField DataField="Product_Id" HeaderText="Product_Id" SortExpression="Product_Id" />
                                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                                <asp:BoundField DataField="Sales_Price" HeaderText="Sales_Price" SortExpression="Sales_Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="Brand_name" HeaderText="Brand_name" SortExpression="Brand_name" />
                                <asp:TemplateField HeaderText="Edit" SortExpression="Product_Id">
                                    <EditItemTemplate>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Edit" ImageUrl="~/Images/edit.png" OnClick="ImageButton1_Click" Text="" />
                                    </ItemTemplate>
                                    <ControlStyle Height="12px" Width="15px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/Images/Delete.png" Text="" />
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
