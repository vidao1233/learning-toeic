using AutoMapper;
using Microsoft.EntityFrameworkCore;
using Microsoft.SqlServer.Management.Smo;
using toeic_web.Infrastructure;
using toeic_web.Models;
using toeic_web.Repository.IRepository;

namespace toeic_web.Repository
{
    public class VocabularyRepository : Repository<Vocabulary>, IVocabularyRepository
    {
        private readonly IUnitOfWork _uow;
        private readonly IMapper _mapper;
        private readonly ToeicDbContext _toeicDbContext;

        public VocabularyRepository(ToeicDbContext dbContext, IUnitOfWork uow, IMapper mapper, ToeicDbContext toeicDbContext) 
            : base(dbContext)
        {
            _uow = uow;
            _mapper = mapper;
            _toeicDbContext = toeicDbContext;
        }

        public async Task<bool> AddVocabulary(VocabularyModel model, string userId)
        {
            try
            {               
                var voc = _mapper.Map<Vocabulary>(model);
                voc.idVoc = Guid.NewGuid();
                Entities.Add(voc);
                _uow.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public async Task<bool> AddVocabularyToList(Guid listId, VocabularyModel model)
        {
            var vocList = await _toeicDbContext.VocList
                .Include(v => v.Vocabularies)
                .FirstOrDefaultAsync(v => v.idVocList == listId);
            var vocItem = _mapper.Map<Vocabulary>(model);

            if (vocList == null)
            {
                return false;
            }
            vocList.Vocabularies.Add(vocItem);
            vocList.quantity = vocList.Vocabularies.Count;
            _toeicDbContext.Update(vocList);
            _uow.SaveChanges() ;
            return true;
        }

        public async Task<bool> DeleteVocabulary(Guid vocId)
        {
            var voc = GetById(vocId);
            if (voc == null)
            {
                return await Task.FromResult(false);
            }
            Entities.Remove(voc);
            _uow.SaveChanges();
            return await Task.FromResult(true);
        }

        public async Task<IEnumerable<VocabularyModel>> GetAllVocabularies()
        {
            var listData = new List<VocabularyModel>();
            var data = await Entities.OrderBy(v => v.engWord).ToListAsync();
            foreach (var item in data)
            {
                var obj = _mapper.Map<VocabularyModel>(item);
                listData.Add(obj);
            }
            return listData;
        }

        public async Task<IEnumerable<VocabularyModel>> GetAllVocabularyByTopic(string topic)
        {
            var listData = new List<VocabularyModel>();
            var data = await Entities.OrderBy(v => v.engWord).ToListAsync();
            foreach(var item in data)
            {
                if(item.topic == topic)
                {
                    var obj = _mapper.Map<VocabularyModel>(item);
                    listData.Add(obj);
                }
            }
            return listData;
        }

        public async Task<VocabularyModel> GetVocabularyById(Guid vocId)
        {
            IAsyncEnumerable<Vocabulary> vocs = Entities.AsAsyncEnumerable();
            await foreach (var voc in vocs)
            {
                if (voc.idVoc == vocId)
                {
                    VocabularyModel data = _mapper.Map<VocabularyModel>(voc);
                    return data;
                }
            }
            return null;
        }

        public async Task<bool> RemoveVocabularyFromList(Guid listId, Guid vocabularyId)
        {
            var vocList = await _toeicDbContext.VocList
                .Include(v => v.Vocabularies)
                .FirstOrDefaultAsync(v => v.idVocList == listId);

            if (vocList != null)
            {
                var vocItem = vocList.Vocabularies.FirstOrDefault(v => v.idVoc == vocabularyId);
                if (vocItem != null)
                {
                    vocList.Vocabularies.Remove(vocItem);
                    vocList.quantity = vocList.Vocabularies.Count;
                    _toeicDbContext.Update(vocList);
                    var deleted = await DeleteVocabulary(vocItem.idVoc);
                    if (deleted)
                    {
                        _uow.SaveChanges();
                        return true;
                    }                    
                }
            }
            return false;
        }

        public async Task<bool> UpdateVocabulary(VocabularyModel model, Guid vocId)
        {
            try
            {
                var voc = _mapper.Map<Vocabulary>(model);
                voc.idVoc = vocId;
                Entities.Update(voc);
                _uow.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
