<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Session1.aspx.cs" Inherits="Demo14April.Session1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-group">
            
                    <label for="email">Name:</label>

                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="pwd">Contact:</label>
                    <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="txtContact"></asp:TextBox>
                </div>
        <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" runat="server" Text="Review and Confirm" />
    </div>
</asp:Content>
