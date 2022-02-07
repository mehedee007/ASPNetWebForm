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
    public partial class TreeCrudTest : System.Web.UI.Page
    {
        string refundable;
        string cs = ConfigurationManager.ConnectionStrings["aspDB"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        //DateTime dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            TreeRefresh();
        }

        public void TreeRefresh ()
        {
            if (Page.IsPostBack)
            {
                grdViewTree.DataBind();
            }
        }

        protected void radBtnListRefundable_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (radBtnListRefundable.SelectedIndex == 0)
            {
                refundable = "Yes";
            }
            else if (radBtnListRefundable.SelectedIndex == 1)
            {
                refundable = "No";
            }
        }

        protected void btnTreeRegister_Click(object sender, EventArgs e)
        {
            lblMessage.Visible = true;
            using (con = new SqlConnection (cs))
            {
                string accessories = CheckBoxList1.SelectedValue;
                cmd = new SqlCommand("INSERT INTO TreeRegister VALUES ('"+txtTreeName.Text+"', '"+ddlTreeType.SelectedValue+"','"+ accessories + "', '"+txtTreeRegisterDate.Text+"','"+refundable+"')", con);
                
                con.Open();
                cmd.ExecuteNonQuery();
            }
            lblMessage.Text = "Tree Added.";
            TreeRefresh();
            txtTreeName.Text = "";
        }

        protected void grdViewTree_SelectedIndexChanged(object sender, EventArgs e)
        {
            //using (con = new SqlConnection (cs))
            //{
            //    con.Open();
            //    cmd = new SqlCommand("SELECT * FROM TreeRegister", con);
            //    SqlDataReader reader = cmd.ExecuteReader();
            //    reader.Read();
            //    txtTreeName.Text = reader["TreeName"].ToString();
            //    lblMessage.Text = reader["SerialNo"].ToString();
            //}
            lblMessage.Visible = true;
            GridViewRow row = grdViewTree.SelectedRow;
            lblMessage.Text = row.Cells[1].Text;
            txtTreeName.Text = row.Cells[2].Text;
            txtTreeRegisterDate.Text = row.Cells[5].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string accessories = CheckBoxList1.SelectedValue;
            lblMessage.Visible = true;
            using (con = new SqlConnection (cs))
            {
                //dt = new DateTime(txtTreeRegisterDate.MaxLength);
                //txtTreeRegisterDate.Text = string.Format("{0:yyyy/dd/MMMM}",dt);
                con.Open();
                cmd = new SqlCommand("UPDATE TreeRegister SET TreeName = '" + txtTreeName.Text + "',  TreeType='"+ddlTreeType.SelectedValue+ "',  Accessories ='"+accessories+ "',  TreeRegister='" + txtTreeRegisterDate.Text.Trim().ToString() + "' WHERE SerialNo = '" + lblMessage.Text + "'", con);
                
                cmd.ExecuteNonQuery();
                
                con.Close();
            }
            TreeRefresh();
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnDeleteTree_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("DELETE FROM TreeRegister WHERE SerialNo = '"+lblMessage.Text+"'", con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            lblMessage.Text = "Record Deleted.";
            TreeRefresh();
        }
    }
}