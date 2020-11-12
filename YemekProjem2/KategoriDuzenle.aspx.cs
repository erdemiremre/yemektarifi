using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekProjem2
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack == false) 
          { 
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtKategoriAd.Text = dr[1].ToString();
                TxtAdet.Text= dr[2].ToString();
            }
            bgl.baglanti().Close();
          }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_kategoriler set kategoriad=@p1, kategoriadet=@p2 where kategoriid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtAdet.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}