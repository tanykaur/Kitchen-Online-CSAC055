<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication8.Home" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <style type="text/css">
        .newStyle1 {
            font-size: small;
        }
        .newStyle2 {
            font-family: "Comic Sans MS";
        }
        .auto-style1 {
            height: 539px;
        }
        .auto-style3 {
            width: 269px;
            text-align: left;
            height: 42px;
        }
        .auto-style4 {
            text-align: right;
            width: 289px;
            height: 42px;
        }
        .auto-style5 {
            width: 86px;
            height: 236px;
            overflow: scroll;
        }
        .auto-style6 {
            height: 236px;
            width: 269px;
        }
        .auto-style7 {
            height: 432px;
        }
        .auto-style8 {
            width: 86px;
            height: 42px;
        }
        .auto-style9 {
            width: 269px;
            height: 23px;
        }
        .auto-style10 {
            width: 289px;
            height: 23px;
        }
        .auto-style11 {
            width: 86px;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 86px;
            height: 22px;
        }
        .auto-style14 {
            height: 42px;
        }
        .auto-style15 {
            height: 236px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #C0C0C0; background-image: url('Images/Mixer.jpg');" class="auto-style1" >
            
            <table class="auto-style7">
                <tr>
                    <td class="auto-style8">

                    </td>
            <td class="auto-style3">         
            <asp:Label ID="Label1" runat="server" CssClass="newStyle2" Font-Size="X-Large" Text="KITCHEN ONLINE"></asp:Label>                 
            </td>
                    <td class="auto-style14">

                    </td>
                    <td class="auto-style14">

                    </td>
            <td class="auto-style4">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                </td>
                    </tr>
                <tr>
                    <td class="auto-style11">
                                    
                        <asp:Button ID="Button1" runat="server" Text="Home" BorderColor="Black" BorderStyle="None" Font-Bold="True" Width="79px" PostBackUrl="~/Home.aspx" />
                                    
                   </td> 
                    <td class="auto-style9">

                    </td>
                    <td class="auto-style12">

                        <asp:Button ID="Button4" runat="server" Text="Add Brand" BorderColor="Black" BorderStyle="None" Font-Bold="True" Width="104px" OnClick="Button4_Click" PostBackUrl="~/Add Brand.aspx" />
                            </td>
                    <td class="auto-style12">

                    </td><td class="auto-style10">        
                        <asp:Button ID="Button5" runat="server" Text="Add Product" BorderColor="Black" BorderStyle="None" Font-Bold="True" Width="102px" PostBackUrl="~/Add Product.aspx" OnClick="Button5_Click" />
                                    
                    </td>
                </tr>
            <tr>
                <td class="auto-style11">
                                    
                        <asp:Button ID="Button2" runat="server" Text="Brand" BorderColor="Black" BorderStyle="None" Font-Bold="True" Width="79px" PostBackUrl="~/Brand.aspx" />
                                    
            </td>
               
            </tr>
            <tr>
                <td class="auto-style13">
           
                        <asp:Button ID="Button3" runat="server" Text="Products" BorderColor="Black" BorderStyle="None" Font-Bold="True" PostBackUrl="~/Products List.aspx" />                                   
                </td></tr>
               
                <tr>
                    <td class="auto-style15">

                    </td>
                    <td>
                    
            
                    
            <asp:GridView ID ="Brand" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Right" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField Datafield="Brand_Name" HeaderText="Brand_Name"/>
                    <asp:BoundField Datafield="Available_Qty" HeaderText="Available_Qty"/>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />


            </asp:GridView>
                        </td><td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kitchen_OnlineConnectionString %>" SelectCommand="SELECT [Brand_Name], [Available_Qty] FROM [Brand_Table]"></asp:SqlDataSource>
                        </td>
                    <td class="auto-style6">
               <asp:GridView ID ="Product" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataSourceID="SqlDataSource2" DataKeyNames="Product_Id">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField Datafield="Product_Id" HeaderText="Product_Id" SortExpression="Product_Id" ReadOnly="True" />
                    <asp:BoundField Datafield="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                    <asp:BoundField DataField="Brand_Name" HeaderText="Brand_Name" SortExpression="Brand_Name" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />

            </asp:GridView>           
            
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Kitchen_OnlineConnectionString %>" SelectCommand="SELECT [Product_Id], [Product_Name], [Brand_Name] FROM [Products]"></asp:SqlDataSource>
            
               </td>

                </tr>

            </table>
            
        </div>
    </form>
</body>
</html>
