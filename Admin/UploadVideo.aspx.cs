using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace online_Learning_project.Admin
{
    public partial class UploadVideo : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();
            }

        }
        protected void BtnCourse_Click(object sender, EventArgs e)
        {
            try {
                FileUpload1.SaveAs(Server.MapPath("~/videos/") + Path.GetFileName(FileUpload1.FileName));
                string link = "/videos/" + Path.GetFileName(FileUpload1.FileName);
                link = "<video width=400 controls  autoplay=False type=video/mp4 src=" + link + "></video>";
                string strcmd = "insert into videoUpload(Categoryd,courseName,videoTopic,videoPath) values(";
                strcmd += TextCategory.Text + ",";
                strcmd += "'" + CourseName.Text + "',";
                strcmd += "'" + TextTopic.Text + "',";
                strcmd += "'" + link + "')";
                SQLHelper.ExecuteNonQuery(strcmd);
                LblCourse.Text = "Course Added Successfully";
            } catch (Exception ex)
            {
                LblCourse.Text = ex.Message;
            }
        }
        private void LoadData()
        {
            try
            {
                string strcmd = "select videoId,courseName,videoTopic,videoPath from videoUpload";
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
            if (e.CommandName == "Del")
            {
                int Ind = Convert.ToInt32(e.CommandArgument);
                string strvideoID = GridView1.Rows[Ind].Cells[0].Text;

                try
                {
                    string strcmd = "Delete From videoUpload where videoId =" + strvideoID;
                    SQLHelper.ExecuteNonQuery(strcmd);

                    LblCourse.Text = "Course Deleted Successfully";

                    LoadData();

                }
                catch (Exception ex)
                {
                    LblCourse.Text = ex.Message;
                }
            }
        }
    }



}