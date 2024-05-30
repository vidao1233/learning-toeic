using toeic_web.Models;

namespace toeic_web.Repository.IRepository
{
    public interface IVocabularyRepository
    {
        Task<IEnumerable<VocabularyModel>> GetAllVocabularies();
        Task<VocabularyModel> GetVocabularyById(Guid vocId);
        Task<IEnumerable<VocabularyModel>> GetAllVocabularyByTopic(string topic);
        Task<bool> AddVocabulary(VocabularyModel model, string userId);
        Task<bool> AddVocabularyToList(Guid listId, VocabularyModel model);
        Task<bool> RemoveVocabularyFromList(Guid listId, Guid vocabularyId);
        Task<bool> UpdateVocabulary(VocabularyModel model, Guid vocId);
        Task<bool> DeleteVocabulary(Guid vocId);
    }
}
