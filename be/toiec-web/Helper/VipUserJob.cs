using System;
using System.Linq;
using Microsoft.AspNetCore.Identity;
using toeic_web.Models;
using toeic_web.Services.IService;


namespace toiec_web.Helper
{
    public class VipUserJob
    {
        private readonly IEmailService _emailService;
        private readonly IServiceProvider _serviceProvider;
        private readonly UserManager<Users> _userManager;
        private readonly ToeicDbContext _dbContext;
        private readonly ILogger<VipUserJob> _logger;
        private readonly IWebHostEnvironment _env;

        public VipUserJob(IEmailService emailService, IServiceProvider serviceProvider, UserManager<Users> userManager,
            ToeicDbContext dbContext, ILogger<VipUserJob> logger, IWebHostEnvironment env)
        {
            _emailService = emailService;
            _serviceProvider = serviceProvider;
            _userManager = userManager;
            _dbContext = dbContext;
            _logger = logger;
            _env = env;
        }

        public async Task CheckVIPUserAccess()
        {
            using (var scope = _serviceProvider.CreateScope())
            {
                var dbContext = scope.ServiceProvider.GetRequiredService<ToeicDbContext>();

                var users = dbContext.Users.ToList();
                var webRootPath = _env.WebRootPath;

                if (string.IsNullOrEmpty(webRootPath))
                {
                    throw new Exception("Không tìm thấy thư mục gốc.");
                }

                var templatePath = Path.Combine(webRootPath, "templates", "reminder.html");

                foreach (var user in users)
                {
                    var roles = await _userManager.GetRolesAsync(user);

                    if (roles.Contains("VipStudent"))
                    {
                        var lastAccess = _dbContext.AccessHistories
                                                  .Where(a => a.UserId == user.Id)
                                                  .OrderByDescending(a => a.AccessTime)
                                                  .FirstOrDefault();

                        if (lastAccess == null || lastAccess.AccessTime.Date < DateTime.UtcNow.Date)
                        {
                            // Đọc nội dung từ tệp mẫu HTML
                            var templateContent = File.ReadAllText(templatePath);

                            // Tạo message với nội dung từ tệp mẫu
                            var message = new Message(
                                new string[] { user.Email },
                                $"{user.UserName} ơi, chúng tôi nhớ bạn! Hãy vào VictoryU học tập ngay nhé. Các bạn của bạn đã thi được điểm cao hơn bạn rồi đấy!",
                                templateContent // Truyền nội dung của tệp mẫu vào message
                            );

                            try
                            {
                                _emailService.SendEmail(message);
                                _logger.LogInformation($"Đã gửi email cho {user.Email} thành công.");
                            }
                            catch (Exception ex)
                            {
                                _logger.LogError($"Gửi email cho {user.Email} thất bại: {ex.Message}");
                            }
                        }
                    }
                }
            }
        }
    }
}
