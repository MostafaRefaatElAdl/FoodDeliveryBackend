#nullable disable
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace RestaurantDeliveryBackend.Models
{
    public partial class RestaurantDeliveryContext : DbContext
    {
        public RestaurantDeliveryContext()
        {
        }

        public RestaurantDeliveryContext(DbContextOptions<RestaurantDeliveryContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<Meal> Meals { get; set; }
        public virtual DbSet<OrderItem> OrderItems { get; set; }
        public virtual DbSet<Restaurant> Restaurants { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Meal>(entity =>
            {
                entity.Property(e => e.MealId).ValueGeneratedNever();

                entity.HasOne(d => d.Restaurant)
                    .WithMany(p => p.Meals)
                    .HasForeignKey(d => d.RestaurantID)
                    .HasConstraintName("FK__Meal__Restaurant__6FE99F9F");
            });

            modelBuilder.Entity<OrderItem>(entity =>
            {
                entity.HasKey(e => e.OrderId)
                    .HasName("PK__OrderIte__C3905BCF93ED613B");

                entity.HasOne(d => d.Client)
                    .WithMany(p => p.OrderItems)
                    .HasForeignKey(d => d.ClientID)
                    .HasConstraintName("FK__OrderItem__Clien__72C60C4A");

                entity.HasOne(d => d.Meal)
                    .WithMany(p => p.OrderItems)
                    .HasForeignKey(d => d.MealID)
                    .HasConstraintName("FK__OrderItem__MealI__73BA3083");
            });

            modelBuilder.Entity<Restaurant>(entity =>
            {
                entity.HasKey(e => e.RestId)
                    .HasName("PK__Restaura__02F04D4A1125A198");

                entity.Property(e => e.RestId).ValueGeneratedNever();
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}