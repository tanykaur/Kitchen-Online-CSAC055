<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="WebApplication8.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
             Name:       
        <asp:TextBox ID="TextBoxUserID" runat="server"></asp:TextBox>  
        <br />  
            Age:  
        <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>  
        <br />  
        <br />  
        <asp:GridView ID="GridView2" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"  
            CellPadding="3" CellSpacing="2" AutoGenerateColumns="False">  
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />  
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />  
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />  
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />  
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />  
            <SortedAscendingCellStyle BackColor="#FFF1D4" />  
            <SortedAscendingHeaderStyle BackColor="#B95C30" />  
            <SortedDescendingCellStyle BackColor="#F1E5CE" />  
            <SortedDescendingHeaderStyle BackColor="#93451F" />  
            <Columns>  
                <asp:BoundField HeaderText="Name" DataField="Name" />  
                <asp:BoundField HeaderText="Age" DataField="Age" />  
            </Columns>  
        </asp:GridView>  
        </div>
    </form>
</body>
</html>
