using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_Learning_project.Admin
{
    public partial class addCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                LoadData();
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            try
            {
                string strcmd = "select Categoryd from Category where CatName='" + TextCategory.Text + "'";
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(strcmd);
                if (dt.Rows.Count > 0)
                {
                    LblCategory.Text = "Category Name is Already Exist";
                }
                else
                {
                    strcmd = "insert into Category (CatName,Description, facultyName) values('" + TextCategory.Text + "','" + TextDescription.Text + "','xyz')";

                    SQLHelper.ExecuteNonQuery(strcmd);
                    Clear();
                    LblCategory.Text = "Successfully Added";
                    LoadData();
                }

            }

            catch (Exception ex)
            {
                LblCategory.Text = ex.Message;
            }

        }

        private void Clear()
        {
            TextCategory.Text = "";
            TextDescription.Text = "";
            TextCategory.Focus();
        
        }
        private void LoadData()
        {
            try
            {
                string strcmd = "select Categoryd,CatName from Category order by Categoryd";
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(strcmd);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception  ex)
            {
                LblCategory.Text = ex.Message;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Ed")
            {
                int Ind = Convert.ToInt32(e.CommandArgument);
                HiddenField1.Value = GridView1.Rows[Ind].Cells[0].Text;
               TextCategory.Text = GridView1.Rows[Ind].Cells[1].Text;

                update.Enabled = false;
                add.Enabled = true;

               
            }
            else
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string strCategoryId = GridView1.Rows[index].Cells[0].Text;
                try
                {
                    string strcmd = "Delete From Category where Categoryd =" + strCategoryId;
                    SQLHelper.ExecuteNonQuery(strcmd);
                    LblCategory.Text = "Category Deleted Successfully";

                    LoadData();

                }
                catch (Exception ex)
                {
                    LblCategory.Text = ex.Message;
                }
            }

        }

        protected void update_Click(object sender, EventArgs e)
        {
            try
            {
                string strcmd = "Update Category set courseName=";
                strcmd += "'"+TextCategory + "',";
                strcmd += "'" + TextDescription + "'";
                strcmd += "where Categoryd=" + HiddenField1.Value;
                SQLHelper.ExecuteNonQuery(strcmd);
               LblCategory.Text = "Category Updated Successfully";
                Clear();
                LoadData();



            }
            catch (Exception ex)
            {
                LblCategory.Text = ex.Message;
            }
        }
    }
}