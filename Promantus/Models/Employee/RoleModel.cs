using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Promantus.Models.Employee
{
    public class RoleModel
    {
        public int Id { get; set; }
        public string RoleName { get; set; }
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:DD/mm/yyyy}")]
        public DateTime CreatedOn { get; set; }
        public System.Guid CreatedBy { get; set; }
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:DD/mm/yyyy}")]
        public DateTime ModifiedOn { get; set; }
        public System.Guid ModifiedBy { get; set; }
        public Boolean IsDeleted { get; set; }
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:DD/mm/yyyy}")]
        public DateTime DeletedOn { get; set; }
        public System.Guid DeletedBy { get; set; }
    }
}