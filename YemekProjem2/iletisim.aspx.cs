using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekProjem2
{
    
    public partial class ilesim : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut =new SqlCommand("insert into Tbl_Mesajlar(MesajBaslik,MesajMail,Mesajicerik,MesajGonderen)Values(@i1,@i2,@i3,@i4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@i4", TxtGonderen.Text);
            komut.Parameters.AddWithValue("@i2", TxtMail.Text);
            komut.Parameters.AddWithValue("@i1", TxtBaslik.Text);
            komut.Parameters.AddWithValue("@i3", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Mesajınız Alınmıştır.Teşekkür ederiz.");
        }
    }
}