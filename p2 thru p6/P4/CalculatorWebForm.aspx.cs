//Alan Himes, ahimes1@cnm.edu, CalculatorWebForm.aspx.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimesP4
{
    public partial class CalculatorWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                CalculatorClass calc = new CalculatorClass();
                calc.Num1 = double.Parse(txbNum1.Text);
                calc.Num2 = double.Parse(txbNum2.Text);
                lblAnswer.Text = calc.Sum.ToString();
            }
            catch (FormatException fex)
            {
                lblAnswer.Text = "Please enter numbers only!";
            }
        }

        protected void btnSubtract_Click(object sender, EventArgs e)
        {
            try
            {
                CalculatorClass calc = new CalculatorClass();
                calc.Num1 = double.Parse(txbNum1.Text);
                calc.Num2 = double.Parse(txbNum2.Text);
                lblAnswer.Text = calc.Difference.ToString();
            }
            catch (FormatException fex)
            {
                lblAnswer.Text = "Please enter numbers only!";
            }
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            try
            {
                CalculatorClass calc = new CalculatorClass();
                calc.Num1 = double.Parse(txbNum1.Text);
                calc.Num2 = double.Parse(txbNum2.Text);
                lblAnswer.Text = calc.Product.ToString();
            }
            catch (FormatException fex)
            {
                lblAnswer.Text = "Please enter numbers only!";
            }
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            try
            {
                CalculatorClass calc = new CalculatorClass();
                calc.Num1 = double.Parse(txbNum1.Text);
                calc.Num2 = double.Parse(txbNum2.Text);
                if (calc.Quotient.ToString() == "NaN")
                    lblAnswer.Text = "Not a number.";
                else if (calc.Quotient.ToString() == "Infinity")
                    lblAnswer.Text = "You divided a number by zero!";
                else
                    lblAnswer.Text = calc.Quotient.ToString();
            }
            catch (FormatException fex)
            {
                lblAnswer.Text = "Please enter numbers only!";
            }
        }
    }
}