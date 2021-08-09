using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_Learning_project
{
    public partial class CourseVideoPlaylist : System.Web.UI.Page
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
                string strcmd = "SELECT Subscription.courseName,Subscription.Username,videoUpload.videoPath,videoUpload.videoTopic"+
                    " from Subscription INNER JOIN videoUpload ON Subscription.courseName=videoUpload.courseName";
               DataTable dt = SQLHelper.FillData(strcmd);
                DataList1.DataSource = dt;
                DataList1.DataBind();


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

       
    }
}