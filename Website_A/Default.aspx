<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">
    <form id="form1" runat="server">
    <div align="center" style="background-color:RED">
        <h4>
        SIMPLE CALC
        </h1>
        </div>

    <br />
    <div>
    
        
        ENTER NO 1 :
        <asp:TextBox ID="txtno1" runat="server" Width="158px" 
            AutoCompleteType="Disabled"></asp:TextBox>
        <br />
        
        <br />
        ENTER NO 2:&nbsp;
        <asp:TextBox ID="txtno2" runat="server" Width="158px"></asp:TextBox> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="text" id="txtno3" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="SUM" Width="88px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="MINUS" Width="88px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="MUMTIPLY" Width="88px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button2" runat="server" Text="CLEAR" Width="88px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        RESULT :&nbsp;&nbsp;
        <asp:TextBox ID="txtresult" runat="server"></asp:TextBox>
    
        
    </div>
    </form>
</asp:content>
