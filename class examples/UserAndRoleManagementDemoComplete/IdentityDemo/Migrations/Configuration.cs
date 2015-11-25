namespace IdentityDemo.Migrations
{
    using IdentityDemo.Models;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<IdentityDemo.Models.ApplicationDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
            ContextKey = "IdentityDemo.Models.ApplicationDbContext";
        }

        protected override void Seed(IdentityDemo.Models.ApplicationDbContext context)
        {            
            RoleManager<IdentityRole> roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            UserManager<ApplicationUser> userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

            if (!roleManager.RoleExists("Administrator"))
            {
                roleManager.Create(new IdentityRole("Administrator"));
            }

            var user = new ApplicationUser { UserName = "sa@aserver.net", Email = "sa@aserver.net", EmailConfirmed = true };


            if (userManager.FindByName("sa@aserver.net") == null)
            {
                var result = userManager.Create(user, "Password1!");

                if (result.Succeeded)
                {
                    userManager.AddToRole(user.Id, "Administrator");
                }
            }
        }
    }
}
