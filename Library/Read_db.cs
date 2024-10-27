using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace Library
{
    public class Read_db
    {
        public string cnstr;
        public string get_status()
        {
            string json = "";
            try
            {

                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_SP";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "get_infor_sp";
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi\"}";
            }

            return json;
        }

        public string update_sp(string MaSanPham, string TenSanPham,string MoTa,double Gia, int SoLuongTon)
        {
            string json = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_SP";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "update_sp";
                        cmd.Parameters.Add("@MaSanPham", SqlDbType.VarChar,50).Value = MaSanPham;
                        cmd.Parameters.Add("@TenSanPham", SqlDbType.NVarChar,100).Value = TenSanPham;
                        cmd.Parameters.Add("@MoTa", SqlDbType.NVarChar, 500).Value = MoTa;
                        cmd.Parameters.Add("@Gia", SqlDbType.Decimal).Value = Gia;
                        cmd.Parameters.Add("@SoLuongTon", SqlDbType.Int).Value = SoLuongTon;
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch (Exception ex)
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi: " + ex.Message + "\"}";
            }

            return json;
        }



        public string add_sp(string MaSanPham, string TenSanPham, string MoTa, double Gia, int SoLuongTon)
        {
            string json = "";
            try
            {
                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_SP";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "add_sp";
                        cmd.Parameters.Add("@MaSanPham", SqlDbType.VarChar, 50).Value = MaSanPham;
                        cmd.Parameters.Add("@TenSanPham", SqlDbType.NVarChar, 100).Value = TenSanPham;
                        cmd.Parameters.Add("@MoTa", SqlDbType.NVarChar, 500).Value = MoTa;
                        cmd.Parameters.Add("@Gia", SqlDbType.Decimal).Value = Gia;
                        cmd.Parameters.Add("@SoLuongTon", SqlDbType.Int).Value = SoLuongTon;
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi\"}";
            }
            return json;
        }
      
        public string delete_sp(string MaSanPham)
        {
            string json = "";
            try
            {
                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_SP";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "delete_sp";
                        cmd.Parameters.Add("@MaSanPham", SqlDbType.VarChar, 50).Value = MaSanPham;
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch (Exception ex)
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi: " + ex.Message + "\"}";
            }
            return json;
        }



    }
}
