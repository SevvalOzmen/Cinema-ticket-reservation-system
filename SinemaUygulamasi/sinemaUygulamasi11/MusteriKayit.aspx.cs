using sinemaUygulamasi11.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace sinemaUygulamasi11
{
    public partial class MusteriKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand commandMKayit = new SqlCommand("Insert Into Musteri (MusteriAdi, MusteriSoyad, Eposta, Yas) values (@pad,@psoyad,@pmail,@pyas)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandMKayit.Parameters.AddWithValue("@pad", tboxAd.Text);
            commandMKayit.Parameters.AddWithValue("@psoyad", tboxSoyad.Text);
            commandMKayit.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandMKayit.Parameters.AddWithValue("@pyas", tboxYas.Text);

            commandMKayit.ExecuteNonQuery();

            Response.Write("Bilet İşlemi Başarılı Şekilde Sonuçlandı ");
            Response.Redirect("BiletOlustur.aspx");
        }

        protected void tboxMail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
