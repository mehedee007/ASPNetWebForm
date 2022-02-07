using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ASP_NET_Mehedee.pages
{
    public partial class TraineeInfo : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["aspDB"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        //SqlDataAdapter adapter;
        //DataTable dt;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            TraineeRefresh();
        }

        protected void btnAddTrainee_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("INSERT INTO Trainee VALUES ('"+txtTraineeName.Text+"', '"+txtGender.Text+"', '"+txtEmail.Text+"', '"+txtContact.Text+"')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblMessage.Visible = true;
                lblMessage.Text = "Trainee Added.";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                TraineeRefresh();
            }
        }

        public void TraineeRefresh ()
        {
            if (Page.IsPostBack)
            {
                gVTrainee.DataBind();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("DELETE FROM Trainee WHERE TraineeID = '"+lblTraineeId.Text+"'");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblMessage.Text = "Trainee Deleted.";

            }
        }

        protected void gVTrainee_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lblTraineeId.Visible = true;
            //lblTraineeId.Text = this.gVTrainee.SelectedRow.Cells.ToString();
        }
    }
}