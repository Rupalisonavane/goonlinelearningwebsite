using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_Learning_project
{
    public partial class SubscribeCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string strcmd = "select subscriptionId from Subscription where courseName='" + TextCourseName.Text + "'";
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(strcmd);
                if (dt.Rows.Count > 0)
                {
                    LblMs.Text = " Already Subscribed This Course";
                }
                else
                {
                    strcmd = "insert into Subscription(Categoryd,courseName,Username,Dated) values(";
                    strcmd += TextCatID.Text + ",";
                    strcmd += "'" + TextCourseName.Text + "',";
                    strcmd += "'" + Session["Username"].ToString() + "',";
                    strcmd += "'" + DateTime.Now.ToString("MM-dd-yyyy") + "')";
                    SQLHelper.ExecuteNonQuery(strcmd);
                   
                    LblMs.Text= "Thank you for the Subscription, we will get in contact soon....";

                   

                }

            }
            catch (Exception ex)
            {
                LblMs.Text = ex.Message;
            }
        }
    }
}