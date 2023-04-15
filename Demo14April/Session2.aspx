<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Session2.aspx.cs" Inherits="Demo14April.Session2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="form-group">
            <h3>Welcome <asp:Label runat="server" ID="wc"></asp:Label></h3>
                    <label for="email">Name:</label>
            <asp:Label CssClass="form-control" runat="server" ID="lblName"></asp:Label>
                    
                </div>
                <div class="form-group">
                    <label for="pwd">Contact:</label>
                    <asp:Label CssClass="form-control" runat="server" ID="lblContact"></asp:Label>
                </div>
        
    </div>
</asp:Content>
