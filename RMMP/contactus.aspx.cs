using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Web.Security;
using System.Web.Services;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void homeRedirect_Click(object sender, EventArgs e)
    {
      
            Response.Redirect("../Default.aspx");
        
    }
    protected void Button1_send_Click(object sender, EventArgs e)
    {
        if (txtname.Text != "" && txtemail.Text != "" && txtbody.Text != "")
        {
            MailMessage mm = new MailMessage(txtemail.Text, "questions@ratemymp.co.in");
            mm.CC.Add("ratemymp.venturepact@gmail.com");
            mm.Body = "Name: " + txtname.Text + "<br />Email: " + txtemail.Text + "<br />" + txtbody.Text;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtpout.asia.secureserver.net";
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "cjayanti@ratemymp.co.in";
            NetworkCred.Password = "QWERty54321";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 25;//587
            smtp.Send(mm);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myfunction", "emailSent()", true);
            txtemail.Text = "";
            txtname.Text = "";
            txtbody.Text = "";
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myfunction", "emailvalidation()", true);
        }
    }
}