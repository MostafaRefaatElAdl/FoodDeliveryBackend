#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace RestaurantDeliveryBackend.Models
{
    [Table("Restaurant")]
    public partial class Restaurant
    {
        public Restaurant()
        {
            Meals = new HashSet<Meal>();
        }

        [Key]
        public int RestId { get; set; }
        [Required]
        [StringLength(50)]
        public string RestName { get; set; }
        [Required]
        [StringLength(500)]
        public string RestImage { get; set; }
        [Required]
        [StringLength(300)]
        public string RestLocation { get; set; }
        [StringLength(200)]
        public string RestDescription { get; set; }

        [InverseProperty("Restaurant")]
        public virtual ICollection<Meal> Meals { get; set; }
    }
}