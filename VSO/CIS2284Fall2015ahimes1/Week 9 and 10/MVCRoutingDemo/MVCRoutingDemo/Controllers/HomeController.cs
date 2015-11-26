using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCRoutingDemo.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        public String Index(string param)
        {
            return "Hello from Home Controller Index method! -" + param + "-";
        }

        public string Greeting(string name)
        {
            return HttpUtility.HtmlEncode("Hello, " + name);
        }

        public string Greeting2(string id)
        {
            return HttpUtility.HtmlEncode("Hello, " + id);
        }

        public int Add(int x, int y)
        {
            return x + y;
        }
	}
}