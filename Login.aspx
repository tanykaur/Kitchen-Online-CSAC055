<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication8.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Comic Sans MS";
        }
        .auto-style1 {
            font-family: "Comic Sans MS";
            font-size: medium;
        }
        .auto-style2 {
            height: 507px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url(Images/Mixer.jpg)">
        <div class="auto-style2">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="newStyle1" Font-Size="X-Large" Text="KITCHEN ONLINE"></asp:Label>
            <br />
            <br />
            </strong>
            <asp:Label ID="Label4" runat="server" Text="Username"></asp:Label>
            <strong>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </strong>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Text="Login" OnClick="Button1_Click" style="height: 26px" />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
            <strong>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" CssClass="auto-style1" Font-Bold="False" Font-Size="Large" Text="Don't have an Account?"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" PostBackUrl="~/Sign Up.aspx" Text="Sign Up" />
            </strong>
        </div>
    </form>
</body>
</html>
