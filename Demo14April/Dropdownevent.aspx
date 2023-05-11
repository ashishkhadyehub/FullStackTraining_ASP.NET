<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Dropdownevent.aspx.cs" Inherits="Demo14April.Dropdownevent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h3>OnSelectedIndexChanged Example</h3>
        <label>Select City :</label><br />
        <asp:DropDownList CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged" runat="server"  ID="ddlcity">
            <asp:ListItem Value="Select" Text="--Select--"></asp:ListItem>
            <asp:ListItem Value="Kolhapur" Text="Kolhapur"></asp:ListItem>
            <asp:ListItem Value="Pune" Text="Pune"></asp:ListItem>
            <asp:ListItem Value="Mumbai" Text="Mumbai"></asp:ListItem>
        </asp:DropDownList><br />
        <label>You have selected :</label><br />
        <asp:Label runat="server" ID="lblcity"></asp:Label>
        </div>
</asp:Content>
