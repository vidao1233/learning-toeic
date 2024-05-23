namespace toiec_web.ViewModels.Comment
{
    public class FirstCommentViewModel
    {
        public Guid idComment { get; set; }
        public Guid idLesson { get; set; }
        public string idUser { get; set; }
        public string username { get; set; }
        public string? imageURL { get; set; }
        public Guid? idCommentReply { get; set; }
        public string content { get; set; }
        public DateTime createdDate { get; set; }
        public bool isDeleted { get; set; }

    }
}
