using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Interview_Task
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void newproduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconectionstring"].ConnectionString;


            ImageButton Imgbtn = sender as ImageButton;
            GridViewRow row = Imgbtn.NamingContainer as GridViewRow;
            string pk = GridView1.DataKeys[row.RowIndex].Values[0].ToString();

            cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconectionstring"].ConnectionString;


            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Product_List WHERE code='" + pk + "';", con);


            cmd.ExecuteNonQuery();


            con.Close();
        }

        protected void getUserByID_Click(object sender, EventArgs e)
        {
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconectionstring"].ConnectionString;


            ImageButton Imgbtn = sender as ImageButton;
            GridViewRow row = Imgbtn.NamingContainer as GridViewRow;
            string pk = GridView1.DataKeys[row.RowIndex].Values[0].ToString();
            GridView1.Columns[3].Visible = false;
            cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconectionstring"].ConnectionString;


            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * FROM Product_List WHERE code='" + pk + "';", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            System.Data.DataTable dt = new System.Data.DataTable();
                 
            sda.Fill(dt);
            con.Close();
            
        }
         


    }
           

               
              

    
                
            
        
}