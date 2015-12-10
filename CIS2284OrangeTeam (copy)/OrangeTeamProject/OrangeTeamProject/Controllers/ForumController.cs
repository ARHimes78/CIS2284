//Alan Himes, William Hoobler
//ahimes1@cnm.edu, whoobler@cnm.edu
//ForumController.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OrangeTeamProject.Models;
using Microsoft.AspNet.Identity;

namespace OrangeTeamProject.Controllers
{
    [Authorize]
    public class ForumController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        public ActionResult Index()
        {
            var query = from thread in db.Threads
                        orderby thread.DateAdded
                        select thread;

            return View(query.ToList());
        }

        public ActionResult Viewthread(int? id)
        {

            var query = from post in db.Posts
                        where post.Thread.ThreadId == id
                        orderby post.DateAdded
                        select post;

            ViewBag.thread =  db.Threads.Find(id);

            return View(query.ToList());
        }

        public ActionResult NewThread()
        {
            return View();
        }

        [HttpPost]
        public ActionResult NewThread(NewThread nt)
        {
            nt.TimeStamp = DateTime.Now;

            Thread thread = new Thread();
            thread.Title = nt.Subject;
            thread.DateAdded = nt.TimeStamp;
            thread.User = User.Identity.GetUserId();
            thread.UserName = User.Identity.GetUserName();

            Post post = new Post();
            post.DateAdded = nt.TimeStamp;
            post.User = User.Identity.GetUserId();
            post.UserName = User.Identity.GetUserName();
            post.Text = nt.MessageBody;
            post.Thread = thread;

            db.Threads.Add(thread);
            db.Posts.Add(post);

            db.SaveChanges();

            ViewBag.Thread =
                string.Format("thread.Title: {0} thread.DateAdded: {1} thread.User: {2} post.DateAdded: {3} post.User: {4} post.Text: {5} post.Thread: {6}",
                thread.Title, thread.DateAdded.ToString(), thread.User, post.DateAdded.ToString(), post.User, post.Text, post.Thread);

            return RedirectToAction("ViewThread", "Forum", new { id = thread.ThreadId});
        }

        [HttpPost]
        public ActionResult AddPost(int threadId, string text)
        {

            Post post = new Post();
            post.DateAdded = DateTime.Now;
            post.Text = text;
            post.Thread = db.Threads.Find(threadId);
            post.User = User.Identity.GetUserId();
            post.UserName = User.Identity.GetUserName();

            db.Posts.Add(post);
            db.SaveChanges();

            return RedirectToAction("ViewThread", "Forum", new { id = threadId });
        }
	}
}