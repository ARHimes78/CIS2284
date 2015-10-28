using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProfileDemo
{
    [Serializable]
    public class Item
    {
        public string Description { get; set; }
        public decimal Cost { get; set; }
    }
}
