using Google;
using System.Security.Claims;
using toeic_web.Models;
using toiec_web.Data;

namespace toiec_web.Helper
{
    public class AccessHistoryMiddleware
    {
        private readonly RequestDelegate _next;
        private readonly IConfiguration _configuration;

        public AccessHistoryMiddleware(RequestDelegate next, IConfiguration configuration)
        {
            _next = next;
            _configuration = configuration;
        }

        public async Task Invoke(HttpContext context, ToeicDbContext dbContext)
        {
            if (context.User.Identity.IsAuthenticated)
            {
                var userId = context.User.FindFirstValue(ClaimTypes.NameIdentifier);
                var timeZoneById = TimeZoneInfo.FindSystemTimeZoneById(_configuration["TimeZoneId"]);
                var timeNow = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, timeZoneById);
                var accessHistory = new AccessHistory
                {
                    UserId = userId,
                    AccessTime = timeNow
                };

                dbContext.AccessHistories.Add(accessHistory);
                await dbContext.SaveChangesAsync();
            }

            await _next(context);
        }
    }
}
