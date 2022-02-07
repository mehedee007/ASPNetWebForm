using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace ASP_NET_Mehedee.pages
{

    public partial class ReunionRegistraion : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ASP_NET_MehedeeDB.mdf;Integrated Security=True");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (cBoxAgree.Checked && txtBoxFullName.Text != "" && txtBoxEmail.Text != "" &&
                txtBoxPhoneNumber.Text != "" && txtBoxRoundNo.Text != "")
            {
                con.Open();
                cmd = new SqlCommand("INSERT INTO ReunionRegistration (FullName, EmailAddress, RoundNo, PhoneNumber, Message) Values (@fullname, @emailaddress, @roundno, @phonenumber, @message)", con);
                cmd.Parameters.AddWithValue("@fullname", txtBoxFullName.Text);
                cmd.Parameters.AddWithValue("@emailaddress", txtBoxEmail.Text);
                cmd.Parameters.AddWithValue("@roundno", txtBoxRoundNo.Text);
                cmd.Parameters.AddWithValue("@phonenumber", txtBoxPhoneNumber.Text);
                cmd.Parameters.AddWithValue("@message", txtBoxMessage.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                rtnMessage.Text = "Your record inserted successfully!!!!!!";
                sendEmailToUser();
                sendMailToAuthority();


                txtBoxFullName.Text = "";
                txtBoxEmail.Text = "";
                txtBoxRoundNo.Text = "";
                txtBoxPhoneNumber.Text = "";
                txtBoxMessage.Text = "";
                cBoxAgree.Checked = false;
                rtnMessage.Text = "";
                emailSendSuccess.Text = "";
            }
            else
            {
                rtnMessage.Text = "Read all the condition and also check the checkbox!!!!!";
            }
        }

        private void sendMailToAuthority()
        {

            var fromAddress = "mehedee.cu.soc@gmail.com";
            const string fromPassword = "Shukrani7#";
            var toAddress = "mehedee.cs@outlook.com";
            string subject = "Reunion Program-2021";

            string body = txtBoxFullName.Text + " is comming to the reunion program-2021.\n";
            body += "His/her personal information is like as below-\n";
            body += "Trainee Name : " + txtBoxFullName.Text + "\n";
            body += "Email Address : " + txtBoxEmail.Text + "\n";
            body += "Round Number : " + txtBoxRoundNo.Text + "\n";
            body += "Phone Number : " + txtBoxPhoneNumber.Text + "\n";
            body += "Message : " + txtBoxMessage.Text;
            // smtp Settings
            var smtp = new SmtpClient();
            
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
            Response.Redirect("RegisteredUser.aspx");

        }

        private void sendEmailToUser()
        {
            var fromAddress = "mehedee.cu.soc@gmail.com";
            const string fromPassword = "Shukrani7#";
            var toAddress = txtBoxEmail.Text.ToString();
            string subject = "Reunion Program-2021";
            string body = "Thank you " + txtBoxFullName.Text + " for your interest in participation on our reunion program. " + "\n";
            body += "Looking forward to see you on the reunion program day." + "\n\n";
            body += "============= Program Details =============" + "\n";
            body += "Event Address : New Vision Information Technology (NVIT), 110 CDA Avenue, Nasirabad, (Opposite CTG Shopping Complex) Chittagong- 4000" + "\n";
            body += "Event Date :  Saturday, 02 October 2021" + "\n";
            body += "Event Start Time : Start from 02:00 PM onwards" + "\n";
            body += "Please feel free to call me on (+8801747 193 694) or contact by (learnprogramwithfun@gmail.com), if you require any further information.";

            // SMTP Settings
            var smtp = new SmtpClient();
            
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            
            // Passing Values To SMTP Object
            smtp.Send(fromAddress, toAddress, subject, body);
        }
    }
}