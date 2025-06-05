using System.Text.Json.Serialization;
using SchoolPortal.Common.Constants;

namespace SchoolPortal.Common.DTOs
{
    public abstract class BaseDto
    {
        [JsonPropertyName("id")]
        public Guid Id { get; set; }

        [JsonPropertyName("createdBy")]
        public Guid CreatedBy { get; set; }

        [JsonPropertyName("createdDate")]
        public DateTime CreatedDate { get; set; }

        [JsonPropertyName("modifiedBy")]
        public Guid? ModifiedBy { get; set; }

        [JsonPropertyName("modifiedDate")]
        public DateTime? ModifiedDate { get; set; }

        [JsonPropertyName("status")]
        public string Status { get; set; }

        [JsonPropertyName("statusMessage")]
        public string StatusMessage { get; set; }

        [JsonPropertyName("isActive")]
        public bool IsActive { get; set; }
    }
} 