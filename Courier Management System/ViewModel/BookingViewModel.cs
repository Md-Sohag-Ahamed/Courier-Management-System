﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Courier_Management_System.Models
{
    public class BookingViewModel
    {
        public int bID { get; set; }
        public string bOriginFirstName { get; set; }
        public string bOriginLastName { get; set;}
        public string bOrginAddress { get; set; }
        public string bOrginPhoneNo { get; set; }
        public string bDestFirstName { get; set; }
        public string bDestLastName { get; set; }
        public string bDestAddress { get; set; }
        public string bDestPhoneNo { get; set;}
        public Nullable<double> bWeight { get; set; }
        public string bDescription { get; set;}
        public string bTye { get; set; }
        public Nullable<double> bCost { get; set; }
        public Nullable<long> id { get; set; }
        public Nullable<int> dID { get; set; }
        public string bOriginArea { get; set; }
        public string bDestArea { get; set; }
        public string status { get; set; }
        public Nullable<double> bOriginCost { get; set; }
        public Nullable<double> bDestCost { get; set; }

        public virtual siteuser Siteuser { get; set; }
        public string done { get; set; }

    }
}