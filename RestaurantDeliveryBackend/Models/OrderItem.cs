#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace RestaurantDeliveryBackend.Models
{
    [Table("OrderItem")]
    public partial class OrderItem
    {
        [Key]
        public int OrderId { get; set; }
        public int? ClientID { get; set; }
        public int? MealID { get; set; }
        public int Quantity { get; set; }

        [ForeignKey("ClientID")]
        [InverseProperty("OrderItems")]
        public virtual Client Client { get; set; }
        [ForeignKey("MealID")]
        [InverseProperty("OrderItems")]
        public virtual Meal Meal { get; set; }
    }
}