﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace YachayChild
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
                    new ScriptResourceDefinition
                    {
                        Path = "~/scripts/jquery-1.8.3.min.js",
                        DebugPath = "~/scripts/jquery-1.8.3.js",
                        CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js",
                        CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.js"
                   });
        }
    }
}