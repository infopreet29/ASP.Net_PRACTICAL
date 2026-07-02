<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">

    <form id="form1" runat="server">
   
        <br />
        ENTER NO 1 :&nbsp;
    <asp:TextBox ID="txtno1" runat="server"></asp:TextBox>
    <br />
    <br />
    ENTER NO 2 : &nbsp;
    <asp:TextBox ID="txtno2" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
</asp:Content>