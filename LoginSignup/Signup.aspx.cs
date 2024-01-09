using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace LoginSignup
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                // check whether login name is unique 
                SqlCommand cmd = new SqlCommand("select * from oe_members where UserName = @lname", con);
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 30).Value = txtEmployeeid.Text.Trim();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Label3.Text = "Login name is not unqiue. Plase enter a different login name!";
                    return;
                }
                dr.Close();

                // check whether email address is unique
                cmd.Parameters.Clear();
                cmd.CommandText = "select * from oe_members where email = @email";
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = txtEmail.Text;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Label3.Text = "Email address is not unqiue!";
                    return;
                }
                dr.Close();

                // get next MID
                cmd.CommandText = "select  isnull(max(mid),0) + 1 from oe_members";
                int mid = (Int32)cmd.ExecuteScalar();
                // insert row into OE_MEMEBERS
                cmd.Parameters.Clear();
                cmd.CommandText = "insert into oe_members (mid,UserName,pwd,fullname,email,RegDate,Office,Designation)values(@mid,@UserName,@pwd,@fullname,@email,getdate(),@Office,@Designation)";
                cmd.Parameters.Add("@mid", SqlDbType.Int).Value = mid;
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 10).Value = txtEmployeeid.Text.Trim();
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 10).Value = txtPwd.Text.Trim();
                cmd.Parameters.Add("@fullname", SqlDbType.VarChar, 30).Value = txtFname.Text.Trim();
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 30).Value = txtEmail.Text.Trim();
                cmd.Parameters.Add("@Office", SqlDbType.VarChar, 50).Value = txtoffice.Text.Trim();
                cmd.Parameters.Add("@Designation", SqlDbType.VarChar, 50).Value = txtdesg.Text.Trim();
                if (cmd.ExecuteNonQuery() > 0)
                    Label3.Text = "Registration is successful. Please click <a href=Login.aspx>here</a> to login!";
                else
                    Label3.Text = "Sorry! Some error occured during registration!";
            }
            catch (Exception ex)
            {
                Label3.Text = "Error --> " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}