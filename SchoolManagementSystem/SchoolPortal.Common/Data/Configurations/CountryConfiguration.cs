using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SchoolPortal.Common.Models;

namespace SchoolPortal.Common.Data.Configurations
{
    public partial class CountryConfiguration : BaseEntityConfiguration<Country>
    {
        public override void Configure(EntityTypeBuilder<Country> entity)
        {
            base.Configure(entity);

            entity.ToTable("Countries");

            entity.Property(e => e.Name)
                .IsRequired()
                .HasMaxLength(100);

            // Configure relationships with ApplicationUser
            entity.HasOne<ApplicationUser>()
                .WithMany()
                .HasForeignKey(e => e.CreatedBy)
                .OnDelete(DeleteBehavior.Restrict)
                .IsRequired();

            entity.HasOne<ApplicationUser>()
                .WithMany()
                .HasForeignKey(e => e.ModifiedBy)
                .OnDelete(DeleteBehavior.Restrict)
                .IsRequired(false);

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<Country> entity);
    }
} 