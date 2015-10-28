using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExtMethodDemo
{
    public static class StringExtension
    {
        public static string Capitalize(this String str)
        {
            if (str == null)
            {
                return null;
            }
            else if (str.Length > 1)
            {
                return char.ToUpper(str[0]) + str.Substring(1);
            }
            else
            {
                return str.ToUpper();
            }
        }
    }
}

