//Alan Himes 
//ahimes1@cnm.edu 
//ProfileTest.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HimesP3
{
    [Serializable]
    public class ProfileTest
    {
        public override string ToString()
        {
            return base.ToString() + "Profile String Test Message";
        }
    }
}