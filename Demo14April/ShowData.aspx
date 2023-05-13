<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ShowData.aspx.cs" Inherits="Demo14April.ShowData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:50px">
        <div class="row">
            <div class="form-group">
                <h4>Name :</h4><br />
                <asp:Label runat="server" CssClass="badge badge-success" Text="Test" ID="lblName"></asp:Label>
            </div>
            <div class="form-group">
                <h4>Contact :</h4><br />
                <asp:Label runat="server" CssClass="badge badge-success"  ID="lblContact"></asp:Label>
            </div>
            <div class="form-group">
                <h4>Email :</h4><br />
                <asp:Label runat="server" CssClass="badge badge-success"  ID="lblEmail"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
