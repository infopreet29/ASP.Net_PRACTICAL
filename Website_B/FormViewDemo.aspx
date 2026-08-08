<%@ Page Title="" MasterPageFile="~/MasterPage.master" Language="VB"  AutoEventWireup="false" CodeFile="FormViewDemo.aspx.vb" Inherits="FormViewDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">
    <form id="form1" runat="server">
    <div> <br /> <h3>FORM VIEW</h3> <br />
        <asp:FormView ID="FormView1" runat="server" PagerSettings-Mode="Numeric"
        AllowPaging="True" CellPadding="4" ForeColor="#333333" >
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            Emp. No : <%# eval("empno") %> 
            <br> </br>
            Emp Name : <%# Eval("ename")%> 
            <br> </br>
            Mobile No : <%# Eval("mobile")%> 
            <br> </br>
            Salary : <%# Eval("Salary")%>
        </ItemTemplate>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:FormView>
        <br />
        <br />

        <br />
        <br />
        <br />

    </div>

</form>
</asp:content>

