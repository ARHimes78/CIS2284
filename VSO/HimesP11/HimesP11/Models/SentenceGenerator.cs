//Alan Himes
//ahimes1@cnm.edu
//SentenceGenerator.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HimesP11.Models
{
    public class SentenceGenerator
    {
        public string NameOrPronoun { get; set; }
        public string VerbPastTense { get; set; }
        public string Adjective { get; set; }
        public string Noun { get; set; }
        public int Number { get; set; }

        public override string ToString()
        {
            return NameOrPronoun + " " +
                VerbPastTense + " with a(n) " +
                Adjective + " " +
                Noun + " " +
                Number + " time(s).";
        }
    }
}