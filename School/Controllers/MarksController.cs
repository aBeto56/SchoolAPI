using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using School.Models;

namespace School.Controllers
{
    [Route("mark")]
    [ApiController]
    public class MarksController : ControllerBase
    {
        [HttpPost]
        public ActionResult<Mark> Post(CreateMarkDto createMarkDto)
        {
            var mark = new Mark
            {
                Id = Guid.NewGuid(),
                MarkNumber = createMarkDto.MarkNumber,
                MarkText = createMarkDto.MarkText,
                Description = createMarkDto.Description,
                CreatedTime = DateTime.Now,
                UpdatedTime = DateTime.Now,
            };
            if (mark != null) 
            {
                using (var context = new LibraryContext())
                {
                    context.Marks.Add(mark);
                    context.SaveChanges();
                    return StatusCode(201, mark);
                }
            }
                return BadRequest();
        }
    }
}
