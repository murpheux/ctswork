using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Test3.model
{
    public class User : Person
    {
        public User(string fname, string lname)
        {
            this.FirstName = fname;
            this.LastName = lname;
        }

        public string EmailAddress { get; set; }

        public DateTime LastLoginDate { get; set; }

        public string LastLoginIPAddress { get; set; }
    }
}