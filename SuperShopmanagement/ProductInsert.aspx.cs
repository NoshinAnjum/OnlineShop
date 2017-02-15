using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ProductInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == "logout" || Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Soma"].ConnectionString;

            if (FileUpload1.HasFiles)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//ProductImage//" + str);
                string path = "~//ProductImage//" + str.ToString();
                con.Open();

                SqlCommand com = new SqlCommand("insert into [ProductInfo](ID,ProductName,Price,Quantity,Details,Img) values(@id,'" + TextBoxPN.Text + "','" + TextBoxPrice.Text + "','" + TextBoxQuantity.Text + "','" + TextBoxDetails.Text + "','" + path + "')", con);
                com.Parameters.AddWithValue("@id", newGuid.ToString());

                com.ExecuteNonQuery();
                Response.Redirect("ProductUpdate.aspx");
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
}