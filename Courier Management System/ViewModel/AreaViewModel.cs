using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Courier_Management_System.Models
{
    public class AreaViewModel
    {
        public int AreaID { get; set; }
        public string AreaName  { get; set; }
        public Nullable<double> Cost { get; set; }
    }
}