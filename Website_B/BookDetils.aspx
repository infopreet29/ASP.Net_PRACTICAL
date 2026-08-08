<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="BookDetils.aspx.vb" Inherits="BookDetils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">
    <form id="form1" runat="server">
<div align="left">

    

    BOOK NO :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtbookno" runat="server" BorderStyle="Solid" Width="162px"></asp:TextBox>
    <br />
    <br />
    BOOK TITLE :&nbsp;
    <asp:TextBox ID="txttitle" runat="server" BorderStyle="Solid" Width="317px"></asp:TextBox>
    <br />
    <br />
    PUBLISHER :&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtpublisher" runat="server" BorderStyle="Solid" Width="274px"></asp:TextBox>
    <br />
    <br />
    AUTHORS :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtauthors" runat="server" BorderStyle="Solid" Width="336px"></asp:TextBox>
    <br />
    <br />
    PRICE :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtprice" runat="server" BorderStyle="Solid" Width="162px"></asp:TextBox>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSave" runat="server" Text="SAVE" Width="101px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnClear" runat="server" Text="CLEAR" Width="101px" />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />

    

</div>
</form>

</asp:Content>

