//Alan Himes
//ahimes1@cnm.edu
//Member.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HimesP10.Models
{
    [Serializable]
    public class Member
    {
        public int MemberID { get; set; }
        public string Name { get; set; }
        public string Addresss { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public DateTime? MemberSince { get; set; }
    }
}