<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="WebApplication8.Sign_Up" %>
<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Comic Sans MS";
        }
        .auto-style1 {
            height: 292px;
        }
        .auto-style2 {
            text-align: right;
            width: 212px;
        }
        .auto-style3 {
            width: 212px;
        }
        .auto-style5 {
            text-align: right;
            width: 212px;
            height: 27px;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('Images/Mixer.jpg')">
            <table class="auto-style1">
                <tr>
                   <td class="auto-style2">
                       &nbsp;</td>
                    <td>

                     <asp:Label ID="Label1" runat="server" CssClass="newStyle1" Font-Size="X-Large" Text="KITCHEN ONLINE"></asp:Label>

                        <br />
                        <br />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td>
                            <br />
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
          </td> </tr>
            
<tr>
    <td class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
        </td>
    <td>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    <td>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
            </tr>
            <tr>
                <td class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Username"></asp:Label>
                    </td>
                <td>
                    <br />
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
                <td>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
                <tr>
                    <td class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <br />
            <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    <td>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                   

                </tr>
                <tr>
                    <td class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                    <td>

                        <br />

            <asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>

                    </td>
                    <td>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox10" ErrorMessage="*Passwords do not match" ForeColor="Red"></asp:CompareValidator>

                    </td>
                </tr>
                       <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                           <td>

                               <br />
                               <br />

                        <asp:TextBox ID="txtCaptcha" runat="server" CausesValidation="True"></asp:TextBox>

                           </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>

                        <BotDetect:WebFormsCaptcha ID="CaptchaBox" runat="server"/>

                    </td>
                </tr>           
                       <tr>
<td class="auto-style3">
    &nbsp;</td>
                           <td class="auto-style6">

                               <br>
            <asp:Label ID="Label11" runat="server"></asp:Label>
                               </br>
                               <br />
                               <br />

    <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click1" />

                           </td>

                       </tr>
            </table>
            </div>
        </form>
        </body>
    </html>
