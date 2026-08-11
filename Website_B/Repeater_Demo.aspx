<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Repeater_Demo.aspx.vb" MasterPageFile="~/MasterPage.master" Inherits="Repeater_Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">

    <form id="form1" runat="server">
    <div>
        Repeaters Control<br />
        <br />
        <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table border="2">
                <tr>
                    <th>Emp No.</th>
                    <th>Name</th>
                    <th>Mobile No</th>
                    <th>Salary</th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr bgcolor="aqua">
                <td> <%# Eval("empno")%> </td>
                <td> <%# Eval("Ename")%> </td>
                <td> <%# Eval("Mobile")%> </td>
                <td> <%# Eval("salary")%> </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr bgcolor="Pink">
                <td> <%# Eval("empno")%> </td>
                <td> <%# Eval("Ename")%> </td>
                <td> <%# Eval("Mobile")%> </td>
                <td> <%# Eval("salary")%> </td>                
            </tr>
        </AlternatingItemTemplate>
        <FooterTemplate>
            <tr >
                <td colspan="4" align="center">
                <%# (repeater1.datasource).rows.count %> Records
                </td>
            </tr>
        </FooterTemplate>
        </asp:Repeater>
    
        <br />
        <asp:Button ID="btnreload" runat="server" Height="35px" Text="RELOAD" 
            Width="94px" />
    
        <br />
        <br />

    
    </div>
    </form>
</asp:Content>
