using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn_CSharp.DTO
{
    internal class QuanLyNhaCungCap_DTO
    {
        public int MaNCC { get; set; } // Supplier ID, PRIMARY KEY
        public string TenNCC { get; set; } // Supplier Name
        public string DiaChiNCC { get; set; } // Supplier Address
        public string SDTNCC { get; set; } // Supplier Phone Number
        public string Email { get; set; } // Supplier Email
        public string TrangThaiNCC { get; set; } // Supplier Status
    }
}
