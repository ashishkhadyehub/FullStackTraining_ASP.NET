<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="TextChange.aspx.cs" Inherits="Demo14April.TextChange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row jumbotron" style="margin-top:100px">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <label>Enter Employee Id :</label>
                    <asp:TextBox OnTextChanged="txtsrno_TextChanged" AutoPostBack="true"  TextMode="Number"  CssClass="form-control" runat="server" ID="txtsrno"></asp:TextBox>
                    <hr />
                    <label>Name :</label>
                    <asp:Label runat="server" ID="lblname" CssClass="badge"></asp:Label>
                    <hr />
                    <label>Designation :</label>
                    <asp:Label runat="server" ID="lbldes" CssClass="badge"></asp:Label>
                </div>
            </div>
        </div>
</asp:Content>
