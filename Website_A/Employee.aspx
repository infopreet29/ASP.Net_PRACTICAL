<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Employee.aspx.vb" Inherits="Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">
<form id="form1" runat="server">
<div>
Emp Code :&nbsp;
        <asp:TextBox ID="txtEno" runat="server" Width="158px" 
            AutoCompleteType="Disabled" BorderStyle="Solid"></asp:TextBox>
        <br />
    <br />
    Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server" Width="256px" 
            AutoCompleteType="Disabled" BorderStyle="Solid"></asp:TextBox>
        <br />
    <br />
    Mobile No :
        <asp:TextBox ID="txtmobile" runat="server" Width="158px" 
            AutoCompleteType="Disabled" BorderStyle="Solid" MaxLength="10"></asp:TextBox>
        <br />
    <br />
    Salary :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtsalary" runat="server" Width="158px" 
            AutoCompleteType="Disabled" BorderStyle="Solid"></asp:TextBox>
        <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSave" runat="server" Text="SAVE" Width="72px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" Width="72px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="DELETE" Width="72px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnClear" runat="server" Text="CLEAR" Width="72px" />

</div>


</form>
</asp:Content>

