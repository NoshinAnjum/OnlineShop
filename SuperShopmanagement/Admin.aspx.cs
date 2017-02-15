using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] != "logout" || Session["Admin"] == null)
        {
            Label_Welcome.Text = Session["Admin"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["check"] != null)
        {
            HttpCookie cookie = Request.Cookies["check"];
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.SetCookie(cookie);
            Session["Admin"] = "logout";
        }
        Response.Redirect("Default.aspx");
    }
}