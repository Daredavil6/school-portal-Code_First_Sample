using SchoolPortal.Common.DTOs;
using SchoolPortal.Common.Constants;
using System;

namespace SchoolPortal.Common.Services
{
    public abstract class BaseService
    {
        public void SetCreateAuditFields(BaseDto dto, Guid userId)
        {
            dto.CreatedBy = userId;
            dto.CreatedDate = DateTime.UtcNow;
            dto.IsActive = true;
        }

        public void SetUpdateAuditFields(BaseDto dto, Guid userId)
        {
            dto.ModifiedBy = userId;
            dto.ModifiedDate = DateTime.UtcNow;
        }

        public void SetDeleteAuditFields(BaseDto dto, Guid userId)
        {
            dto.ModifiedBy = userId;
            dto.ModifiedDate = DateTime.UtcNow;
            dto.IsActive = false;
        }
    }
} 