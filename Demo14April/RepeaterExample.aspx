<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterExample.aspx.cs" Inherits="Demo14April.RepeaterExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Repeater Example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
   

    
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h2 style="text-align: center">ASP Repeater Example</h2>
            </div>
            <div class="row">
                 <asp:Repeater runat="server" ID="rgallery">
                     <HeaderTemplate>
                    <h3 style="text-align:center">Current Photos</h3>
                </HeaderTemplate>
                     <ItemTemplate>
                <div class="col-md-4" style="">
                    <asp:Image runat="server" Style="width: 50%" ImageUrl='<%# Eval("ThumbPhoto") %>' />

                    <asp:Label runat="server" ID="photoid" Style="display: none" Text='<%# Eval("Srno") %>'></asp:Label>
                    <asp:LinkButton runat="server" ID="lbtndelete" OnClick="lbtndelete_Click" OnClientClick="return confirm('Do you want to delete this Photo?')" Style="background-color: orange; color: white; padding: 15px"><span class="fa fa-trash"></span> Delete</asp:LinkButton>

                </div>
                         </ItemTemplate>
                     <FooterTemplate>
                    <h3 style="text-align:center">Thank you...!</h3>
                </FooterTemplate>
                     </asp:Repeater>

            </div>
        </div>
    </form>
</body>
</html>
