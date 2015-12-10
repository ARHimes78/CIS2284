using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OrangeTeamProject.Startup))]
namespace OrangeTeamProject
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
