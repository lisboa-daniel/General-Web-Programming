using Microsoft.EntityFrameworkCore;
using MangaListAPI.Models;

namespace MangaListAPI.data {
    public class MangaDBContext : DbContext{
        public MangaDBContext(DbContextOptions<MangaDBContext> options)
        :base(options)
        {     
        }

        public DbSet<Manga> Mangas { get; set; }

    }
}
