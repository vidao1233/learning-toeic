using toiec_web.Models;

namespace toiec_web.Repository.IRepository
{
    public interface ICommentRepository
    {
        Task<IEnumerable<CommentModel>> GetCommentFirst(Guid idLesson);
        Task<IEnumerable<CommentModel>> GetCommentSecond(Guid idComment);
        Task<bool> AddComment(CommentModel model);
        Task<bool> UpdateComment(CommentModel model, Guid idComment);
        Task<bool> DeleteComment(Guid idComment, string idUser);
    }
}
