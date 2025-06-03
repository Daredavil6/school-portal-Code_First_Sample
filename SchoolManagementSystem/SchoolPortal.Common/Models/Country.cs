using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using SchoolPortal.Common.Entities;

namespace SchoolPortal.Common.Models
{
    [Table("Countries")]
    public class Country : BaseEntity
    {
        [Required]
        [StringLength(100)]
        public string Name { get; set; }
    }
}
