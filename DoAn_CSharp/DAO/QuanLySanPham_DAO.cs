using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn_CSharp.DAO
{
    internal class QuanLySanPham_DAO
    {
        private Database.Database db;
        public QuanLySanPham_DAO()
        {
            db = new Database.Database();

        }
        public DataTable LayDanhSachDanhMuc()
        {
            string strSQL = "Select * from danhmuc";
            DataTable dt = db.Execute(strSQL);
            return dt;
        }

    }
}
