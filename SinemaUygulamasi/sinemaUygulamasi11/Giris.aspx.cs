using System;
using System.Data;
using System.Data.SqlClient;
using sinemaUygulamasi11.Classes;
using System.Web.UI.WebControls;
using System.Web.UI;

namespace sinemaUygulamasi11
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonGiris_Click(object sender, EventArgs e)
        {
            SqlCommand commandGiris = new SqlCommand("Select * from Admin where UserMail=@pmail and UserSifre=@psifre", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string shaPass = Sha256Converter.ComputeSha256Hash(tBoxSifre.Text);

            commandGiris.Parameters.AddWithValue("@pmail", tBoxMail.Text);
            commandGiris.Parameters.AddWithValue("@psifre", shaPass);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(commandGiris);

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (tBoxMail.Text == "sevval@gmail")
                {
                    Response.Redirect("AdminSayfa.aspx");
                }
                else
                {
                    Response.Write("Sadece Admin Giriş Yapabilir");
                }

            }
            else
            {
                Response.Write("Mail ya da şifre hatalı");
            }
        }

        protected void tBoxMail_TextChanged(object sender, EventArgs e)
        {
            // Burada TextBox metni değiştikçe yapılacak işlemleri ekleyebilirsiniz
        }

        protected void TextBox2_TextChanged1(object sender, EventArgs e)
        {
            // Burada TextBox metni değiştikçe yapılacak işlemleri ekleyebilirsiniz
        }
    }
}
