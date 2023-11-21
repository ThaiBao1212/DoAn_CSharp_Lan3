using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn_CSharp.DTO
{
    internal class QuanLyKhachHang_DTO
    {
        public int MaKH { get; set; } // Customer ID, PRIMARY KEY
        public string HoTenKH { get; set; } // Customer Name
        public string DiaChiKH { get; set; } // Customer Address
        public string SDTKH { get; set; } // Customer Phone Number
        public string CMNDKH { get; set; } // Customer ID Card Number
        public string GioiTinhKH { get; set; } // Customer Gender
        public string TrangThaiKH { get; set; } // Customer Status

    }
}
