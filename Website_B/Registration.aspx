<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div><center><h2>REGISTRATION FORM</h2></center></div>
    <div style="margin-left:15%">
        <BR /> <br />
        <table>
            <tr>
                <td style="font-size: medium"> Full Name </td>
                <td> 
                    <asp:TextBox ID="txtfullName" runat="server" Width="322px" Font-Size="Medium"></asp:TextBox> &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtfullName" ErrorMessage="NAME CANNOT BE BLANK"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: medium"> Address </td>
                <td> 
                    <asp:TextBox ID="txtAddr" runat="server" Width="322px" Font-Size="Medium"></asp:TextBox> &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtAddr" ErrorMessage="ADDRESS CANNOT BE BLANK"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: medium"> Mobile No </td>
                <td><asp:TextBox ID="txtmobile" runat="server" Width="322px" Font-Size="Medium"></asp:TextBox> &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtmobile" ErrorMessage="MOBILE NO CANNOT BE BLANK"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" style="font-size: medium"> User Name </td>
                <td class="style1"><asp:TextBox ID="txtusername" runat="server" Width="322px" 
                        Font-Size="Medium"></asp:TextBox> &nbsp; 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ErrorMessage="User Name Cannot be blank" 
                    ControlToValidate="txtusername">
                    </asp:RequiredFieldValidator>&nbsp;<asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtusername" 
                        ErrorMessage="INALID INPUT" ForeColor="Red" 
                        ValidationExpression="\w+([-+.’]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: medium"> Password</td>
                <td><asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="322px" 
                        Font-Size="Medium"></asp:TextBox>&nbsp; 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Password Cannot be Blank" 
                    ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: medium"> Confirm Password </td>
                <td><asp:TextBox ID="txtcnfPass" runat="server" TextMode="Password" Width="322px" 
                        Font-Size="Medium"></asp:TextBox>&nbsp; 
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Password and Confirm Password are mismatched"
                    ControlToValidate="txtcnfPass" ControlToCompare="txtPass" ></asp:CompareValidator>
                 </td>
            </tr>
            <tr>
                <td style="font-size: medium"> Age </td>
                <td><asp:TextBox ID="txtage" runat="server" Width="322px" 
                        Font-Size="Medium"></asp:TextBox>&nbsp;&nbsp;
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtage" ErrorMessage="AGE SHOULD BE BETWEEN 18 TO 60" 
                        MaximumValue="60" MinimumValue="18"></asp:RangeValidator>

                </td>
            </tr>
            </table>
        <br /> <br />
                 <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" />
                 &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="RESET" />    
                <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
                <br />
            <asp:HyperLink ID="hp" runat="server" 
                NavigateUrl="~/LoginPage.aspx">Click Here to Login</asp:HyperLink>
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
