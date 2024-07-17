using toeic_web.Models;

namespace toiec_web.Data
{
    public class AccessHistory
    {
        public Guid Id { get; set; }
        public string UserId { get; set; }
        public DateTime AccessTime { get; set; }

        public virtual Users Users { get; set; }
    }
}
