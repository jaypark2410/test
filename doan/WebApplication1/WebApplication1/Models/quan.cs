//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class quan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public quan()
        {
            this.thucan = new HashSet<thucan>();
        }
    
        public int idquan { get; set; }
        public string tenquan { get; set; }
        public Nullable<int> idloaiquan { get; set; }
        public string mota { get; set; }
        public string hinhanhquan { get; set; }
        public string hinhanhquan1 { get; set; }
        public string hinhanhquan2 { get; set; }
        public string sonha { get; set; }
        public string tenduong { get; set; }
        public string tenphuongxa { get; set; }
        public string tenquanhuyen { get; set; }
        public string tentp { get; set; }
        public string giomocua { get; set; }
        public string giodongcua { get; set; }
        public string trangthai { get; set; }
        public string binhluan { get; set; }
        public Nullable<int> luotxem { get; set; }
        public string urlggmap { get; set; }
        public Nullable<int> iddm { get; set; }
    
        public virtual danhmuc danhmuc { get; set; }
        public virtual loaiquanan loaiquanan { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<thucan> thucan { get; set; }
    }
}