using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekProjem2
{
    public partial class AdminGirisPaneli : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * from Tbl_KullaniciGiris where kullanici =@p1 and Sifre=@p2", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKullanici.Text);
            komut.Parameters.AddWithValue("@p2", TxtParola.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("https://localhost:44360/Kategoriler.aspx");
            }
            else
            {
                Response.Write("Kullanıcı adı veya şifre yanlış.Tekrar deneyin");
                
            }

        }
    }
}