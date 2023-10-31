using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Courier_Management_System.Models
{
    public class TrackingViewModel
    {
        public int trackingID { get; set; }
        public Nullable<int> bid { get; set; }
        public Nullable<int> dID { get; set; }
        public string dFirstName { get; set; }
        public int dPhoneNo { get; set; }
        public virtual booking booking { get; set; }
        public virtual deliveryMan deliveryMan { get; set; }
    }
}