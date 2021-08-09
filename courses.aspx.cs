using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_Learning_project
{
    public partial class courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                LoadData();
            }
           
        }
        private void LoadData()
        {
            try
            {
                string strcmd= "select Category.Categoryd,Category.CatName,course.CourseId,course.courseName,"+
                    "CASE WHEN course.picPath is Null THEN '~/images/webdevelopment.png' ELSE course.picPath end as picPath from" +
                    " Category INNER JOIN course ON  course.Categoryd = Category.Categoryd order by Category.Categoryd";
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(strcmd);
                DataList1.DataSource = dt;
                DataList1.DataBind();


            }catch(Exception ex)
            {
                throw ex;
            }
        }
       

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubscribeCourse.aspx");
        }
    }
}