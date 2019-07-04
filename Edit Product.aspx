<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit Product.aspx.cs" Inherits="WebApplication8.Edit_Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 891px;
        }
    
        .newStyle2 {
            font-family: "Comic Sans MS";
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>

                <tr>
                    <td class="auto-style1">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Kitchen_online" runat="server" CssClass="newStyle2" Font-Size="X-Large" Text="KITCHEN ONLINE"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
                </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                     <asp:Button ID="Home" runat="server" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" Text="Home" Width="87px" PostBackUrl="~/Home.aspx" />
                    
                    
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Brand" runat="server" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" Text="Brand" Width="87px" PostBackUrl="~/Brand.aspx" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="AddBrand" runat="server" Text="Edit Product"></asp:Label> </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Products" runat="server" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" Text="Products" Width="87px" PostBackUrl="~/Products List.aspx" />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Brandnm" runat="server" Text="Brand "></asp:Label>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Brand_Name" DataValueField="Brand_Name">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Kitchen_OnlineConnectionString %>" SelectCommand="SELECT [Brand_Name] FROM [Brand_Table]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Brandnm0" runat="server" Text="Product Name"></asp:Label>

                    &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Brandid" runat="server" Text="Product ID"></asp:Label>
                         &nbsp;&nbsp;
                         &nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Product_Id" DataValueField="Product_Id">
                         </asp:DropDownList>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Brandnm2" runat="server" Text="Available Quantity"></asp:Label>

                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Qty" DataValueField="Qty">
                         </asp:DropDownList>

                         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Kitchen_OnlineConnectionString %>" SelectCommand="SELECT * FROM [Quantity]"></asp:SqlDataSource>

                    </td>
                </tr>
                
                <tr>
                    <td>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Brandnm1" runat="server" Text="Sales Price"></asp:Label>

                    &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                    &nbsp;&nbsp;&nbsp;

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                  
                        <br />
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Text="Update" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Text="Cancel" OnClick="Button1_Click" PostBackUrl="~/Products List.aspx" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="363px">
                            <Columns>
                                <asp:BoundField DataField="Product_Id" HeaderText="Product_Id" SortExpression="Product_Id" />
                                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                                <asp:BoundField DataField="Sales_Price" HeaderText="Sales_Price" SortExpression="Sales_Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="Brand_name" HeaderText="Brand_name" SortExpression="Brand_name" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kitchen_OnlineConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>

                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
