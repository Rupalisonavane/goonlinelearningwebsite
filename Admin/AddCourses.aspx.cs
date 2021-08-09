using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_Learning_project.Admin
{
    public partial class AddCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();
            }

        }

        private void Clear()
        { 
            CourseName.Text = "";
            Duration.Text = "";
            Button1.Enabled = false;
            BtnCourse.Enabled = true;
            TextCategory.Focus();

        }
        protected void BtnCourse_Click(object sender, EventArgs e)
      {
            string strPic = " ";
            if (FileUpload1.HasFile)
            {
                string strFile = FileUpload1.PostedFile.FileName;
                string strCate = Path.GetExtension(strFile);
                if (strCate.ToLower() == ".jpeg" || strCate.ToLower() == ".jpg" || strCate.ToLower() == ".png" || strCate == ".bmp")
                {
                    string strFilePath = Server.MapPath("~/images/CoursesImg/");
                    string strFolderName = Guid.NewGuid().ToString();
                    Directory.CreateDirectory(strFilePath + strFolderName);
                    string strVFilePath = "~/images/CoursesImg/" + strFolderName + "/";
                    string strFileNameOnly = Path.GetFileName(FileUpload1.FileName);
                    strPic = strVFilePath + strFileNameOnly;
                    strFilePath = Server.MapPath("~/images/CoursesImg/" + strFolderName + "/");
                    FileUpload1.SaveAs(strFilePath + FileUpload1.FileName);

                    string strcmd = "insert into course(Categoryd,courseName,duration,picPath,Dated,Totalviews) values(";
                    strcmd +=  TextCategory.Text + ",";
                    strcmd+="'"+CourseName.Text+"',";
                    strcmd += "'" + Duration.Text + "',";
                    strcmd += "'" + strPic + "',";
                    strcmd += "'" + DateTime.Now.ToString("MM-dd-yyyy") + "',";
                    strcmd +=0 +")";
                    SQLHelper.ExecuteNonQuery(strcmd);
                    LblCourse.Text = "Course Added Successfully";
                    LoadData();

                        }
                else
                {
                    LblCourse.Text = "Select Image Only...";
                }

            }
            else
            {
                LblCourse.Text = "Select any Picture";
            }

        }
        private void LoadData()
        {
         
            try
            {
               string strcmd = "select CourseId,Categoryd,courseName,picPath,Totalviews from course order by Categoryd";
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(strcmd);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception  ex)
            {
                LblCourse.Text = ex.Message;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Ed")
            {
                int Ind = Convert.ToInt32(e.CommandArgument);
                HiddenField1.Value = GridView1.Rows[Ind].Cells[0].Text;
                CourseName.Text = GridView1.Rows[Ind].Cells[1].Text;

                BtnCourse.Enabled = false;
                Button1.Enabled = true;


            }
            else
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string strCourseId = GridView1.Rows[index].Cells[0].Text;
                try
                {
                    string strcmd = "Delete From course where CourseId=" + strCourseId;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string strcmd = "Update course set courseName=";
                strcmd += TextCategory + ",";
                strcmd += "'" + CourseName.Text + "',";
                strcmd += Duration.Text + ",";
                strcmd += "where courseId=" + HiddenField1.Value;
                SQLHelper.ExecuteNonQuery(strcmd);
                LblCourse.Text = "Course Updated Successfully";
                Clear();
                LoadData();

                

            }
            catch (Exception ex)
            {
                LblCourse.Text = ex.Message;
            }
        }

    }
}
