<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddPRoduct.aspx.cs" Inherits="Interview_project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    
    
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script>
  function changeColor(source, args)
        {
     
            var txtuser = document.getElementById('<%= product_name.ClientID %>');
            if(args.Value.length == 0)
            {
                txtuser.style.border="red solid 1px";
                args.IsValid = false;
            }
            else
            {
                txtuser.style.background = 'white';
                args.IsValid = true;
            }
        }
    </script>
    <style>
        #Button1
        {
            margin:10px;
            border-radius:5px;
            color: white;
            background-color:blue;
        }
        .Button1:hover{
            background-color: #df2dfd;   
            
        }
        #Label3 
        {
           
                  }
    </style>
     <br />
    <br />
    
    <br />
     <br />
    <br />
    
    <br />
    <asp:Label ID="Label3" runat="server" Text="Add Product" style=" font-size:xx-large;  color:black; "></asp:Label>
    <br />
    <br />
    
    <br />
     <asp:Label ID="Label1" runat="server" style="color:black; background-color:red; font-size:x-large; margin-left:250px;"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container"style="align-content:center">
         <div class="row">
         <div class="col-lg-2 .col-sm-6">
             
             
              <br />
             <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label><br />
           
             <asp:TextBox ID="product_name" runat="server" placeholder="Product Name" BorderColor="Black" style="border-color:black;padding:2px;margin:2px;"></asp:TextBox>
            <asp:Label ID="name" runat="server" Text="*" ForeColor="Red"></asp:Label>

             </div>
        <br />
             
             <div class="col-lg-8 .col-sm-7">
             <br />
              &nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblDescriprion" runat="server" Text="Price"></asp:Label><br />
             &nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="Product_Price" runat="server" placeholder="Eg. 123.12"  style="border-color:black;padding:2px;margin:2px;"></asp:TextBox>

                 <asp:Label ID="price" runat="server" Text="*" ForeColor="Red"></asp:Label>

             </div>
         
         <div class="col-lg-12>
              <asp:Label ID="lblprice" runat="server" Text="Description" style="margin-left:20px;"></asp:Label><br />
             <asp:TextBox ID="Product_Descriprion" runat="server" placeholder="Product Price" TextMode="MultiLine" style="border-color:black;padding:2px;margin:2px;" Height="84px" BorderColor="" Width="193px"></asp:TextBox>
         </div>
             
             <div class="col-12">
                          <asp:Button ID="Button2" runat="server" Text="Save" style="padding:5px;margin:2px; background-color:blue;border-radius:5px;color:white;" OnClick="Savebtn"/>
             </div>
                
         </div>
         </div>     
                  <asp:Label ID="saved" runat="server" Text=" " style="margin-left:20px;"></asp:Label><br />


</asp:Content>
