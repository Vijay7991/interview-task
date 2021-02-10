using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Interview_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private const bool V = true;

        protected void Page_Load(object sender, EventArgs e)
        {
            Button3.Visible = false;
            GridView2.Visible = true;
            GridView1.Visible = false;
           
        }

      
        protected void Button2_Click(object sender, EventArgs e)
        {

            GridView2.Visible = false;
            GridView1.Visible = true;
            Button3.Visible = true;
      
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;


        }

        protected void AddProduckt(object sender, EventArgs e)
        {
            Response.Redirect("AddPRoduct.aspx");
        }
        /*   protected void Edit_Click(object sender, EventArgs e)
           {
               GridViewRow gr = GridView2.SelectedRow;
               Response.Redirect("AddPRoduct.sapx? Code=" + gr.Cells[0].Text + "&name" + gr.Cells[1].Text + "&Price" + gr.Cells[2].Text + "&Descripton" + gr.Cells[3].Text);
           }*/

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView2.SelectedRow;
            Response.Redirect("AddPRoduct.aspx?Code="+gr.Cells[0].Text+"&name="+gr.Cells[1].Text+"&Price="+gr.Cells[2].Text+"&Descripton="+gr.Cells[3].Text);

        }
              

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString());
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Interview TextConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Delete  Product_List where code='" + id + "');", con);
                var name = cmd.ExecuteNonQuery();
                if (name > 0)
                {
                    Response.Write("<script> Alert('Data Deleted')</script>");

                }
                con.Close();

            }
        }

            /* protected void delete_Click(object sender, GridViewSelectEventArgs e)
             {
               GridViewRow gr = GridView2.SelectedRow;
               string name = gr.Cells[0].Text;


               string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Interview TextConnectionString"].ConnectionString;

               SqlConnection con = new SqlConnection(cs);
               con.Open();
               SqlCommand cmd = new SqlCommand("Delete  Product_List where name='" + name + "');", con);
               cmd.ExecuteNonQuery();
               con.Close();



           }*/

           
        
    }
}