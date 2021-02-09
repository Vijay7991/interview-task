<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Interview_Task.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
html {
  font-family: "Lucida Sans", sans-serif;
}

@media only screen and (min-width: 768px) 
  {
      
  }
Button1
{
    background-color: cornflowerblue;
}
#Button1.hover
{
    background-color: #df2dfd;
    
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3>Add Product</h3>
    <br />

    <div class="row">
  <div class="col-3 col-s-3 menu" id="name">
      &nbsp;&nbsp;
      <label>Name*</label><br />
      &nbsp;
      <asp:TextBox ID="txtname" runat="server"  BorderStyle="Solid" BorderColor="Black" Placeholder="Pruduct name"  OnTextChanged="txtname_TextChanged" ></asp:TextBox>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Error" ControlToValidate="txtname" ></asp:RequiredFieldValidator>

  </div>

  <div class="col-6 col-s-9">
     
        &nbsp;&nbsp;
     
        <label>Price*</label><br />
      &nbsp;
      <asp:TextBox ID="txtprod" runat="server"  BorderStyle="Solid" BorderColor="Black" Placeholder="Pruduct price" ></asp:TextBox>
      
     
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter valid price’" ForeColor="Red" ControlToValidate="txtprod"></asp:RequiredFieldValidator>

        </div>
        </div>
    <div class="row">
    <div class=" " >
        <div>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label>Description</label><br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="txtdisc" runat="server" BorderStyle="Solid" BorderColor="Black" Placeholder="Product Description" TextMode="MultiLine" Height="117px" Width="227px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Save" Width="92px" BackColor="Blue" ForeColor="White"  OnClick="Button1_Click"  />
            <br />
    
        </div>
        </div>
        


     </div>
  
</asp:Content>
