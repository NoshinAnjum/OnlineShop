﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (Session["Admin"] == "logout" || Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
}