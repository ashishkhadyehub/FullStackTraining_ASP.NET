<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="aspvalidatorsexample.aspx.cs" Inherits="Demo14April.aspvalidatorsexample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:50px">
    <div class="form-group">
        <label for="txtname">Name:</label>
        <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>


    </div>
    <div class="form-group">
        <label for="txtpassword1">Password:</label>
        <asp:TextBox ID="txtpassword1" runat="server" CssClass="form-control"></asp:TextBox>


    </div>
    <div class="form-group">
        <label for="txtpassword2">Confirm Password:</label>
        <asp:TextBox ID="txtpassword2" runat="server" CssClass="form-control"></asp:TextBox>


    </div>
    <div class="form-group">
        <label for="txtage">Age:</label>
        <asp:TextBox ID="txtage" runat="server" CssClass="form-control"></asp:TextBox>


    </div>
    <div class="form-group">
        <label for="txtemail">Email:</label>
        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>


    </div>
    <div class="form-group">
        <label for="txtusername">Username:</label>
        <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>


    </div>
    <asp:Button ID="btnsubmit" runat="server" CssClass="btn btn-primary" Text="Submit" />
    <div>
        <div>
        </div>
    </div>

    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Please Enter Name"
        ControlToValidate="txtname"></asp:RequiredFieldValidator><br />

    <asp:CompareValidator ForeColor="Red" ID="CompareValidator1" runat="server" ErrorMessage="Password Not Matches"
        ControlToValidate="txtpassword1" ControlToCompare="txtpassword2"></asp:CompareValidator><br />


    <asp:RangeValidator ForeColor="Red" ID="RangeValidator1" runat="server" ErrorMessage="Please enter age between 18-100"
        ControlToValidate="txtage" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator><br />


    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator1" runat="server"
        ErrorMessage="Please Enter Valid email-id" ControlToValidate="txtemail"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />

    <asp:CustomValidator ForeColor="Red" ID="CustomValidator1" runat="server" OnServerValidate="UserCustomValidate"
        ControlToValidate="txtusername" ErrorMessage="User ID should have atleast a capital, small and digit and should be greater than 5 and less than 26 letters" SetFocusOnError="True"></asp:CustomValidator>
    <hr />

    <asp:ValidationSummary ForeColor="Red" ID="ValidationSummary1" runat="server" />
</div>
</asp:Content>
