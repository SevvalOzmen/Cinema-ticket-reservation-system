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
    public partial class SalonEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("Insert Into Salon (SalonAdi,KoltukSayisi) values (@pad,@psayi)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();
            commandAdd.Parameters.AddWithValue("@pad", tboxSalon.Text);
            commandAdd.Parameters.AddWithValue("@psayi", tboxSayi.Text);

            commandAdd.ExecuteNonQuery();
            Response.Write("Salon Başarıyla Eklendi");

        }
    }
}
