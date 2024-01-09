﻿using System;
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
    public partial class Login : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select * from oe_members where UserName = @lname and pwd = @pwd", con);
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 10).Value = txtemail.Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 10).Value = txtpass.Text;

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session.Add("mid", dr["mid"]);
                    Session.Add("fullname", dr["fullname"]);
                    Session.Add("UserName", txtemail.Text.Trim());
                    Session.Add("dlv", dr["dlv"]);
                    // update MEMBERS table for DLV
                    dr.Close();
                    cmd.CommandText = "update oe_members set dlv = getdate() where UserName = @lname";
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    lblMsg.Text = "Invalid Login!";
                    dr.Close();
                }

            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error --> " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

      
    }
}