using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MangaListAPI.data;
using MangaListAPI.Models;

namespace MangaListAPI.Controllers {
    [Route("api/[controller]")]
    [ApiController]
    public class MangaController : ControllerBase {

        private readonly MangaDBContext _context;
        public MangaController(MangaDBContext context) => _context = context;

        [HttpGet]
        public async Task<IEnumerable<Manga>> Get() 
            => await _context.Mangas.ToListAsync();


        [HttpGet("id")]
        [ProducesResponseType(typeof(Manga), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<IActionResult> GetById(string id) {
            var manga = await _context.Mangas.FindAsync(id);
            return manga == null ? NotFound() : Ok(manga);
        }

        [HttpPost]
        [ProducesResponseType(StatusCodes.Status201Created)]
        public async Task<IActionResult> Create(Manga manga) {
            await _context.Mangas.AddAsync(manga);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetById), new { id = manga.ID_Manga }, manga);
        }

        [HttpPut("{id}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        public async Task<IActionResult> Update(string id, Manga manga) {
            if (id != manga.ID_Manga) return BadRequest();
            _context.Entry(manga).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            return NoContent();
        }

        [HttpDelete("{id}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<IActionResult> Delete(string id) {
            var issueToDelete = await _context.Mangas.FindAsync(id);
            if (issueToDelete == null) return NotFound();

            _context.Mangas.Remove(issueToDelete);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
    
}
