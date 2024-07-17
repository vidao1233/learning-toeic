using MailKit.Net.Smtp;
using MimeKit;
using toeic_web.Models;
using toeic_web.Services.IService;

namespace toeic_web.Services
{
    public class EmailService : IEmailService
    {
        private readonly EmailConfiguration _emailConfig;

        public EmailService(EmailConfiguration emailConfig) => _emailConfig = emailConfig;

        public void SendEmail(Message message)
        {
            var emailMessage = CreateEmailMessage(message);
            Send(emailMessage);
        }

        private MimeMessage CreateEmailMessage(Message message)
        {
            var emailMessage = new MimeMessage();
            emailMessage.From.Add(new MailboxAddress("VICTORYU_CENTER", _emailConfig.From));
            emailMessage.To.AddRange(message.To);
            emailMessage.Subject = message.Subject;

            if (!string.IsNullOrEmpty(message.TemplateFilePath))
            {
                // Load email template from file
                var templatePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, message.TemplateFilePath);
                var templateContent = File.ReadAllText(templatePath);

                // Replace placeholders with actual values
                var finalHtml = ReplaceTemplatePlaceholders(templateContent, message.TemplateValues);

                // Set message body as HTML
                var htmlBody = new TextPart(MimeKit.Text.TextFormat.Html)
                {
                    Text = finalHtml
                };

                emailMessage.Body = htmlBody;
            }
            else
            {
                // If no template file path is specified, use message.Content directly
                var htmlBody = new TextPart(MimeKit.Text.TextFormat.Html)
                {
                    Text = message.Content
                };

                emailMessage.Body = htmlBody;
            }

            return emailMessage;
        }

        private string ReplaceTemplatePlaceholders(string templateContent, Dictionary<string, string> templateValues)
        {
            foreach (var kvp in templateValues)
            {
                templateContent = templateContent.Replace(kvp.Key, kvp.Value);
            }
            return templateContent;
        }

        private void Send(MimeMessage mailMessage)
        {
            using var client = new SmtpClient();
            try
            {
                client.Connect(_emailConfig.SmtpServer, _emailConfig.Port, true);
                client.AuthenticationMechanisms.Remove("XOAUTH2");
                client.Authenticate(_emailConfig.UserName, _emailConfig.Password);

                client.Send(mailMessage);
            }
            catch
            {
                //log an error message or throw an exception or both
                throw;
            }
            finally
            {
                client.Disconnect(true);
                client.Dispose();
            }
        }
    }
}
