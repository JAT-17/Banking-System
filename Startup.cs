using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Banking_System.Startup))]
namespace Banking_System
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
