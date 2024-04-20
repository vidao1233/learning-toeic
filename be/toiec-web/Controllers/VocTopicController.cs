using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using toeic_web.Models;
using toeic_web.Services.IService;
using toeic_web.ViewModels.VocTopic;
using toiec_web.Services;
using toiec_web.Services.IService;

namespace toeic_web.Controllers
{
    public class VocTopicController : BaseAPIController
    {
        private readonly IVocTopicService _vocTopicService;
        private readonly ToeicDbContext _dbContext;
        private readonly IExcelHelperService _excelHelper;

        public VocTopicController(IVocTopicService vocTopicService, ToeicDbContext dbContext,
            IExcelHelperService excelHelper) 
        {
            _vocTopicService = vocTopicService;
            _dbContext = dbContext;
            _excelHelper = excelHelper;
        }

        [HttpGet]
        [Route("GetAllVocTopic")]
        public async Task<IActionResult> GetAllVocTopic()
        {
            var listTopic = await _vocTopicService.GetAllVocTopics();
            if (listTopic == null)
            {
                return StatusCode(StatusCodes.Status404NotFound);
            }
            return Ok(listTopic);
        }

        [HttpGet]
        [Route("GetVocTopicById/{id:guid}")]
        public async Task<IActionResult> GetVocTopicById(Guid id)
        {
            var topic = await _vocTopicService.GetVocTopicById(id);
            if (topic == null)
            {
                return StatusCode(StatusCodes.Status404NotFound);
            }
            return Ok(topic);
        }

        [Authorize(Roles = "Professor")]
        [HttpPost]
        [Route("AddVocTopic")]
        public async Task<IActionResult> AddVocTopic(VocTopicAddModel model, string userId)
        {
            var response = await _vocTopicService.AddVocTopic(model, userId);
            if (response == true)
            {
                return StatusCode(StatusCodes.Status200OK);
            }
            else
                return StatusCode(StatusCodes.Status500InternalServerError);
        }

        [Authorize(Roles = "Professor")]
        [HttpPut]
        [Route("UpdateVocTopic/{idTopic:guid}&&{userId}")]
        public async Task<IActionResult> UpdateVocTopic(VocTopicUpdateModel model, Guid idTopic, string userId)
        {
            var response = await _vocTopicService.UpdateVocTopic(model, idTopic, userId);
            if (response == true)
            {
                return StatusCode(StatusCodes.Status200OK);
            }
            else
                return StatusCode(StatusCodes.Status500InternalServerError);
        }

        [Authorize(Roles = "Professor")]
        [HttpDelete]
        [Route("DeleteVocTopic/{id:guid}")]
        public async Task<IActionResult> DeleteVocTopic(Guid id)
        {
            var response = await _vocTopicService.DeleteVocTopic(id);
            if (response == true)
            {
                return Ok(response);
            }
            else
                return StatusCode(StatusCodes.Status404NotFound);
        }

        [HttpGet("download")]
        public async Task<FileResult> Download(CancellationToken ct)
        {
            var topics = await _dbContext.VocabularyTopics.ToListAsync(ct);
            var file = await _excelHelper.CreateFile(topics);
            return File(file, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "vocTopics.xlsx");
        }
    }
}
