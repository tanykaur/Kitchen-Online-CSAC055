<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication8.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-size: small;
        }
        .newStyle2 {
            font-family: "Comic Sans MS";
        }
        .auto-style1 {
            height: 710px;
        }
        .auto-style2 {
            width: 414px;
        }
        .auto-style3 {
            width: 414px;
            text-align: right;
        }
        .auto-style4 {
            text-align: right;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #C0C0C0; background-image: url('Images/Mixer.jpg');" class="auto-style1" >
            <table>
                <tr>
            <td class="auto-style3">
            
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
           
            <asp:Label ID="Label1" runat="server" CssClass="newStyle2" Font-Size="X-Large" Text="KITCHEN ONLINE"></asp:Label>
                   
            </td>
            <td class="auto-style4">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
                </td>
                    </tr>
                <tr>
                    <td class="auto-style2">
                                    
                        <asp:Button ID="Button1" runat="server" Text="Home" BorderColor="Black" BorderStyle="None" Font-Bold="True" Width="79px" PostBackUrl="~/Home.aspx" />
                                    
                   </td> 
                    <td>

                        <asp:Button ID="Button4" runat="server" Text="Add Brand" BorderColor="Black" BorderStyle="None" Font-Bold="True" Width="104px" OnClick="Button4_Click" PostBackUrl="~/Add Brand.aspx" />
                                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:Button ID="Button5" runat="server" Text="Add Product" BorderColor="Black" BorderStyle="None" Font-Bold="True" Width="102px" PostBackUrl="~/Add Product.aspx" />
                                    
                    </td>
                </tr>
            <tr>
                <td class="auto-style2">
                                    
                        <asp:Button ID="Button2" runat="server" Text="Brand" BorderColor="Black" BorderStyle="None" Font-Bold="True" Width="79px" PostBackUrl="~/Brand.aspx" />
                                    
            </td>
               
            </tr>
            <tr>
                <td class="auto-style2">
           
                        <asp:Button ID="Button3" runat="server" Text="Products" BorderColor="Black" BorderStyle="None" Font-Bold="True" PostBackUrl="~/Products List.aspx" />
                                    
                        <br />
                        <br />
                        <br />
                                    
                </td></tr>
               
                <tr>
                    <td class="auto-style2">
                    
            
                    
            <asp:GridView ID ="Brand" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Right">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField Datafield="Brand_Name" HeaderText="Brand_Name" />
                    <asp:BoundField Datafield="No_of_Products" HeaderText="No_of_Products" />
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
                        </td>
                    <td>
               <asp:GridView ID ="Product" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField Datafield="Brand_Name" HeaderText="Brand_Name" />
                    <asp:BoundField Datafield="Product_Name" HeaderText="Product_Name" />
                    <asp:BoundField Datafield="Quantity" HeaderText="Quantity" />
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
            
               </td>

                </tr>

            </table>
            
        </div>
    </form>
</body>
</html>
