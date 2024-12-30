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
    public partial class FilmSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                // Film verileri için SqlDataReader
                SqlCommand commandListFilm = new SqlCommand("Select * from Film", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                SqlDataReader readerFilm = commandListFilm.ExecuteReader();

                // DropDownList1 için veri bağlama
                DropDownList1.DataTextField = "FilmAdi";
                DropDownList1.DataValueField = "FilmAdi";
                DropDownList1.DataSource = readerFilm;
                DropDownList1.DataBind();
                readerFilm.Close(); // İlk SqlDataReader'ı kapat
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filmAdi = DropDownList1.Text;


            SqlCommand command = new SqlCommand("DELETE FROM Film WHERE FilmAdi = @filmAdi", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();
            command.Parameters.AddWithValue("@filmAdi", filmAdi);

            try
            {
               
                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    Response.Write("Film Başarıyla Silindi");
                }
                else
                {
                    Response.Write("Silinecek film bulunamadı");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Hata: " + ex.Message);
            }
            finally
            {
              
            }
        }
    }
}
