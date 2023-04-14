<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Demo14April.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" /><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 70px">

            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <h2>Register Now</h2>
                    <div class="form-group">
                        <label for="email">Name:</label>
                       
                        <asp:TextBox ID="txtName"   CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Contact:</label>
                        <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="txtContact"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Email:</label>
                        <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="txtEmail"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="pwd">City:</label>
                        <asp:DropDownList  CssClass="form-control" runat="server" ID="ddlCity">
                            <asp:ListItem Value="KOP" Text="Kolhapur"></asp:ListItem>
                            <asp:ListItem Value="MUM" Text="Mumbai"></asp:ListItem>
                            <asp:ListItem Value="DEL" Text="DELHI"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Set Password:</label>
                        <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="txtPassword"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Register Now" />

                </div>
            </div>
        </div>
    </form>
</body>
</html>
