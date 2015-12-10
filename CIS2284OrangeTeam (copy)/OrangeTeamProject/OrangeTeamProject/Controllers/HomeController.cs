using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OrangeTeamProject.Models;
using Microsoft.AspNet.Identity;

namespace OrangeTeamProject.Controllers
{
    public class HomeController : Controller
    {
        
        [AllowAnonymous]
        public ActionResult Index()
        {
            return View();
        }

        [AllowAnonymous]
        public ActionResult About()
        {
            ViewBag.Message = "The wide-open world of forums!";

            return View();
        }

        [AllowAnonymous]
        public ActionResult Contact()
        {
            ViewBag.Message = "Contact Members of the Orange Team.";

            return View();
        }

    } //HomeController
}//namespace