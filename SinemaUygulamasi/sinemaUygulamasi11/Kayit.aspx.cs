using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using sinemaUygulamasi11.Classes;

namespace sinemaUygulamasi11
{
    public partial class Kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void buttonKayit_Click(object sender, EventArgs e)
        {
            SqlCommand commandKayit = new SqlCommand("Insert Into Admin (UserMail, UserSifre) values (@pmail,@psifre)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string newSifre = Sha256Converter.ComputeSha256Hash(tBoxSifre.Text);



            commandKayit.Parameters.AddWithValue("@pmail",tBoxMail.Text);
            commandKayit.Parameters.AddWithValue("@psifre", newSifre);

            commandKayit.ExecuteNonQuery();
            Response.Redirect("Giris.aspx");
        }

        protected void tBoxMail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
