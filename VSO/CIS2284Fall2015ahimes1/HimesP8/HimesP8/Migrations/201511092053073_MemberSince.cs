//Alan Himes
//ahimes1@cnm.edu
//201511092053073_MemberSince.cs

namespace HimesP8.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class MemberSince : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Members", "MemberSince", c => c.DateTime());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Members", "MemberSince");
        }
    }
}
