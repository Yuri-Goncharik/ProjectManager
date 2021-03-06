﻿using System;
using System.Collections.Generic;
using ProjectManager.ApplicationCore.Dto;
using ProjectManager.Common;
using ProjectManager.Web.Common;
using ProjectManager.Web.ViewModels;

namespace ProjectManager.Web.Converters
{
    public class EmployeeDtoConverter : IConvert<EmployeeVm, EmployeeDto>
    {
        public EmployeeDto Convert(EmployeeVm item)
        {
            return new EmployeeDto
            {
                Id = item.Id,
                LastName = item.LastName,
                FirstName = item.FirstName,
                Patronymic = item.Patronymic,
                Position = item.Position.ToString()
            };
        }

        public IList<EmployeeDto> Convert(IList<EmployeeVm> items)
        {
            List<EmployeeDto> EmployeesDto = new List<EmployeeDto>();
            foreach (var item in items)
            {
                EmployeesDto.Add(Convert(item));
            }

            return EmployeesDto;
        }
    }
}
