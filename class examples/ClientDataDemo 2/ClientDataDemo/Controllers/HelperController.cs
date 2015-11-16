using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClientDataDemo.Models;
using System.Net;
using System.Data.Entity;

namespace ClientDataDemo.Controllers
{
    public class HelperController : Controller
    {
        private MenuDB db = new MenuDB();

        // GET: SimpleHelper
        public ActionResult Index()
        {
            return View(db.Menus.ToList());
        }

        //POST: SubmitData
        [HttpPost]
        public ActionResult SubmitData(Menu m)
        {
            if (ModelState.IsValid)
            {
                m.Date = DateTime.Now;
                MenuDB context = new MenuDB();
                context.Menus.Add(m);
                context.SaveChanges();
                ViewBag.Info = string.Format(
                    "Menu created: {0}, Price: {1}, Category {2}", m.Text, m.Price, m.Category);
            }
            else
            {
                ViewBag.Info = "not valid";
            }
            return View("Index",db.Menus.ToList());
        }



        public ActionResult SimpleHelper()
        {
            return View();
        }

        public ActionResult HelperWithMenu()
        {
            var menu = new Menu 
            {
                Id = 1, 
                Text = "Schweinsbraten mit Knödel und Sauerkraut", 
                Price = 6.9, 
                Date = new DateTime(2012, 10, 5), 
                Category = "Main"
            };
            return View(menu); 
        }

        public ActionResult HelperWithAttributes()
        {
            return View();
        }

        public ActionResult StronglyTypedMenu() 
        {
            var menu = new Menu 
            {
                Id = 1, 
                Text = "Schweinsbraten mit Knödel und Sauerkraut", 
                Price = 6.9, 
                Date = new DateTime(2013, 10, 5), 
                Category = "Main" 
            }; 
            return View(menu); 
        }

        public ActionResult EditorExtMenu()
        {
            var menu = new Menu
            {
                Id = 1,
                Text = "Schweinsbraten mit Knödel und Sauerkraut",
                Price = 6.9,
                Date = new DateTime(2013, 10, 5),
                Category = "Main"
            };
            return View(menu);
        }

        // GET: Menus/Edit/5
        public ActionResult Edit(int? id)
        {
            Menu menu = db.Menus.Find(id);
            if (menu == null)
            {
                return HttpNotFound();
            }
            return View(menu);
        }

        // POST: 
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Text,Price,Date,Category")] Menu menu)
        {
            if (ModelState.IsValid)
            {
                menu.Date = DateTime.Now;
                db.Entry(menu).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(menu);
        }

        public ActionResult Delete(int? id)
        {
            MenuDB db = new MenuDB();
            Menu menu = db.Menus.Find(id);
            db.Menus.Remove(menu);
            db.SaveChanges();
            ViewBag.Info = string.Format(
            "Menu item deleted: {0}", menu.Id);
            return View("Index", db.Menus.ToList());
        }
    }
}