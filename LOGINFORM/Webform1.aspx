<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LOGINFORM.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 400px;
            text-align:center;
        }
        table{
            margin:auto;
            width:300px;
            border:2px black ridge;
        }
        .auto-style3 {
            width: 151px;
            border:150px;
        }
        .auto-style4 {
            width: 352px;
        }
        .auto-style5 {
            border-style: none;
            border-color: inherit;
            border-width: 150px;
        }
        .link{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td colspan="2">LOGIN</td>
                </tr>
                <tr>
                    <td class="auto-style3">USERNAME</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="USERTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="USERTextBox" Display="Dynamic" ErrorMessage="Please Enter User Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">PASSWORD</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="PassTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="LOGINButton" runat="server" Text="LOGIN" OnClick="LOGINButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="link" colspan="2">
                        <a href="REGISTER.aspx">Not Registered yet? Click here</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
