using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_Learning_project.Admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(string.IsNullOrEmpty(Session["RoleID"]as string)|| Session["RoleID"].ToString()!="1")
            {
                Response.Redirect("~/signin.aspx");
            }
            if (!Page.IsPostBack)
            {
                LblUserName.Text = Session["Username"].ToString();
            }
            
        }

        protected void LbnLogOut_Click(object sender, EventArgs e) { 
         Session["RollId"] = " ";
            Session["RollName"] = " ";
            Session["UserName"] = " ";
            Response.Redirect("~/signin.aspx");

        }
    }
}