using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Visible = false;
    }


    protected void ButtonLogin_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["Soma"].ConnectionString;
        con.Open();
        if (TextBoxUsername.Text == "Admin")
        {
            Session["Admin"] = TextBoxUsername.Text;
            //Response.Redirect("User.aspx");
        }
        else
        {
            Session["User"] = TextBoxUsername.Text;
            //Response.Redirect("User.aspx");
        }
        string checkuser = "select count (*) from [UserData] where UserName = '" + TextBoxUsername.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);

        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string checkPasswordQuery = "select password from [UserData] where UserName ='"+TextBoxUsername.Text+"'";
            SqlCommand passCom = new SqlCommand(checkPasswordQuery, con);
            string password = passCom.ExecuteScalar().ToString().Replace(" ", "");
            if(password == TextBoxPassword.Text)
            {
               if (Session["Admin"] != null)
                {
                    Session["Admin"] = TextBoxUsername.Text;
                    Response.Redirect("Admin.aspx");
               }
                else
                {
                    Session["User"] = TextBoxUsername.Text;
                    Response.Redirect("User.aspx");
                }
            }

            else
            {
                
                Response.Redirect("Login.aspx");
                //Label1.Visible = true;
                //Label1.Text = "Forgot Password!";
            }
        }
        else
        {
            Response.Redirect("Login.aspx");            
        }
    }
    protected void remember_CheckedChanged(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("check");
        cookie["check"] = "login";
        cookie.Expires = DateTime.Now.AddDays(1);
        Response.SetCookie(cookie);
    }
    
}