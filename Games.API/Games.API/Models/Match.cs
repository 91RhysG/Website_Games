using System.ComponentModel.DataAnnotations;

namespace Games.API.Models
{
    public class Match
    {
        [Required] public int Id { get; set; }
        [Required] public int EventId { get; set; }
        [Required] public DateOnly DateAdded { get; set; }
        [Required] public DateTime LastUpdated { get; set; }
        [Required] public string PlayerOne { get; set; } = null!;
        [Required] public string PlayerTwo { get; set; } = null!;

        [Required, Range(1, 2, ErrorMessage = "The value for {0} must be between {1} and {2}.")]
        public int WinningPlayerId { get; set; } //This is either 1 or 2 to represent the winner for the time being

        [Required] public string Result { get; set; } = null!; //This is to provide a 'report' on the results of the match
    }
}
