using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EmptyMVCTemplate.Startup))]
namespace EmptyMVCTemplate
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
