using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == "logout" || Session["User"] == null)
        {
            Response.Redirect("Login.aspx");
            //Label_Welcome.Text = Session["User"].ToString();
        }
        else
        {
            Label_Welcome.Text = Session["User"].ToString();
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["check"] != null)
        {
            HttpCookie cookie = Request.Cookies["check"];
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.SetCookie(cookie);
            Session["User"] = "logout";
        }
        Response.Redirect("Default.aspx");
    }
}