using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class SP_API : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = this.Request["action"];

            switch (action)
            {
                case "get_infor_sp":
                    get_infor_sp();
                    break;
                case "add_sp":
                    add_sp();
                    break;
                case "delete_sp":
                    delete_sp();
                    break;
                case "update_sp":
                    update_sp();
                    break;
           
                default:
                    thong_bao_loi();
                    break;
            }
        }

        Library.Read_db get_db()
        {
            Library.Read_db db = new Library.Read_db();
            db.cnstr = "Data Source=DESKTOP-OPTBNV5;Initial Catalog=web_do_an_vat;Integrated Security=True;";
            return db;
        }


        void get_infor_sp()
        {
            Library.Read_db db = get_db();
            string json = db.get_status();
            this.Response.Write(json);
        }
        void add_sp()
        {
            string MaSanPham = this.Request["MaSanPham"];
            string TenSanPham = this.Request["TenSanPham"];
            string MoTa = this.Request["MoTa"];
            double Gia = double.Parse(this.Request["Gia"]);
            int SoLuongTon = int.Parse(this.Request["SoLuongTon"]);

            Library.Read_db db = get_db();
            string json = db.add_sp(MaSanPham, TenSanPham, MoTa, Gia, SoLuongTon);
            this.Response.Write(json);
        }


        void delete_sp()
        {
            string MaSanPham = this.Request["MaSanPham"];
            if (string.IsNullOrEmpty(MaSanPham))
            {
                thong_bao_loi();
                return;
            }

            Library.Read_db db = get_db();
            string json = db.delete_sp(MaSanPham);
            this.Response.Write(json);
        }


        void update_sp()
        {
            string MaSanPham = this.Request["MaSanPham"];
            string TenSanPham = this.Request["TenSanPham"];
            string MoTa = this.Request["MoTa"];
            double Gia = double.Parse(this.Request["Gia"]);
            int SoLuongTon = int.Parse(this.Request["SoLuongTon"]);

            Library.Read_db db = get_db();
            string json = db.update_sp(MaSanPham, TenSanPham, MoTa, Gia, SoLuongTon);
            this.Response.Write(json);
        }


        void thong_bao_loi()
        {
            string rep = "{\"ok\":false,\"msg\":\"Lỗi rồi nhé, ko có action này!\"}";
            this.Response.Write(rep);
        }
    }
}
