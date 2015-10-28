using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.Web.Security;

namespace MembershipDemo
{
    public class UserProfile : ProfileBase
    {
        public static UserProfile GetUserProfile(string username)
        {
            return Create(username) as UserProfile;
        }
        public static UserProfile GetUserProfile()
        {
            return Create(Membership.GetUser().UserName) as UserProfile;
        }

        [SettingsAllowAnonymous(false)]
        public string FirstName
        {
            get { return base["FirstName"] as string; }
            set { base["FirstName"] = value; }
        }

        [SettingsAllowAnonymous(false)]
        public string LastName
        {
            get { return base["LastName"] as string; }
            set { base["LastName"] = value; }
        }

        [SettingsAllowAnonymous(false)]
        public string LastVisited
        {
            get { return base["LastVisited"] as string; }
            set { base["LastVisited"] = value; }
        }

        [SettingsAllowAnonymous(false)]
        public string Age
        {
            get { return base["Age"] as string; }
            set { base["Age"] = value; }
        }

        [SettingsAllowAnonymous(false)]
        public string Member
        {
            get { return base["Member"] as string; }
            set { base["Member"] = value; }
        }
    }
}