using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SchoolPortal.Common.Entities;
using SchoolPortal.Common.Models;

namespace SchoolPortal.Common.Data.Configurations
{
    public class BaseEntityConfiguration<T> : IEntityTypeConfiguration<T> where T : BaseEntity
    {
        public virtual void Configure(EntityTypeBuilder<T> builder)
        {
            builder.HasKey(e => e.Id);

            builder.Property(e => e.IsActive)
                .IsRequired()
                .HasDefaultValue(true);

            builder.Property(e => e.IsDeleted)
                .IsRequired()
                .HasDefaultValue(false);

            builder.Property(e => e.CreatedBy)
                .IsRequired();

            builder.Property(e => e.CreatedDate)
                .IsRequired();

            builder.Property(e => e.Status)
                .HasMaxLength(10)
                .IsUnicode(false);

            builder.Property(e => e.StatusMessage)
                .HasMaxLength(250)
                .IsUnicode(false);

            // Configure relationship with ApplicationUser for CreatedBy (required)
            builder.HasOne<ApplicationUser>()
                .WithMany()
                .HasForeignKey(e => e.CreatedBy)
                .OnDelete(DeleteBehavior.Restrict)
                .IsRequired();

            // Configure relationship with ApplicationUser for ModifiedBy (optional)
            builder.HasOne<ApplicationUser>()
                .WithMany()
                .HasForeignKey(e => e.ModifiedBy)
                .OnDelete(DeleteBehavior.Restrict)
                .IsRequired(false);
        }
    }
} 