using SchoolPortal.Common.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchoolPortal.Common.DTOs
{
    public class CreateCountryDto : BaseEntity
    {
        public CreateCountryDto()
        {
            Id = Guid.NewGuid();
            CreatedBy = new Guid("368BD1DF-42D6-4F05-9CA0-8DF22191B917");
            Status = "Create";
            StatusMessage = "Country Added Successfully";
            CreatedDate = DateTime.UtcNow;
        }

        [Display(Name = "Country name")]
        public string Name { get; set; } = string.Empty;
    }

    public class UpdateCountryDto : BaseEntity
    {
        public UpdateCountryDto()
        {
            CreatedBy = new Guid("368BD1DF-42D6-4F05-9CA0-8DF22191B917");
            Status = "Modified";
            StatusMessage = "Country Updated Successfully";
            CreatedDate = DateTime.UtcNow;
            ModifiedBy = new Guid("368BD1DF-42D6-4F05-9CA0-8DF22191B917");
            // ModifiedDate will be set in the service layer when actually updating
        }

        [Display(Name = "Country name")]
        public string Name { get; set; } = string.Empty;
    }

    public class ViewCountryDto : BaseEntity
    {
        [Display(Name = "Country name")]
        public string Name { get; set; }
    }
}
