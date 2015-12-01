//Alan Himes
//ahimes1@cnm.edu
//HomeController.cs

using HimesP12.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HimesP12.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            ViewBag.HelloWorld = "Hello, world!" ;
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Description";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Contact info";

            return View();
        }

        public ActionResult UserInput()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UserInput(SentenceGenerator sg)
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