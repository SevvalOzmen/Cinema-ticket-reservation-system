using sinemaUygulamasi11.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sinemaUygulamasi11
{
    public partial class FilmEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand commandMKayit = new SqlCommand("Insert Into Film (FilmAdi) values (@pad)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandMKayit.Parameters.AddWithValue("@pad", tboxAd.Text);

            commandMKayit.ExecuteNonQuery();

            Response.Write("Film Başarıyla Eklendi");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
