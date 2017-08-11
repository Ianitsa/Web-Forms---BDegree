using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;

namespace IaniDProject
{
    public partial class Contacts : Inherited//System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSendMailMsg_Click(object sender, EventArgs e)
        {
            if (MailFrom.Text != "" && MailTo.Text != "" && Subject.Text != "" && Body.Text != "")
            {
                SmtpClient MailClient = new SmtpClient("smtp.gmail.com", 587);
                MailMessage Email = new MailMessage();
                try
                {
                    Email.From = new MailAddress(MailFrom.Text);
                    //http://stackoverflow.com/questions/704636/sending-email-through-gmail-smtp-server-with-c-sharp
                    Email.To.Add(MailTo.Text);
                    Email.Subject = Subject.Text;
                    Email.Body = Body.Text;
                    Email.IsBodyHtml = true;
                    MailClient.Send(Email);
                    MailMsg.Text = "Email sent";
                }
                catch (Exception)
                { MailMsg.Text = "Error in sending email!"; }
                MailFrom.Text = "";
                MailTo.Text = "";
                Subject.Text = "";
                Body.Text = "";
            }
        }
    }
}