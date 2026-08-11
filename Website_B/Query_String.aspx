<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Query_String.aspx.vb" Inherits="Query_String" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">

    <form id="form1" runat="server">
&nbsp;&nbsp; ENTER YOUR NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtName" runat="server" BorderStyle="Solid" Width="182px"></asp:TextBox>
<br />
&nbsp;&nbsp; ENTER YOU MBILE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtmobile" runat="server" BorderStyle="Solid" Width="180px"></asp:TextBox>
<br />
&nbsp;&nbsp; ENTER YOUR CITY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtCity" runat="server" BorderStyle="Solid" Width="179px"></asp:TextBox>

<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnNextPage_QS" runat="server" Text="Next Page Response Object" 
    Width="210px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnServerTrans" runat="server" Text="Next Page Server Transfer" 
    Width="210px" />
</form>

</asp:Content>

