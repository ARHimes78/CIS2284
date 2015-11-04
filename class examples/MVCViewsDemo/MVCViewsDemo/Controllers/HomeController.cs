using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCViewsDemo.Models;

namespace MVCViewsDemo.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            ViewBag.MyReallyCoolKey = "My really cool value!";
            return View();
        }

        public ActionResult PassingAModel()
        {
            var Contacts = new List<Contact>
            {
                new Contact {ContactID = 1, Name="Bjarney Stroustrup", Email="bjarney@aserver.net", Phone="555-1212"},
                new Contact {ContactID = 2, Name="Ada Lovelace", Email="ada@aserver.net", Phone="555-1213"},
                new Contact {ContactID = 3, Name="Alan Turing", Email="alan@aserver.net", Phone="555-1214"}
            };
            return View(Contacts);
        }

        public ActionResult LayoutPageDemo()
        {
            return View();
        }

        public ActionResult SectionDemo()
        {
            return View();
        }

        public ActionResult UseAPartialView1()
        {
            return View(new EventsAndMenus());
        }

        public ActionResult UseAPartialView2()
        {
            return View();
        }
        public ActionResult ShowEvents()
        {
            ViewBag.EventsTitle = "Live Events";
            return PartialView(new EventsAndMenus().Events);
        }

        public ActionResult UseAPartialView3()
        {
            return View();
        }
    }
}