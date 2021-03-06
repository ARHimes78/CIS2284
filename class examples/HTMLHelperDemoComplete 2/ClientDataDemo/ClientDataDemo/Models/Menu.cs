﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClientDataDemo.Models
{
    public class Menu
    {
        public int Id { get; set; }

        [Required, StringLength(50)]
        public string Text { get; set; }

        [DisplayName("Price"), DisplayFormat(DataFormatString="{0:C}")]
        public double Price { get; set; }

        [DataType(DataType.Date)]
        public DateTime Date { get; set; }

        [StringLength(10)]
        public string Category { get; set; }
        
        //public Menu(int id, string text, double price, DateTime date, string category)
        //{
        //    Id = id;
        //    Text = text;
        //    Price = price;
        //    Date = date;
        //    Category = category;
        //}
    }
}
