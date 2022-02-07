using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_NET_Mehedee.pages
{
    public partial class ASPCrudTest : System.Web.UI.Page
    {
        string gender;
        string cs = ConfigurationManager.ConnectionStrings["aspDB"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                DateTime today = DateTime.Today;
                rvGraduationDate.MaximumValue = today.ToShortDateString();
                rvGraduationDate.MinimumValue = "01/01/2014";
            }
            StudentPreview();

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void radBtnGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(radBtnGender.SelectedIndex == 0)
            {
                gender=radBtnGender.Items[0].Value;
            }
            else if (radBtnGender.SelectedIndex == 1)
            {
                gender = radBtnGender.Items[1].Value;
            }
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                //DateTime dt = Convert.ToDateTime(txtDateTest.Text);
                //txtDateTest.Text = dt.ToString("dd/MM/yyyy");
                cmd = new SqlCommand("EXEC sp_StudentInsertUserInsert '"+txtStudentName.Text+"','"+gender+"','"+ddlUniversity.SelectedValue+"','"+txtEmail.Text+"','"+txtDateTest.Text+"','','"+txtUserName.Text+"','"+txtPassword.Text+"', '"+ddlDepartments.SelectedValue+"'", con);
                
                con.Open();
                cmd.ExecuteNonQuery();
            }
            lblMessage.Visible = true;
            lblMessage.Text = "Student Registered with UserName '"+txtUserName.Text+"'";
            StudentClear();
            //StudentPreview();
            gVStudentInfo.DataBind();
        }

        public void StudentPreview ()
        {
            if (Page.IsPostBack)
            {
                gVStudentInfo.DataBind();
            }
        }

        public void StudentClear()
        {
            txtUserName.Text = null;
            txtPassword.Text = null;
            txtPassword0.Text = null;
            txtStudentName.Text = null;
            txtEmail.Text = null;
        }

        protected void gVStudentInfo_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSelectId.Visible = true;
            txtSelectId.Visible = true;
            txtUserName.Visible = false;
            txtPassword.Visible = false;
            txtPassword0.Visible = false;
            GridViewRow row = gVStudentInfo.SelectedRow;
            txtSelectId.Text = row.Cells[1].Text;
            txtStudentName.Text = row.Cells[2].Text;
            txtEmail.Text = row.Cells[5].Text;
            txtDateTest.Text = row.Cells[6].Text;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            lblMessage.Visible = true;
            using (con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("UPDATE StudentRegistration SET StudentName ='" + txtStudentName.Text+ "', Gender='"+gender+"', University='"+ddlUniversity.SelectedValue+ "',StudentEmail='"+txtEmail.Text+ "',GraduationDate='"+txtDateTest.Text+"' WHERE RegistraionNo='" + txtSelectId.Text+"'", con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            lblMessage.Text = "User ID '" + txtSelectId.Text + "' Updated!";
            StudentClear();
            StudentPreview();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("DELETE FROM StudentRegistration WHERE RegistraionNo='" + txtSelectId.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            lblMessage.Text = "Record Deleted.";
            StudentClear();
            StudentPreview();
        }

        protected void gVStudentInfo_PreRender(object sender, EventArgs e)
        {
            if(gVStudentInfo.HeaderRow != null)
            {
                gVStudentInfo.HeaderRow.TableSection = TableRowSection.TableHeader;
                gVStudentInfo.HeaderRow.TableSection = TableRowSection.TableBody;
                gVStudentInfo.FooterRow.TableSection = TableRowSection.TableFooter;
            }
        }
    }
}