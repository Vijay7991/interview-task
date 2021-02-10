using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Data;

namespace Interview_project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            { 
            
                string Code1 = Request.QueryString["Code"];
                if (!Page.IsPostBack)
                {

                    Binddata(Code1);

                }
            }
            catch
            {

            }
        
        
        }

        protected void Binddata(string Code1)
        {
           string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Interview TextConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Product_List where code='" + Code1+"'", con);

            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);

            Label1.Text = dt.Rows[0]["code"].ToString();
            product_name.Text = dt.Rows[0]["Name"].ToString();
            Product_Price.Text = dt.Rows[0]["PRice"].ToString();
            Product_Descriprion.Text = dt.Rows[0]["Deacription"].ToString();
           cmd.ExecuteNonQuery();


            con.Close();
        }
        protected void Savebtn(object sender, EventArgs e)
        {


            if (product_name.Text != null || Product_Price != null) 
            {


                string code = Label1.Text.Trim();
                string prodname = product_name.Text.Trim();
                var price = Product_Price.Text.Trim();
                string discription = Product_Descriprion.Text.Trim();


                string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Interview TextConnectionString"].ConnectionString;


                SqlConnection con = new SqlConnection(cs);
                con.Open();
                if (code != null)
                {


                    SqlCommand cmd = new SqlCommand("INSERT INTO Product_List VALUES ('" + code + "','" + prodname + "','" + discription + "'," + price + ");", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    product_name.Text = string.Empty;
                    Product_Price.Text = string.Empty;
                    Product_Descriprion.Text = string.Empty;
                    saved.Text = "Data Saved Successfully";
                }
                else
                {

                    string code1 = prodname.Substring(0, 2).ToUpper();

                    SqlCommand cmd = new SqlCommand("Update  Product_List set (code,Name,Deacription,PRice) values ('" + code1 + "','" + prodname + "','" + discription + "'," + price + " where code='" + code1 + "');", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    saved.Text = "Data Updated Successfully";
                }
            }
            else
            {
                
                if( product_name==null)

                {
                        
                    
                    name.Text = "Enter Product Name";
                    if(Product_Price==null)
                    {
                        price.Text = "Enter Price";
                    }
                }
            }
        }



           
        }
    
}