using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class TestSendEmail : System.Web.UI.Page
{
    public string from = "dreamteamutech@gmail.com";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        MailMessage mailObj = new MailMessage(from, txtTo.Text, txtSubject.Text, txtBody.Text);
        SmtpClient SMTPClient = new SmtpClient();//Allows applications to send e-mail by using the Simple Mail Transfer Protocol (SMTP)
        SMTPClient.EnableSsl = true;//Specify whether the SmtpClient uses Secure Sockets Layer (SSL) protocol to encrypt the connection.
        try
        {
            SMTPClient.Send(mailObj);
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
}