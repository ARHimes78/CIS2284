using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HimesP6
{
    public class SurveyInput
    {
        public string Name { get; set; }
        public string Band { get; set; }
        public string Season { get; set; }
        public string YesNo { get; set; }
        public string Colors { get; set; }
        public string Matter { get; set; }
        public DateTime Date { get; set; }
        public string ImgUrl { get; set; }

        public override string ToString()
        {
            return "I ran into " + Name + " at a(n) " + Band + " concert last " + Season + "." +
                " Was it fun? " + YesNo + ". Then, I saw something that could only be described as a " +
                Colors + " " + Matter + ", but I've decided not to tell anybody about it until " +
                Date.ToShortDateString() + ". In the mean time, I will be thinking of the following image:";

        }
    }
}