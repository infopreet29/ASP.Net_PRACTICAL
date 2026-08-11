<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="FileUpload.aspx.vb" Inherits="FileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">
    <form id="form1" runat="server">
        Upload Image :&nbsp;&nbsp;

        <asp:FileUpload ID="FileUpload1" runat="server" Width="242px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnupload" Text="Upload" runat="server" Height="33px" 
            Width="92px" />

        <asp:Image ID="imgPic" runat="server" Height="172px" Width="228px" />
        <br />
        <br />
        <br />
        <asp:FileUpload ID="FileUpload2" runat="server" />
        <br />
        <br />
        <br />
        <br />
    </form>
</asp:Content>

