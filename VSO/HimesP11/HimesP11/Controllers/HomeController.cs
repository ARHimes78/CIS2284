//Alan Himes
//ahimes1@cnm.edu
//HomeController.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HimesP11.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult UserInput()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UserInput(HimesP11.Models.SentenceGenerator sg)
        {
            if (ModelState.IsValid)
                ViewBag.Result = sg.ToString();
            else
                ViewBag.Result = "Huh?";
            return View("Result");
        }

        //Html helper version
        public ActionResult HelperInput()
        {
            return View();
        }

        public ActionResult Result()
        {
            return View();
        }
    }
}