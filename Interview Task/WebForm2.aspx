<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Interview_Task.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Product List</h3>
    <div>
         <asp:Button ID="searchbtn" runat="server" Text="New Product" style="background-color:blue; border-radius:5px; " Width="106px" Height="29px" OnClick="newproduct_Click"/>
            <asp:TextBox ID="Search" runat="server" placeholder="Search" Style="padding:5px; margin:10px; " Width="215px"></asp:TextBox>
         <br />
         <br />
         <br />
         <br />
        <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Deacription" HeaderText="Deacription" SortExpression="Deacription" />
                <asp:BoundField DataField="PRice" HeaderText="PRice" SortExpression="PRice" />
                <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <center>
                                            <asp:ImageButton ID="imgEdit" CommandArgument="ID" CommandName ="Edit" runat="server" ImageUrl="~/edit.png" Height="22px" OnClick="getUserByID_Click"/>&nbsp;&nbsp;
                                            <asp:ImageButton ID="imgDelete" CommandArgument="ID" CommandName ="Delete" runat="server" ImageUrl="~/rejectok.jpg" Height="22px" OnClick=" GridView1_SelectedIndexChanged" OnClientClick="return confirm('Are you sure you want to delete User?');"/>
                                                </center>
                                        </ItemTemplate>
                                    </asp:TemplateField>
            </Columns>
            
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="blue" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        
            
        </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Interview TextConnectionString %>" SelectCommand="SELECT * FROM [Product_List]"></asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconectionstring%>" SelectCommand="SELECT * FROM [Product_List]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
    </div>
   



</asp:Content>
