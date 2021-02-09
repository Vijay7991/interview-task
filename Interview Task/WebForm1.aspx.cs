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
    public partial class WebForm2 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
//string connstring = "Data Source=DESKTOP-AN7OOEP\\SQLEXPRESS;Initial Catalog=Interview;Integrated Security=True";
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconectionstring"].ConnectionString;

            string prodname = txtname.Text.Trim();
            string price = txtprod.Text.Trim();
            string discription = txtdisc.Text.Trim();

            cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconectionstring"].ConnectionString;
            string P_code = prodname.Substring(0, 2);
            
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Product_List VALUES ('" + prodname + "','" + prodname + "','" + discription + "'," + price +");", con);

        
            cmd.ExecuteNonQuery();
           

            con.Close();
        }

        protected void txtname_TextChanged(object sender, EventArgs e)
        {

        }
    }
}