using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMasterPage
{
    public partial class Articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                lblMsg.Visible = true;
                SqlConnection con = new SqlConnection("server=DESKTOP-N29NEU1;database=Assignmnet10Db;trusted_connection=true;");
                SqlCommand cmd = new SqlCommand("select * from Articles", con);
                con.Open();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds);
                GridViewArticle.DataSource = ds;
                GridViewArticle.DataBind();
                lblMsg.Text = "Number of Articles are: " + ds.Tables[0].Rows.Count;

            }
            catch (Exception ex)
            {

                lblMsg.Text = "Error " + ex.Message;

            }

        }

    }
    
}