using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        label_message.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        try
        {
            Guid newGuid = Guid.NewGuid();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Soma"].ConnectionString;
           
            if(FileUpload1.HasFiles)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".")+"//UserImage//"+str);
                string path = "~//UserImage//" + str.ToString();
                con.Open();
               //SqlCommand com = new SqlCommand("insert into [UserInfoF] values(@ID,@Uname,@email,@password,@countr,'" + path + "')", con);
                SqlCommand com = new SqlCommand("insert into [UserData](ID,UserName,Email,Password,Country,Img) values(@id,'" + TextBoxUN.Text+ "','" + TextBoxEmail.Text+ "','" + TextBoxRPass.Text+ "','"+TextBoxCountry.Text+"','" + path + "')", con);
                com.Parameters.AddWithValue("@id", newGuid.ToString());
                com.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                con.Close();
            }
            else
            {
                Response.Write("File could not be uploaded");
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
   
    
    protected void TextBoxUN_TextChanged(object sender, EventArgs e)
    {
       if(!string.IsNullOrEmpty(TextBoxUN.Text))
       {
           SqlConnection con = new SqlConnection();
           con.ConnectionString = ConfigurationManager.ConnectionStrings["Soma"].ConnectionString;
           con.Open();

           SqlCommand cmd = new SqlCommand("select * from [UserData] where Username=@uname", con);

           cmd.Parameters.AddWithValue("@uname", TextBoxUN.Text);

           SqlDataReader dr = cmd.ExecuteReader();

           if(dr.HasRows)
           {
               label_message.Visible = true;
              
               label_message.Text = "User already exist";

               label_message.ForeColor = System.Drawing.Color.Red;
           }
           else
           {
               /*label_message.Visible = true;
               label_message.Text = "User is not available";
               label_message.ForeColor = System.Drawing.Color.Green;*/
           }

       }
    }
}
