using System;
using System.Collections.Generic;

namespace School.Models;

public partial class Student
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public int Age { get; set; }

    public string Email { get; set; } = null!;

    public int CreatedTime { get; set; }

    public virtual ICollection<Mark> Marks { get; set; } = new List<Mark>();
}
