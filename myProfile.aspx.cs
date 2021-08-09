using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace online_Learning_project
{
    public partial class myProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserpic();
            }
        }
        private void LoadUserpic()
        {
            try
            {
                string strcmd = "select picPath from UserPic where RegId=" + Session["UserID"].ToString();
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(strcmd);
                if (dt.Rows.Count > 0)
                {
                   Image1.ImageUrl = dt.Rows[0]["picPath"].ToString();

                }
             
             
            }
            catch (Exception ex)
            {
                LblMsg.Text = ex.Message;
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string strPic = " ";
            if (FileUpload1.HasFile)
            {
                string strFile = FileUpload1.PostedFile.FileName;
                string strCate = Path.GetExtension(strFile);
                if (strCate.ToLower() == ".jpeg" || strCate.ToLower() == ".jpg" || strCate.ToLower() == ".png" || strCate == ".bmp")
                {
                    string strFilePath = Server.MapPath("images/profilepic/");
                    string strFolderName = Guid.NewGuid().ToString();
                    Directory.CreateDirectory(strFilePath + strFolderName);
                    string strVFilePath = "images/profilepic/" + strFolderName + "/";
                    string strFileNameOnly = Path.GetFileName(FileUpload1.FileName);
                    strPic = strVFilePath + strFileNameOnly;
                    strFilePath = Server.MapPath("images/profilepic/" + strFolderName + "/");
                    FileUpload1.SaveAs(strFilePath + FileUpload1.FileName);
                    string strcmd = "select picId from UserPic where RegId=" + Session["UserID"].ToString();
                    DataTable dt = new DataTable();
                    dt = SQLHelper.FillData(strcmd);
                    if(dt.Rows.Count>0)
                       {
                       
                        strcmd = "Update UserPic set picPath='" + strPic + "' where " +
                            "RegId=" + Session["UserId"].ToString();
                    }
                    else
                    {
                        strcmd += "insert into UserPic (RegId,picPath) values ( ";
                        strcmd += Session["UserId"].ToString()+",";
                        strcmd += "'" + strPic + "')";


                    }
                    SQLHelper.ExecuteNonQuery(strcmd);

                }
                else {
                    LblMsg.Text = "Select Image Only...";
                }

            }
            
        }
    }
}