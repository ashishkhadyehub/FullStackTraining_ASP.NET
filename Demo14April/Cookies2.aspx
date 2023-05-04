<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cookies2.aspx.cs" Inherits="Demo14April.Cookies2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
            <h3>Cookie Example</h3>
            <label>Name :</label> <asp:Label runat="server" ID="lblname"></asp:Label><br />
            <label>Email :</label> <asp:Label runat="server" ID="lblemail"></asp:Label>
        </div>
</asp:Content>
