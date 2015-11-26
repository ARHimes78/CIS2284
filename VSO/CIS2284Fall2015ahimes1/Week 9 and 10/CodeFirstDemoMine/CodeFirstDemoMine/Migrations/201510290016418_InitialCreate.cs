namespace CodeFirstDemoMine.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Departments",
                c => new
                    {
                        DepartmentID = c.Int(nullable: false, identity: true),
                        DepartmentName = c.String(nullable: false, maxLength: 50, unicode: false),
                        DepartmentHeadID = c.Int(),
                        website = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.DepartmentID)
                .ForeignKey("dbo.Employees", t => t.DepartmentHeadID)
                .Index(t => t.DepartmentHeadID);
            
            CreateTable(
                "dbo.Employees",
                c => new
                    {
                        EmployeeID = c.Int(nullable: false, identity: true),
                        SupervisorID = c.Int(),
                        Name = c.String(nullable: false, maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.EmployeeID)
                .ForeignKey("dbo.Employees", t => t.SupervisorID)
                .Index(t => t.SupervisorID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Employees", "SupervisorID", "dbo.Employees");
            DropForeignKey("dbo.Departments", "DepartmentHeadID", "dbo.Employees");
            DropIndex("dbo.Employees", new[] { "SupervisorID" });
            DropIndex("dbo.Departments", new[] { "DepartmentHeadID" });
            DropTable("dbo.Employees");
            DropTable("dbo.Departments");
        }
    }
}
