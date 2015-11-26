using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirstDemoMine
{
    class Program
    {
        static void Main(string[] args)
        {
            //using is the same thing as "try finally"
            //keeps from leaving the connection open all the time
            using(var db = new DemoDBContext())
            {
                Console.Write("Employee Name: ");
                var name = Console.ReadLine();

                var employee = new Employee { Name = name };
                db.Employees.Add(employee);
                //instead of setting up a connection string
                //and all the other things to put data into the database use this:
                db.SaveChanges();

                //call method to display employees in database
                DisplayEmployees(db);

                //Ask user for emp to modify
                Console.Write("Enter ID of employee to modify name: ");
                int empID = int.Parse(Console.ReadLine());
                Console.Write("Enter new name: ");
                string newName = Console.ReadLine();


                //update employee
                //you need a First or To List in order to get objects
                Employee empToChange = (from e in db.Employees
                                        where e.EmployeeID == empID
                                        select e).First();

                empToChange.Name = newName;
                db.SaveChanges();
                //call method to display employees in database
                DisplayEmployees(db);

                //delete
                Console.Write("ID of employee to delete: ");
                int delID = int.Parse(Console.ReadLine());

                //delete employee
                Employee empToRemove = (from e in db.Employees
                                        where e.EmployeeID == delID
                                        select e).First();
                db.Employees.Remove(empToRemove);
                db.SaveChanges();

                //call method to display employees in database
                DisplayEmployees(db);

            }
        }

        private static void DisplayEmployees(DemoDBContext db)
        {
            //write a query to display all employees
            var query = from e in db.Employees
                        orderby e.EmployeeID
                        select e;

            Console.WriteLine("All employees in the database: ");
            foreach (var item in query)
            {
                Console.WriteLine(item.EmployeeID + " " + item.Name);
            }
        }
    }
}
