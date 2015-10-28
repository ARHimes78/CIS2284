using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO; 

namespace CustomModuleDemo
{
    public class ModuleSample : IHttpModule 
    {
        private const string allowedAddressesFile = "AllowedAddresses.txt"; 
        private List<string> allowedAddresses; 

        public void Dispose() 
        {
        }
        
        public void Init(HttpApplication context) 
        {
            context.LogRequest += new EventHandler(OnLogRequest); 
            context.BeginRequest += BeginRequest; 
            context.PreRequestHandlerExecute += PreRequestHandlerExecute; 
        } 
        
        private void BeginRequest(object sender, EventArgs e) 
        {
            LoadAddresses((sender as HttpApplication).Context); 
        }
        
        private void LoadAddresses(HttpContext context) 
        {
            if (allowedAddresses == null) 
            {
                string path = context.Server.MapPath(allowedAddressesFile); 
                allowedAddresses = File.ReadAllLines(path).ToList(); 
            }
        }
        
        private void PreRequestHandlerExecute(object sender, EventArgs e) 
        {
            HttpApplication app = sender as HttpApplication; 
            HttpRequest req = app.Context.Request; 
            if (!allowedAddresses.Contains(req.UserHostAddress)) 
            {
                throw new HttpException(403, "IP address denied"); 
            }
        }

        public void OnLogRequest(Object source, EventArgs e)
        { // custom logging logic can go here 
        }

        void IHttpModule.Dispose()
        {
            
        }

        void IHttpModule.Init(HttpApplication context)
        {
            
        }
    }
}