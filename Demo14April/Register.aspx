<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Demo14April.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 50px">

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>Register Now</h2>
                <div class="form-group">
                    <label for="email">Name:</label>

                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
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
                    <asp:DropDownList CssClass="form-control" runat="server" ID="ddlCity">
                        <asp:ListItem Value="Select" Text="--Select City--"></asp:ListItem>
                        <asp:ListItem Value="KOP" Text="Kolhapur"></asp:ListItem>
                        <asp:ListItem Value="MUM" Text="Mumbai"></asp:ListItem>
                        <asp:ListItem Value="DEL" Text="DELHI"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="pwd">Set Password:</label>
                    <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="txtPassword"></asp:TextBox>
                </div>
                <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" OnClientClick="return valid()" CssClass="btn btn-primary" runat="server" Text="Register Now" />

            </div>
        </div>
    </div>
    <script>
        function valid() {
            var name = document.getElementById('<%= this.txtName.ClientID %>').value;
            var email = document.getElementById('<%= this.txtEmail.ClientID %>').value;
            var phone = document.getElementById('<%= this.txtContact.ClientID %>').value;
            var city = document.getElementById('<%= this.ddlCity.ClientID %>').value;
            mobilecon = /^\d{10}$/;
            emailcon = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

            if (name == "" || email == "" || phone == "" || city == "Select") {
                swal("Please fill all details to proceed..!", "", "warning");
                return false;
            }
            if (phone != '') {
                if (!phone.match(mobilecon)) {
                    swal("Please Enter Valid Contact Number", "", "info");
                    return false;

                }
            }
            if (email != '') {
                if (!email.match(emailcon)) {
                    swal("Please Enter Valid Email-Id", "", "info");
                    return false;
                }
            }

            return true;
        }
    </script>
</asp:Content>
