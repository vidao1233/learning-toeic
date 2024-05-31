using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using NgrokApi;
using toeic_web.Models;
using toeic_web.Services.IService;
using toeic_web.ViewModels.Vocabulary;

namespace toeic_web.Controllers
{
    public class VocabularyController : BaseAPIController
    {
        private readonly IVocabularyService _vocabularyService;
        private readonly IMapper _mapper;
        
        public VocabularyController(IVocabularyService vocabularyService, IMapper mapper)
        {
            _vocabularyService = vocabularyService;
            _mapper = mapper;
        }

        [HttpGet]
        [Route("GetAllVocabularies")]
        public async Task<IActionResult> GetAllVocabularies()
        {
            var listVoc = await _vocabularyService.GetAllVocabularies();
            if (listVoc == null)
            {
                return StatusCode(StatusCodes.Status404NotFound,
                    new Response { Status = "Fail", Message = "Data not found !" });
            }
            var response = new List<VocabularyViewModel>();
            foreach (var item in listVoc)
            {
                var obj = _mapper.Map<VocabularyViewModel>(item);
                if (item.image != null)
                {
                    var url = Url.Action(nameof(GetImage), "Vocabulary", new { id = item.idVoc }, Request.Scheme);
                    if (url != null && url.Contains("http://backend"))
                    {
                        url = url.Replace("http://backend", "https://toeic.workon.space");
                    }
                    obj.image = url;
                }  
                response.Add(obj);
            }
            return Ok(response);
        }

        [HttpGet]
        [Route("GetVocabularyById/{id:guid}")]
        public async Task<IActionResult> GetVocabularyById(Guid id)
        {
            var voc = await _vocabularyService.GetVocabularyById(id);
            if (voc == null)
            {
                return StatusCode(StatusCodes.Status404NotFound,
                    new Response { Status = "Fail", Message = "Data not found !" });
            }
            if (voc.image != null)
            {
                var url = Url.Action(nameof(GetImage), "Vocabulary", new { id = voc.idVoc }, Request.Scheme);
                if (url != null && url.Contains("http://backend"))
                {
                    url = url.Replace("http://backend", "https://toeic.workon.space");
                }
                voc.image = url;
            }
            return Ok(voc);
        }

        [HttpGet]
        [Route("GetVocabularyByTopic/{topic}")]
        public async Task<IActionResult> GetAllVocabularyByTopic(string topic)
        {
            var voc = await _vocabularyService.GetAllVocabularyByTopic(topic);
            if (voc == null)
            {
                return StatusCode(StatusCodes.Status404NotFound,
                    new Response { Status = "Fail", Message = "Data not found !" });
            }
            var response = new List<VocabularyViewModel>();
            foreach (var item in voc)
            {
                var obj = _mapper.Map<VocabularyViewModel>(item);
                if (item.image != null)
                {
                    var url = Url.Action(nameof(GetImage), "Vocabulary", new { id = item.idVoc }, Request.Scheme);
                    if (url != null && url.Contains("http://backend"))
                    {
                        url = url.Replace("http://backend", "https://toeic.workon.space");
                    }
                    obj.image = url;
                }
                response.Add(obj);
            }
            return Ok(voc);
        }

        [Authorize]
        [HttpPost]
        [Route("AddVocabulary")]
        public async Task<IActionResult> AddVocabulary([FromForm] VocabularyAddModel model)
        {            
            var response = await _vocabularyService.AddVocabulary(model);
            if (response == true)
            {
                return StatusCode(StatusCodes.Status200OK,
                    new Response { Status = "Success", Message = "Added !" });
            }
            else
                return StatusCode(StatusCodes.Status500InternalServerError,
                    new Response { Status = "Failed", Message = "An issue when insert data !" });
        }

        //[Authorize]
        [HttpPut]
        [Route("UpdateVocabulary/{idVoc:guid}")]
        public async Task<IActionResult> UpdateVocabulary([FromForm]VocabularyUpdateModel model, Guid idVoc)
        {
            var response = await _vocabularyService.UpdateVocabulary(model, idVoc);
            if (response == true)
            {
                return StatusCode(StatusCodes.Status200OK,
                    new Response { Status = "Success", Message = "Updated !" });
            }
            else
                return StatusCode(StatusCodes.Status500InternalServerError,
                    new Response { Status = "Failed", Message = "An issue when update data !" });
        }

        [Authorize]
        [HttpDelete]
        [Route("DeleteVocabulary/{idList:guid}&&{idVoc:guid}")]
        public async Task<IActionResult> DeleteVocabulary(Guid idList, Guid idVoc)
        {
            var response = await _vocabularyService.DeleteVocabulary(idList, idVoc);
            if (response == true)
            {
                return StatusCode(StatusCodes.Status200OK,
                    new Response { Status = "Success", Message = "Deleted !" });
            }
            else
                return StatusCode(StatusCodes.Status400BadRequest,
                    new Response { Status = "Failed", Message = "An issue when delete data !" });
        }
        [HttpGet("GetImage/{id:guid}")]
        public async Task<IActionResult> GetImage(Guid id)
        {
            var vocabulary = await _vocabularyService.GetVocabularyById(id);
            if (vocabulary == null || string.IsNullOrEmpty(vocabulary.image))
            {
                return StatusCode(StatusCodes.Status404NotFound,
                    new Response { Status = "Fail", Message = "Data not found!" });
            }
            byte[] imageBytes = Convert.FromBase64String(vocabulary.image);
            return File(imageBytes, "image/png");
        }
    }
}
