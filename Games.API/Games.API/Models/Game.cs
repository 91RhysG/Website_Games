using System.ComponentModel.DataAnnotations;

namespace Games.API.Models;

public class Game
{

    [Required] public int Id { get; set; }
    [Required] public DateOnly DateAdded { get; set; }
    [Required] public DateTime LastUpdated { get; set; }
    [Required] public string Name { get; set; } = null!;
    [Required] public string Description { get; set; } = null!;
    [Required] public string Type { get; set; } = null!;
    [Required] public double Rating { get; set; }
    [Required] public int NumberOfVotes { get; set; }
    [Required] public List<Event>? Events { get; set; }
}