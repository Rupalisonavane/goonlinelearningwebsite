using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_Learning_project
{
    public partial class RegistrationStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string strcmd = "select RegId from RegTable where Username='" + TextUsername.Text + "'";
                DataTable dt = new DataTable();
                dt = SQLHelper.FillData(strcmd);
                if (dt.Rows.Count > 0)
                {
                    LblMsg.Text = "User Already Exist Please try Another Name";
                }
                else
                {
                    strcmd = "insert into RegTable (FullName,Username,Upassword,UcfmPass,RoleId,Active,Address,Contact,Ueducation,UCollegeName,secQue,secAns,Dated) values(";
                    strcmd += "'" + TextFullName.Text + "',";
                    strcmd += "'" + TextUsername.Text + "',";
                    strcmd += "'" + TextPass.Text + "',";
                    strcmd += "'" + TextCfmPass.Text + "',";
                    strcmd +=  2+","  ;
                    strcmd += 1+",";
                    strcmd += "'" + TextAddress.Text + "',";
                    strcmd +=  TextContact.Text + ",";
                    strcmd += "'" + DropDownEdu.SelectedValue + "',";
                    strcmd += "'" + TextclgName.Text + "',";
                    strcmd += "'" + DropDownSecQue.SelectedValue + "',";
                    strcmd += "'" + TextsecAns.Text + "',";
                    strcmd += "'" + DateTime.Now.ToString("MM-dd-yyyy") + "')";
                        SQLHelper.ExecuteNonQuery(strcmd);
                    MultiView1.ActiveViewIndex = 1;




                }

            }
            catch (Exception ex)
            {
                LblMsg.Text = ex.Message;
            }
        }
    }
}