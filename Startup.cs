using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Mridini_Blog.Startup))]
namespace Mridini_Blog
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
