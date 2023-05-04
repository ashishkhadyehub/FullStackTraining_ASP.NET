<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="cookies1.aspx.cs" Inherits="Demo14April.cookies1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <h3>Cookie Example</h3>
            <label>Name :</label><br />
            <asp:TextBox runat="server" ID="txtname"></asp:TextBox><br />
              <label>Email :</label><br />
             <asp:TextBox runat="server" ID="txtmail"></asp:TextBox><br /><br />
            <asp:Button runat="server" ID="btnsubmit" OnClick="btnsubmit_Click"  Text="Go to other webform" />
        </div>
</asp:Content>
