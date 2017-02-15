using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"]==null)
        Session["User"] = "logout";
        HttpCookie cookie = Request.Cookies["check"];
        if(cookie!=null)
        {
            Session["User"] = "login";
        }
        if (Session["User"]!="logout")
        {
            Response.Redirect("User.aspx");
        }
    }
}