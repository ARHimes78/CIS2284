using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MVCViewsDemo.Models
{
    public class Menu
    {
        public int MenuID { get; set; }
        
        public string Text { get; set; }

        public double Price { get; set; }

        public string Category { get; set; }        
    }
}
