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
    public partial class BiletOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Page.IsPostBack==false)
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

                // Seans verileri için yeni SqlDataReader
                SqlCommand commandListSeans = new SqlCommand("Select * from Seans", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                SqlDataReader readerSeans = commandListSeans.ExecuteReader();

                // DropDownList2 için veri bağlama
                DropDownList2.DataTextField = "SeansTarihi";
                DropDownList2.DataValueField = "SeansTarihi";
                DropDownList2.DataSource = readerSeans;
                DropDownList2.DataBind();
                readerSeans.Close(); // İkinci SqlDataReader'ı kapat

                // Salon verileri için yeni SqlDataReader
                SqlCommand commandListSalon = new SqlCommand("Select * from Salon", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                SqlDataReader readerSalon = commandListSalon.ExecuteReader();

                // DropDownList3 için veri bağlama
                DropDownList3.DataTextField = "SalonAdi"; // DataTextField'ı doğru atadınız
                DropDownList3.DataValueField = "SalonAdi"; // DataValueField'ı doğru atadınız
                DropDownList3.DataSource = readerSalon;
                DropDownList3.DataBind();
                readerSalon.Close(); // Üçüncü SqlDataReader'ı kapat
            }

            if (!IsPostBack)
            {
                for (int i = 1; i <= 50; i++)
                {
                    ListItem item = new ListItem(i.ToString(), i.ToString());
                    ddlSecenekler.Items.Add(item);
                }
            }





        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            

            SqlCommand commandAdd = new SqlCommand("Insert Into Islem (FilmAdi,SeansTarihi, SalonAdi) values (@pfilm,@pseans,@psalon)",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();
            commandAdd.Parameters.AddWithValue("@pfilm",DropDownList1.Text);
            commandAdd.Parameters.AddWithValue("@pseans",DropDownList2.Text);
            commandAdd.Parameters.AddWithValue("@psalon",DropDownList3.Text);

            //Label1.Text = DropDownList2.Text;
            commandAdd.ExecuteNonQuery();

            Response.Redirect("MusteriKayit.aspx");
        }

    }
}
