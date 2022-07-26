using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;


namespace Tracking {
    internal class MangaDto {
        [Required]
        [Key]
        public string ID_Manga { get; set; }
        [Required]
        public string Title { get; set; }
        public string? TitleTranslated { get; set; }
        [Required]
        public string Author { get; set; }
        public string? Serialization { get; set; }
        public int? Chapters { get; set; }
        public int? ChaptersRead { get; set; }
        public float? Score { get; set; }
        [Required]
        public string ReleaseDate { get; set; }
        public string? Thumbnail { get; set; }
    }
}
