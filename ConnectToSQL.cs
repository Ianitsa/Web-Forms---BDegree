using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace IaniDProject
{
    public class ConnectToSQL
    {
        public static SqlConnection CreateConnection()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = @"Data Source=XXX-PC\SQLEXPRESS;Initial Catalog=DProect;Integrated Security=True";
            return connection;

        }
    }
}