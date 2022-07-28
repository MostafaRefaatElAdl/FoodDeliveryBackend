#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace RestaurantDeliveryBackend.Models
{
    [Table("Meal")]
    public partial class Meal
    {
        public Meal()
        {
            OrderItems = new HashSet<OrderItem>();
        }

        [Key]
        public int MealId { get; set; }
        [Required]
        [StringLength(50)]
        public string MealName { get; set; }
        [Required]
        [StringLength(500)]
        public string MealImage { get; set; }
        [StringLength(200)]
        public string MealDescription { get; set; }
        [Column(TypeName = "money")]
        public decimal MealPrice { get; set; }
        public int? RestaurantID { get; set; }

        [ForeignKey("RestaurantID")]
        [InverseProperty("Meals")]
        public virtual Restaurant Restaurant { get; set; }
        [InverseProperty("Meal")]
        public virtual ICollection<OrderItem> OrderItems { get; set; }
    }
}