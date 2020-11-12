﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekProjem2
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            if (Page.IsPostBack == false)
            {

            
            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where Tarifid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtTarifAd.Text = dr[1].ToString();
                TxtMalzemeler.Text = dr[2].ToString();
                TxtYapilis.Text = dr[3].ToString();
                TxtOneren.Text = dr[5].ToString();
                TxtMail.Text = dr[6].ToString();
                
            }
            bgl.baglanti().Close();

                //kATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Durum Güncelleme
            SqlCommand komut = new SqlCommand("Update tbl_tarifler set TarifDurum=1 where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            //Yemeği ana sayfaya ekleme

            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid)values" +
                "(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", TxtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            //kATEGORİ SAYISINI ARTTIRMA
            SqlCommand komut3 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 " +
                "where kategoriid=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}