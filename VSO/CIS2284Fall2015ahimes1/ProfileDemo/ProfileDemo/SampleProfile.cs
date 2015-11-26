using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProfileDemo
{
    public class SampleProfile:IHttpHandler
    {
        private string responseString = @"
        <! DOCTYPE HTML> 
        <html> 
            <head> 
                <meta charset ="" UTF-8"" > 
                <title>Profile Demo</title > 
            </head> 
            <body> 
                <h1>Hello from profile demo.</h1 > 
                <p>UserName: {0} </p> 
                <p>Current color: {1} </p> 
            </ body > 
        </html>";

        public bool IsReusable
        {
            get { return true; }
        }

        public void ProcessRequest(HttpContext context)
        {
            HttpRequest request = context.Request;
            HttpResponse response = context.Response;
            string currentData = context.Profile["Color"].ToString();
            string userName = context.Profile.UserName;
            response.ContentType = "text/html";
            response.Write(string.Format(responseString, userName, currentData));

            //Save Profile Data
            context.Profile["Color"] = "Blue";
        }
    }
}