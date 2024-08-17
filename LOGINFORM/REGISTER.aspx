<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTER.aspx.cs" Inherits="LOGINFORM.REGISTER" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            margin:auto;
            text-align:center;
            border:2px ridge black;
            background-color:green;
        }
        .auto-style2 {
            width: 429px;
            font-style: 30px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 137px;
        }
        .auto-style5 {
            width: 137px;
            height: 39px;
        }
        .auto-style6 {
            width: 429px;
            font-style: 30px;
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td colspan="2">SIGNUP FORM</td>
                </tr>
                <tr>
                    <td class="auto-style5">FIRST NAME</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="FIRSRNAMETextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="FIRSRNAMETextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">LAST NAME</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="LASTNAMETextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="LASTNAMETextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                     <td class="auto-style4">GENDER</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" Width="200px" Height="20px">
                            <asp:ListItem Text="SELECT" Value=""></asp:ListItem>
                            <asp:ListItem Text="MALE" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="FEMALE" Value="Female"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator 
                            InitialValue="" 
                            ID="RequiredFieldValidator8" 
                            runat="server" 
                            Display="Dynamic" 
                            ErrorMessage="Please Select Gender" 
                            ForeColor="Red" 
                            SetFocusOnError="True" 
                            ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">EMAIL</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="EMAILTextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True" ControlToValidate="EMAILTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EMAILTextBox" Display="Dynamic" ErrorMessage="Please Enter Valid Email address" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">ADDRESS</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Enter  Address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ADDRESSTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr> 
                <tr>
                    <td class="auto-style4">USERNAME</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="USERNAMETextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please Username" ForeColor="Red" SetFocusOnError="True" ControlToValidate="USERNAMETextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">PASSWORD</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="PASSWORDTextBox" runat="server" TextMode="Password" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PASSWORDTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PASSWORDTextBox" Display="Dynamic" ErrorMessage="Please Enter strong Password(including Uppercase , Lowercase &amp; Special Character)" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style4">CONFIRM PASSWORD</td>

                    <td class="auto-style2">&nbsp; &nbsp;<asp:TextBox ID="CONFIRMPASSWORDTextBox" runat="server" TextMode="Password" CssClass="auto-style3" Height="20px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="CONFIRMPASSWORDTextBox">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PASSWORDTextBox" ControlToValidate="CONFIRMPASSWORDTextBox" Display="Dynamic" ErrorMessage="Password is not identical" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                        <input type="checkbox" onchange="document.getElementById('CONFIRMPASSWORDTextBox').type =this.checked ? 'text':'password'"/>
Show Password</td>

                    </td>

                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SIGNUP" ForeColor="Blue" Height="30px" Width="200px" />
                    </td>
                </tr>
                <asp:ValidationSummary runat="server" BackColor="#CC9900" Font-Size="Larger"></asp:ValidationSummary>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">  <a href="Webform1.aspx"> GO TO LOGIN FORMs</a>
                       </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
