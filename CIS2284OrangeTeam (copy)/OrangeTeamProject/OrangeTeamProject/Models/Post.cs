// File: Post.cs
// Author: The Orange Team
// Project: Group Project
// Semester: Fall 2015
// Class: CNM CIS 2284-101 
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OrangeTeamProject.Models
{
    public class Post
    {
        [Key]
        public int PostId { get; set; }

        [StringLength(250)]
        public string Text { get; set; }

        public DateTime DateAdded { get; set; }

        public virtual Thread Thread { get; set; }

        public string User { get; set; }

        public string UserName { get; set; }

    }
}