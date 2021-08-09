using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_Learning_project.Admin
{
    public partial class enrolledStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();
            }

        }
 
        private void LoadData()
        {
            try
            {
                string strcmd = "select subscriptionId,courseName,Username,Dated from Subscription order by subscriptionId desc";
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(strcmd);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

     

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Del")
            { 
            int Ind = Convert.ToInt32(e.CommandArgument);
                 string strCourseId = GridView1.Rows[Ind].Cells[0].Text;
                
                try
                {
                    string strcmd = "Delete From Subscription where subscriptionId=" + strCourseId;
                    SQLHelper.ExecuteNonQuery(strcmd);

                   LblMs.Text  = "Course Deleted Successfully";

                    LoadData();

                }
                catch (Exception ex)
                {
                    LblMs.Text = ex.Message;
                }
            }
        }
    }
}