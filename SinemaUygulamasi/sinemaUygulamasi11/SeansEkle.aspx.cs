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
    public partial class SeansEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand commandMKayit = new SqlCommand("Insert Into Seans (SeansTarihi) values (@pseans)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandMKayit.Parameters.AddWithValue("@pseans", tboxSeans.Text);

            commandMKayit.ExecuteNonQuery();

            Response.Write("Seans Başarıyla Eklendi");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}
