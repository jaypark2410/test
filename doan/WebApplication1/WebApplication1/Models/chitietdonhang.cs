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
    
    public partial class chitietdonhang
    {
        public int iddh { get; set; }
        public string idta { get; set; }
        public Nullable<int> soluong { get; set; }
        public string dongia { get; set; }
    
        public virtual donhang donhang { get; set; }
        public virtual thucan thucan { get; set; }
    }
}
