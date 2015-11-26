using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProfileDemo
{
    [Serializable]
    public class ShoppingCart
    {
        private List<Item> items;

        public List<Item> Items
        {
            get { return items; }
            set { items = value; }
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