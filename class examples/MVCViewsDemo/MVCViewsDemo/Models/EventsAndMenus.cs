using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCViewsDemo.Models
{
    public class EventsAndMenus
    {
        private IEnumerable<Event> events = null;
        public IEnumerable<Event> Events
        {
            get
            {
                return events ?? (events = new List<Event>() 
                {
                    new Event { EventID = 1, Text ="Formula 1 G.P. Abu Dhabi, Yas Marina", 
                        Day = new DateTime( 2014, 10, 26) }, 
                    new Event { EventID = 2, Text ="Formula 1 G.P. USA, Austin", 
                        Day = new DateTime( 2014, 11, 9) }, 
                    new Event { EventID = 3, Text ="Formula 1 G.P. Brasil, Sao Paulo", 
                        Day = new DateTime( 2014, 11, 30) } 
                });
            }
        }
        private List<Menu> menus = null;
        public IEnumerable<Menu> Menus
        {
            get
            {
                return menus ?? (menus = new List<Menu>() 
                {
                    new Menu { MenuID = 1, Text ="Baby Back Barbecue Ribs", Price = 16.9, 
                        Category =" Main" }, 
                    new Menu { MenuID = 2, Text ="Chicken and Brown Rice Piaf", Price = 12.9, 
                        Category =" Main" }, 
                    new Menu { MenuID = 3, Text ="Chicken Miso Soup with Shiitake Mushrooms", Price = 6.9, 
                        Category =" Soup" } 
                });
            }
        }
    }
}

