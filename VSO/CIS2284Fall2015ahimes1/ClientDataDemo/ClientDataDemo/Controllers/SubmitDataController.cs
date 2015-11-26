using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClientDataDemo.Controllers
{
    public class SubmitDataController : Controller
    {
        //
        // GET: /SubmitData/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult CreateMenu()
        {
            return View();
        }

        //POST: SubmitData
        [HttpPost]
        public ActionResult CreateMenu(int id, string text, double price, string category)
        {
            Menu m = new Menu { Id = id, Text = text, Price = price, Category = category };

            ViewBag.Info = string.Format(
                "Menu created: {0}, Price: {1}, Category {2}", 
                m.Text, m.Price, m.Category);

            return View("Index");
        }
	}
}