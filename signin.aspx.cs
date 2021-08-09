using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace online_Learning_project
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string cmd = "SELECT RegID,Username,Upassword,Active,RoleId FROM RegTable where Username='" + TextUsername.Text + "'";
               
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(cmd);
                if (dt.Rows.Count > 0)
                {
                    bool boolActive = Convert.ToBoolean(dt.Rows[0]["Active"]);
                    if (boolActive)
                    {
                        string strPassword = dt.Rows[0]["Upassword"].ToString();

                        if (TextPassword.Text == strPassword)
                        {
                            Session["UserId"] = dt.Rows[0]["RegID"].ToString();
                            Session["Username"] = TextUsername.Text;
                            Session["RoleID"] = dt.Rows[0]["RoleID"].ToString();
                            if (Session["RoleID"].ToString() == "1")
                            { 
                                Response.Redirect("~/Admin/index.aspx");
                            }
                          
                            else
                            {
                                Response.Redirect("~/default.aspx");
                            }
                        }
                        else
                        {
                            LblMsg.Text = "Invalid Password";
                        }

                    }
                    else
                    {
                        LblMsg.Text = "Account is Suspended...";
                    }
                }
               else {


                }
                }catch (Exception ex)
            {
                LblMsg.Text = ex.Message;
            }

        }
    }
}