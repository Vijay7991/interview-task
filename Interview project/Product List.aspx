<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Product List.aspx.cs" Inherits="Interview_project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    
    
    <style>
        #Button2, #Button3
        {
            margin:10px;
            border-radius:5px;
            color: white;
            background-color:blue;
        }
       
         #TextBox1
         {
             border-color:red;
             padding:10px;
         }
         #Button1{
             color:white;
             background-color:blue;
         }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=""
     <h3>Product </h3>

     <br />
         <br />
     <br />
     <br />
     <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="AddProduckt" style="background-color:blue;border-radius:5px;color:white;"/>
     <br />
     <br />
     &nbsp;
     <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" style="background-color:blue;border-radius:5px;color:white;" />
     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Show All "  Visible="false" style="background-color:blue;border-radius:5px;color:white;"/>
     <br />
     <br />
     <br />
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="No Data..." BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="185px" Width="472px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowDeleted="GridView2_RowDeleted" OnRowDeleting="GridView2_RowDeleting">
         <Columns>
             <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
             <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
             <asp:BoundField DataField="Deacription" HeaderText="Deacription" SortExpression="Deacription" />
             <asp:BoundField DataField="PRice" HeaderText="Price" SortExpression="PRice" />
             <asp:CommandField HeaderText="Edit" SelectText="Edit" ShowSelectButton="True" ButtonType="Button" />
             <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
         </Columns>
         <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
         <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
         <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
         <RowStyle BackColor="White" ForeColor="#003399" />
         <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
         <SortedAscendingCellStyle BackColor="#EDF6F6" />
         <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
         <SortedDescendingCellStyle BackColor="#D6DFDF" />
         <SortedDescendingHeaderStyle BackColor="#002876" />
     </asp:GridView>
     <br />
    <div class=" grid1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" EmptyDataText="No Data Found" Height="169px" Width="403px">
            <Columns>
                <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Deacription" HeaderText="Deacription" SortExpression="Deacription" />
                <asp:BoundField DataField="PRice" HeaderText="Price" SortExpression="PRice" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Interview TextConnectionString %>" SelectCommand="SELECT * FROM [Product_List] WHERE ([Name] LIKE '%' + @Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
    <div class="grid2">

        </div>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Interview TextConnectionString %>" SelectCommand="SELECT * FROM [Product_List]"></asp:SqlDataSource>
    <div style="width:100%; height:50px;"></div>
    </div>
</asp:Content>
