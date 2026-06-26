<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Biodata.aspx.vb" Inherits="Biodata" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" 
        style="background:red; font-size: x-large; font-weight: bold;" >
    
        BIO-DATA FORM
        </div>
    <div align="center" >
        <br />
        FULL NAME :&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server" Width="299px" BorderStyle="Solid"></asp:TextBox>
        <br />
        <br />
        MOBILE NO :&nbsp;&nbsp;
        <asp:TextBox ID="txtmobile" runat="server" Width="299px" BorderStyle="Solid"></asp:TextBox>
        <br />
        <br />
        GENDER :
        <asp:RadioButton ID="rdomale" runat="server" GroupName="gender" Text="MALE" />
&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdoFemale" runat="server" GroupName="gender" 
            Text="FEMALE" />
        <br />
        <br />
        QUALIFICATION :&nbsp;
        <asp:DropDownList ID="cmbQualication" runat="server">
            <asp:ListItem>BCA</asp:ListItem>
            <asp:ListItem>BBA</asp:ListItem>
            <asp:ListItem>B.COM</asp:ListItem>
            <asp:ListItem>BA</asp:ListItem>
            <asp:ListItem>MCA</asp:ListItem>
            <asp:ListItem>MBA</asp:ListItem>
            <asp:ListItem>MCOM</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        ADDRESS :&nbsp; 
        <asp:TextBox ID="txtaddr" runat="server" Height="84px" Width="299px" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <br />
        CITY :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="cmbCity" runat="server">
          <asp:ListItem>SURAT</asp:ListItem>
            <asp:ListItem>BARODA</asp:ListItem>
            <asp:ListItem>ANAND</asp:ListItem>
            <asp:ListItem>MUMBAI</asp:ListItem>
            <asp:ListItem>NAVSARI</asp:ListItem>
            <asp:ListItem>VALSAD</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        STATE&nbsp; :&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="cmbState" runat="server">
            
        </asp:DropDownList>
        <br />
        <br />
        HOBBIES :
        <asp:CheckBox ID="chkMusic" runat="server" Text="MUSIC" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkRead" runat="server" Text="READING" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkTravel" runat="server" Text="TRAVEL" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" Width="107px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnReset" runat="server" Text="RESET" Width="107px" />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">PAGE 2</asp:LinkButton>
        <br /><br />
        ------------------------------------------------------------------------------------------------------------
      </div>
      <div align="center">
        <br />
        DATA

      
          <br />
          <br />
          <asp:Label ID="lblData" runat="server" Text="Label"></asp:Label>
          <br />

      
      </div>

    </form>
</body>
</html>
