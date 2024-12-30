using sinemaUygulamasi11.Classes;
using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace sinemaUygulamasi11
{
    public partial class FilmGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Film verilerini DropDownList'e yükleme
                SqlCommand commandListFilm = new SqlCommand("Select FilmID, FilmAdi from Film", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                SqlDataReader readerFilm = commandListFilm.ExecuteReader();

                // DropDownList1 için veri bağlama
                DropDownList1.DataTextField = "FilmAdi";
                DropDownList1.DataValueField = "FilmID";
                DropDownList1.DataSource = readerFilm;
                DropDownList1.DataBind();
                readerFilm.Close(); // İlk SqlDataReader'ı kapat
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(DropDownList1.SelectedValue) && !string.IsNullOrEmpty(TextBox1.Text))
            {
                int filmID;
                if (int.TryParse(DropDownList1.SelectedValue, out filmID))
                {
                    string yeniFilmAdi = TextBox1.Text;

                    SqlCommand command = new SqlCommand("UPDATE Film SET FilmAdi = @YeniFilmAdi WHERE FilmID = @FilmID", SqlConnectionClass.connection);
                    SqlConnectionClass.CheckConnection();

                    command.Parameters.AddWithValue("@YeniFilmAdi", yeniFilmAdi);
                    command.Parameters.AddWithValue("@FilmID", filmID);

                    try
                    {
                        command.ExecuteNonQuery();
                        Response.Write("Film Başarıyla Güncellendi");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Hata: " + ex.Message);
                    }
                }
                else
                {
                    Response.Write("FilmID dönüşümü başarısız oldu.");
                }
            }
            else
            {
                Response.Write("Lütfen Film seçimi yapınız ve Yeni Film Adı giriniz.");
            }
        }
    }
}
