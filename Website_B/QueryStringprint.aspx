<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="QueryStringprint.aspx.vb" Inherits="QueryStringprint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">
   <form id="form1" runat="server">
    <p>
        &nbsp;&nbsp; NAME :&nbsp;&nbsp;
        <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp; MOBILE NO :&nbsp;
        <asp:Label ID="lblmobile" runat="server" Text="Label"></asp:Label>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp; CITY&nbsp;&nbsp; :&nbsp;&nbsp;
        <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
        &nbsp;</p>
    </form>
</asp:Content>

