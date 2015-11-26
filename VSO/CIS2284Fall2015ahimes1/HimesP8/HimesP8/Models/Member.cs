//Alan Himes
//ahimes1@cmn.edu
//Member.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HimesP8.Models
{
    [Serializable]
    public class Member
    {
        public int MemberID { get; set; }
        public string Name { get; set; }
        public string Addresss { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }

        //Added field for another Migration
        public DateTime? MemberSince { get; set; }
    }
}