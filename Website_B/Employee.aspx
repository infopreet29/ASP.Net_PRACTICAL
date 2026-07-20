<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Employee.aspx.vb" Inherits="Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">
<form id="form1" runat="server">
<div align="left">
EMP NO :&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtempno" runat="server" BorderStyle="Solid" Width="200px"></asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnGet" runat="server" Text="GET" Width="73px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtget" runat="server" BorderStyle="Solid" Width="97px" 
        ReadOnly="True"></asp:TextBox>

    <br />
    <br />
    EMP NAME :&nbsp;&nbsp;
    <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" Width="200px"></asp:TextBox>
    <br />
    <br />
    MOBILE :&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtmobile" runat="server" BorderStyle="Solid" MaxLength="10" 
        Width="200px"></asp:TextBox>
    <br />
    <br />
    SALARY :&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtsalary" runat="server" BorderStyle="Solid" Width="200px"></asp:TextBox>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSave" runat="server" Text="SAVE" Width="106px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" Width="106px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="DELETE" Width="106px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnClear" runat="server" Text="CLEAR" Width="106px" />
    <br />
    <br />
    <br />
    <asp:GridView ID="grd" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width="320px">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <br />
    <br />


</div>

</form>
</asp:Content>

