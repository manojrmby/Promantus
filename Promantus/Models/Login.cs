using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Promantus.Models
{
    public class Login
    {
        public Guid Loginid { get; set; }
        [Required]
        public string UserId { get; set; }


        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        public int RoleID { get; set; }
    }
}