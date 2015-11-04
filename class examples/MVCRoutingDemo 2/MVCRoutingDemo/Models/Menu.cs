using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCRoutingDemo.Models
{
    public class Menu
    {
        public int Id { get; set; } 
        public string Text { get; set; } 
        public double Price { get; set; } 
        public string Category { get; set; }
    }
}