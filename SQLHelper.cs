using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace online_Learning_project
{
    public class SQLHelper
    {
        public static SqlConnection GetConnection()
        {
            string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            return conn;

        }
        public static void ExecuteNonQuery(string strcmd)
        {
            try
            {
                SqlConnection con = GetConnection();
                SqlCommand cmd = new SqlCommand(strcmd, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
              throw ex;
            }
        }
        public static DataTable FillData(string strcmd)
        {
            try
            {
                SqlConnection con = GetConnection();
                SqlCommand cmd = new SqlCommand(strcmd, con);
                SqlDataAdapter dtadp = new SqlDataAdapter();
                dtadp.SelectCommand = cmd;
                DataTable dt = new DataTable();
                dtadp.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}