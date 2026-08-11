<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewState_Demo.aspx.vb" Inherits="ViewState_Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" Runat="Server">

   <form id="form1" runat="server">
    <p>
        &nbsp;ENTER NAME :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" Width="192px"></asp:TextBox>
        &nbsp;</p>
    <p>
        &nbsp;ENTER MOBILE NO :
        <asp:TextBox ID="txtmobile" EnableViewState="false" runat="server" BorderStyle="Solid" Width="193px" ></asp:TextBox>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnStoreData" runat="server" Text="STORE DATA IN VIEW STATE" 
            Width="271px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnviewstate" runat="server" Text="DISPLAY DATA FROM VIEW STATE" 
            Width="305px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCookies" runat="server" Text="SET COOKIES" 
            Width="129px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDeleteCookies" runat="server" Text="DELETE COOKIES" 
            Width="174px" style="height: 29px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="btnsetHdnValue" runat="server" Text="STORE DATA IN HIDDEN FIELD" 
            Width="271px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnShowHdnValue" runat="server" Text="SHOW DATA FROM HIDDEN FIELD" 
            Width="305px" />
        </p>
    <p>
        <asp:HiddenField ID="hdn1" runat="server" />
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;<asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
       &nbsp;&nbsp;&nbsp; <asp:Label ID="lblmobile" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    </form>
</asp:Content>

