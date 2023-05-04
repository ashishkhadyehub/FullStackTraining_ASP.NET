<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="QS2.aspx.cs" Inherits="Demo14April.QS2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3>Query String Example</h3>
        <label>Name :</label>
        <asp:Label runat="server" ID="lblname"></asp:Label><br />
        <label>Email :</label>
        <asp:Label runat="server" ID="lblemail"></asp:Label>
    </div>
</asp:Content>
