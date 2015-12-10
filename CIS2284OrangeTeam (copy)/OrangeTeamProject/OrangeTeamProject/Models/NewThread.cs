//Alan Himes
//ahimes1@cnm.edu
//NewThread.cs

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OrangeTeamProject.Models
{
    [Serializable]
    public class NewThread
    {
        //class properties meant to correspond to DB table columns.
        [Key]
        public int ThreadID { get; set; }

        [Required, StringLength(50)]
        public string Subject { get; set; }

        [Required, StringLength(250)]
        public string MessageBody { get; set; }

        [DataType(DataType.DateTime)]
        public DateTime TimeStamp { get; set; }
    }
}