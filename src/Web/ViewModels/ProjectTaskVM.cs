﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using ProjectManager.Controllers;
using ProjectManager.Web.Common;

namespace ProjectManager.Web.ViewModels
{
    public class ProjectTaskVm
    {
        public int Id { get; set; }
        [Display(Name = "Project short name")]
        [MaxLength(50, ErrorMessage = "Project short name should not be longer than 50 simbols")]
        public string ProjectShortName { get; set; }
        [Display(Name = "Project task name")]
        [Required(ErrorMessage = "Enter Project task name")]
        [MaxLength(50, ErrorMessage = "Project Task name should not be longer than 50 simbols")]
        public string Name { get; set; }
        [Display(Name = "Time to complete")]
        public int? TimeToComplete { get; set; }
        [DataType(DataType.Date)]
        public DateTime? BeginDate { get; set; }
        [DataType(DataType.Date)]
        public DateTime? EndDate { get; set; }
        [Display(Name = "Employee full name")]
        public string EmployeeFullName { get; set; }
        public ProjectTaskStatus Status { get; set; }
        [Required(ErrorMessage = "Choose ProjectId")]
        public int ProjectId { get; set; }
        public int EmployeeId { get; set; }
    }
}
