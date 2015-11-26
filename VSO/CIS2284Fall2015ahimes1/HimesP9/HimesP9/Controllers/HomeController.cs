﻿//Alan Himes
//ahimes1@cnm.edu
//HomeController.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HimesP9.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult UserInput()
        {
            return View();
        }

        [HttpPost]    
        public ActionResult UserInput(HimesP9.Models.SentenceGenerator sg)
        {
            if (ModelState.IsValid)
                ViewBag.Result = sg.ToString();
            else
                ViewBag.Result = "Huh?";
            return View("Result");
        }

        public ActionResult Result()
        {
            return View();
        }
    }
}