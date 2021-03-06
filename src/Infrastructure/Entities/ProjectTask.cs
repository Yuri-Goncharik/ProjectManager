﻿using System;
using System.ComponentModel.DataAnnotations;


namespace ProjectManager.Infrastructure.Models
{
    public class ProjectTask
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int? TimeToComplete { get; set; }
        [DataType(DataType.Date)]
        public DateTime? BeginDate { get; set; }
        [DataType(DataType.Date)]
        public DateTime? EndDate { get; set; }
        public string Status { get; set; }
        public int ProjectId { get; set; }
        public int EmployeeId { get; set; }

        public virtual Employee Employee { get; set; }
        public virtual Project Project { get; set; }
    }
}
