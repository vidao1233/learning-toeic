namespace toeic_web.Models
{
    public class VocTopic
    {
        public Guid idVocTopic { get; set; }
        public string idUser { get; set; }
        public string name { get; set; }
        public virtual ICollection<Vocabulary> Vocabularies { get; set; }
        public virtual Users Users { get; set; }
    }
}
