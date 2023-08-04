<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="LiteralExample.aspx.cs" Inherits="Demo14April.LiteralExample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css" />
    <link href="assets/css/fluid-gallery.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <div class="container gallery-container">
            
               <h2 style="text-align: center">ASP Literal Example</h2>
                <div class="tz-gallery" style="padding:0">
            
                    <div class="row">
            
                        
                        <div class='col-sm-12 col-md-4'>
                <a class='lightbox' href="assets/images/dotnet5_platform.jpg">
                    <img src="assets/images/dotnet5_platform.jpg" style="width:100%" />
                </a>
              </div>
                        
                    </div>
            
                </div>
            
            </div>


    <script> src = "https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js" ></script>
    <script>
            baguetteBox.run('.tz-gallery');
    </script>
</asp:Content>
