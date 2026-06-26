<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #btnclear
        {
            width: 128px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div align="center" 
        style="background:red; font-size: x-large; font-weight: bold;" >
    
        WELCOME TO VT PODDAR COLLEGE - SEM-5</div>
        <br /> <br />
        ENTER NO 1 :&nbsp;
    <asp:TextBox ID="txtno1" runat="server"></asp:TextBox>
    <br />
    <br />
    ENTER NO 2 : &nbsp;
    <asp:TextBox ID="txtno2" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="txtthml" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSum" runat="server" Height="34px" Text="SUM" Width="99px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnminus" runat="server" Height="34px" Text="MINUS" 
        Width="99px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnmul" runat="server" Height="34px" Text="MULTIPLY" 
        Width="99px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnClear" runat="server" Height="34px" Text="CLEAR" Width="99px" />
    <br />
    <br />
    <br />
    RESULT :&nbsp;

    <asp:TextBox ID="txtresult" runat="server"></asp:TextBox>

    </form>
</body>
</html>
