//Alan Himes
//ahimes1.cnm.edu
//CalculatorClass.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HimesP4
{
    public class CalculatorClass
    {
        private double num1;
        private double num2;

        public double Num1
        {
            get { return num1; }
            set { num1 = value; calc(); }
        }

        public double Num2
        {
            get { return num2; }
            set { num2 = value; calc(); }
        }
        
        public double Sum { get; set; }
        public double Difference { get; set; }
        public double Product { get; set; }
        public double Quotient { get; set; }

        private void calc()
        {
            Sum = Num1 + Num2;
            Difference = Num1 - Num2;
            Product = Num1 * Num2;
            Quotient = Num1 / Num2;
        }
    }
}