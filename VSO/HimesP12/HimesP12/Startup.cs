using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HimesP12.Startup))]
namespace HimesP12
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
