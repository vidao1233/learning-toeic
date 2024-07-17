using MimeKit;
using System.Collections.Generic;
using System.Linq;

namespace toeic_web.Models
{
    public class Message
    {
        public List<MailboxAddress> To { get; set; }
        public string Subject { get; set; }
        public string Content { get; set; }
        public string? TemplateFilePath { get; set; }
        public Dictionary<string, string>? TemplateValues { get; set; }
        public Message(IEnumerable<string> to, string subject, string content, 
            string? templateFilePath = null, Dictionary<string, string>? templateValues = null)
        {
            To = new List<MailboxAddress>();
            To.AddRange(to.Select(x => new MailboxAddress("email", x)));
            Subject = subject;
            Content = content;
            TemplateFilePath = templateFilePath; // Khởi tạo đường dẫn đến tệp mẫu HTML
            TemplateValues = templateValues ?? new Dictionary<string, string>();
        }
    }
}
