using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProfileDemo
{
    [Serializable]
    public class ShoppingCart
    {
        private List<Item> items = new List<Item>();
        public IList<Item> Items
        {
            get
            {
                return items;
            }
        }
        public decimal TotalCost
        {
            get
            {
                return items.Sum(item => item.Cost);
            }
        }
    }
}