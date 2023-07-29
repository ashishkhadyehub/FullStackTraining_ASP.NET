<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="gvexample.aspx.cs" Inherits="Demo14April.gvexample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 50px">
        <div class="row">
            <h3>Data Control- ASP.NET Gridview</h3>
        </div>
        <div class="row">
            <asp:GridView ID="gvdata" OnRowEditing="gvdata_RowEditing" OnRowDeleting="gvdata_RowDeleting" OnRowCancelingEdit="gvdata_RowCancelingEdit" OnRowUpdating="gvdata_RowUpdating" AutoGenerateColumns="false" DataKeyNames="Srno" CssClass="table table-striped" runat="server" EmptyDataText="No data found">
                <Columns>
                    <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtemail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblContact" runat="server" Text='<%# Eval("Contact") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcontact" runat="server" Text='<%# Eval("Contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:CommandField ControlStyle-CssClass="btn btn-primary" ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
            ItemStyle-Width="300" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
