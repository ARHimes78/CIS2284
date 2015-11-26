using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ValidatedControlsDemo
{
    [Serializable]
    public class SurveyData
    {
        public String Name { get; set; }
        public String Profession { get; set; }
        public Int16 Age { get; set; }
        private Double number;
        public Double Number 
        {
            get { return number; }
            set
            {
                if (value > 10 && value < 100)
                {
                    number = value;
                }
                else
                {
                    throw new Exception("out of range");
                }
            } 
        }
        public DateTime ArrivalDate { get; set; }
        public String Email { get; set; }
        public Double NumDiv5 { get; set; }
        public String PhotoURL { get; set; }
        public String ListBoxSelection { get; set; }
        public Boolean CheckBoxSelection { get; set; }
        public List<string> CheckBoxListSelections { get; set; }
        public String RadioButtonSelection { get; set; }
        public String Password { get; set; }

        public string ToString()
        {
            string returnText = Name + " is a " + Age + "-year old " + Profession + "<br />Checked Items: <br />";

            foreach (string item in CheckBoxListSelections)
            {
                returnText += "<br />- " + item;
            }

            return returnText;
        }

    }
}