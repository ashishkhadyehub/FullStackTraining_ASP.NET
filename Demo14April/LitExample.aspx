<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LitExample.aspx.cs" Inherits="Demo14April.LitExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css" />
   
    <link href="assets/css/fluid-gallery.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container gallery-container">

                <h2 style="text-align: center">ASP Literal Example</h2>
                <div class="tz-gallery" style="padding: 0">

                    <div class="row">

                        <asp:Literal runat="server" ID="lgallery"></asp:Literal>
                        <%--<div class='col-sm-12 col-md-4'><a class='lightbox' href=''><img src='' style="width: 100%" /></a></div>--%>

                    </div>

                </div>

            </div>
        </div>
    </form>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js" ></script>
<script>
        baguetteBox.run('.tz-gallery');
</script>
</html>
