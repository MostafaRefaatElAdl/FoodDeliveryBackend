#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace RestaurantDeliveryBackend.Models
{
    [Table("Client")]
    public partial class Client
    {
        public Client()
        {
            OrderItems = new HashSet<OrderItem>();
        }

        [Key]
        public int ClientId { get; set; }
        [Required]
        [StringLength(50)]
        public string ClientName { get; set; }
        [Required]
        [StringLength(15)]
        public string ClientPhone { get; set; }
        [StringLength(70)]
        public string ClientEmail { get; set; }
        [Required]
        [StringLength(300)]
        public string ClientAddress { get; set; }

        [InverseProperty("Client")]
        public virtual ICollection<OrderItem> OrderItems { get; set; }
    }
}