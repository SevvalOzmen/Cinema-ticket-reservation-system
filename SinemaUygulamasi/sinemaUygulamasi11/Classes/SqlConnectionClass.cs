using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace sinemaUygulamasi11.Classes
{
    public class SqlConnectionClass
    {
        public static SqlConnection connection = new SqlConnection("Server=SEVVAL-DESKTOP;Database=BiletSatis;Integrated Security=True;");


        public static void CheckConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
           //     connection.Open();
            }
            else
            {

            }
        }
    }
}
