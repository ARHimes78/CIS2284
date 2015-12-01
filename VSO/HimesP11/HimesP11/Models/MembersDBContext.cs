namespace HimesP11.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class MembersDBContext : DbContext
    {
        public DbSet<Member> Members { get; set; }

        public MembersDBContext()
            : base("name=MembersDB")
        {
        }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
