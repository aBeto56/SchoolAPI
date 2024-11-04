namespace School.Models
{
    public record CreateStudentDto(string Name, sbyte Age, string Email)
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
    }
    public record CreateMarkDto(string Name, sbyte MarkNumber, string MarkText, string Description, Guid StudentId)
    {
        public string Name { get; set; }
        public sbyte MarkNumber { get; set; }
        public string MarkText { get; set; }
        public string Description { get; set; }
        public Guid StudentId { get; set; }
    }
}

