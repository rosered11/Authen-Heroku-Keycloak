using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;

namespace Authentication.DataAccess
{
    public static class Extensions
    {
        public static IHost MigrateDatabase(this IHost webHost)
        {
            // Manually run any pending migrations if configured to do so.
            var env = Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT");

            if (env == "Development")
            {
                var serviceScopeFactory = (IServiceScopeFactory)webHost.Services.GetService(typeof(IServiceScopeFactory));

                using (var scope = serviceScopeFactory.CreateScope())
                {
                    var services = scope.ServiceProvider;
                    var dbContext = services.GetRequiredService<ApplicationDbContext>();

                    dbContext.Database.Migrate();
                }
            }

            return webHost;
        }
    }
}
