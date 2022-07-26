using System.Net.Http.Headers;
using System.Net.Http.Json;
using Tracking;

HttpClient client = new();
client.BaseAddress = new Uri("https://localhost:7102");
client.DefaultRequestHeaders.Accept.Clear();
client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));


HttpResponseMessage response = await client.GetAsync("api/manga");
response.EnsureSuccessStatusCode();

if (response.IsSuccessStatusCode)
{
    var mangas = await response.Content.ReadFromJsonAsync<IEnumerable<MangaDto>>();
    foreach(var manga in mangas)
    {
        Console.WriteLine(manga.Title);
    }
} else
{
    Console.WriteLine("Not found results");
}

Console.ReadLine();