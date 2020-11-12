using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekProjem2
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {

            
            SqlCommand komut = new SqlCommand("select * from Tbl_Hakkimizda", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtHakkimizda.Text = dr[0].ToString();

            }
            bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update tbl_hakkimizda set Metin=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtHakkimizda.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}