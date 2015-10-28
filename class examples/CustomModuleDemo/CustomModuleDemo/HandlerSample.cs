using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace CustomModuleDemo
{
    public class HandlerSample : IHttpHandler
    {
        private string responseString = @"
            <!DOCTYPE HTML> 
            <html> 
                <head> 
                    <meta charset ="" UTF-8"" > 
                    <title> Sample Handler </title > 
                </head> 
                <body> 
                    <h1> Hello from the custom handler </h1 > 
                    <div>{0} </div> 
                </ body > 
            </html>";

        public bool IsReusable
        {
            get { return true; }
        }


        public void ProcessRequest( HttpContext context) 
        {
            var sb = new StringBuilder(); 
            sb.Append("<ul>"); 
            foreach (var module in context.ApplicationInstance.Modules) 
            {
                sb.AppendFormat("<li>{0}</li>", module.ToString()); 
            }
            
            sb.Append("</ul>");


            HttpRequest Request = context.Request;
            HttpBrowserCapabilities browserCapabilities = Request.Browser;
            sb.Append("<ul>"); 
            foreach (var key in browserCapabilities.Capabilities.Keys) 
            {
                sb.Append("<li>");
                sb.Append(string.Format("{0}: {1}", key, browserCapabilities.Capabilities[key]));
                sb.Append("</li>"); 
            }

            sb.Append(" </ ul >");



            context.Response.ContentType = "text/html"; 
            context.Response.Write(string.Format(responseString, sb.ToString())); 
        }

    }
}