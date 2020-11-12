using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekProjem2
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];


                //kATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            //Yemek listesi
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader(); //okuyucuyu sorguyla ilişkilendirmek için
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();

                //kATEGORİ SAYISINI Azaltma
                //SqlCommand komut3 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet-1 " +
                //    "where kategoriid=@p1", bgl.baglanti());
                //komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
                //komut3.ExecuteNonQuery();
                //bgl.baglanti().Close();
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
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {

            //YEMEK EKLEME
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler " +
                "(yemekad,yemekmalzeme,yemektarif,kategoriid)values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            //kATEGORİ SAYISINI ARTTIRMA
            SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 " +
                "where kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

    }
}