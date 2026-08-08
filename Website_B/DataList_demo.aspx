<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="DataList_demo.aspx.vb" Inherits="DataList_demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">
    <body>
    <form id="form1" runat="server">
    <div>
        <br />
        <H3>DATALIST CONTROL</H3>
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
            RepeatColumns="3" RepeatDirection="Vertical">
            <AlternatingItemStyle BackColor="Pink" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            Emp No : <asp:Label runat="server" Text=<%# eval("empno") %> /> <br />
            Name : <asp:Label runat ="server" Text=<%# eval("ename") %> /> <br />
            Mobile No : <asp:Label runat="server" Text=<%# eval("mobile") %> /> <br />
            Salary : <asp:Label runat="server" Text=<%# eval("Salary") %> />
            <br /> <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>

        <br />
        <br />
 
    </div>
    </form>
</body>
</asp:Content>