using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MVCRoutingDemo
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new {controller = "Home", action = "Index", id = UrlParameter.Optional}
            );

            routes.MapRoute( 
                name: "Home", 
                url: "{action}/{id}", 
                defaults: new {controller = "Home", action = "Index", id = UrlParameter.Optional} 
            );

            routes.MapRoute( 
                name: "Language", 
                url: "{language}/{controller}/{action}/{id}", 
                defaults: new {controller = "Home", action = "Index", id = UrlParameter.Optional},
                constraints: new {language = @"(en)|(de)"}
            );

            routes.MapRoute(
                name: "Products", 
                url: "{ controller}/{ action}/{ productId}", 
                defaults: new {controller = "Home", action = "Index", productId = UrlParameter.Optional}, 
                constraints: new { productId = @"\ d +"} 
            );

            routes.MapRoute(
                name: "MultipleParameters",
                url: "{controller}/{action}/{x}/{y}",
                defaults: new { controller = "Home", action = "Index" }
            ); 
        }
    }
}
