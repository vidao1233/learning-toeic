using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.SqlServer.Management.Smo;
using toeic_web.Models;
using toeic_web.Repository.IRepository;
using toeic_web.Services.IService;
using toeic_web.ViewModels.VocTopic;

namespace toeic_web.Services
{
    public class VocTopicService : IVocTopicService
    {
        private readonly IVocTopicRepository _vocTopicRepository;
        private readonly IMapper _mapper;
        private readonly UserManager<Users> _userManager;

        public VocTopicService(IVocTopicRepository vocTopicRepository, IMapper mapper, UserManager<Users> userManager) 
        {
            _vocTopicRepository = vocTopicRepository;
            _mapper = mapper;
            _userManager = userManager;
        }
        public async Task<bool> AddVocList(VocListAddModel model, string userId)
        {
            //find author
            var user = await _userManager.FindByIdAsync(userId);

            var data = _mapper.Map<VocListModel>(model);
            data.idVocList = new Guid();
            data.idUser = userId;
            data.author = user.UserName;
            data.quantity = 0;
            return await _vocTopicRepository.AddVocList(data);
        }

        public async Task<bool> DeleteVocList(Guid topicId)
        {
            return await _vocTopicRepository.DeleteVocList(topicId);
        }

        public async Task<IEnumerable<VocListViewModel>> GetAllVocList()
        {
            var data = await _vocTopicRepository.GetAllVocList();
            List<VocListViewModel> listData = new List<VocListViewModel>();
            if (data != null)
            {
                foreach (var item in data)
                {
                    var obj = _mapper.Map<VocListViewModel>(item);
                    listData.Add(obj);
                }
            }
            return listData;
        }

        public async Task<IEnumerable<VocListViewModel>> GetVocListByUser(string idUser)
        {
            var data = await _vocTopicRepository.GetVocListByUser(idUser);
            List<VocListViewModel> listData = new List<VocListViewModel>();
            if (data != null)
            {
                foreach (var item in data)
                {
                    var obj = _mapper.Map<VocListViewModel>(item);
                    listData.Add(obj);
                }
            }
            return listData;
        }

        public async Task<bool> UpdateVocList(VocListUpdateModel model, Guid listId, string userId)
        {
            //find author
            var user = await _userManager.FindByIdAsync(userId);

            var data = _mapper.Map<VocListModel>(model);
            data.idVocList = listId;
            data.idUser = userId;
            data.author = user.UserName;
            data.quantity = 0;
            return await _vocTopicRepository.UpdateVocList(data);

        }
    }
}
