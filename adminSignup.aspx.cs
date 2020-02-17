using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminSignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        if (Request.QueryString["uid"] != null)
        {
            using ( ITSprojectEntities db = new ITSprojectEntities())
            {

                int adminID = Convert.ToInt32(Request.QueryString["uid"]);
                tbl_admin u = db.tbl_admin.FirstOrDefault(v => v.adminID == adminID);
                txtBox_signup_email.Text = u.adminEmail;
                txtBox_signup_password.Text = u.adminPassword;
                txtBox_signup_confirmPassword.Text = u.adminPassword;
                txtBox_signup_userName.Text = u.adminName;
            }


        }


    }

    protected void btn_signUp_Click(object sender, EventArgs e)
    {
        using (ITSprojectEntities db = new ITSprojectEntities())
        {
            if (Request.QueryString["uid"] != null)
            {
                int adminID = Convert.ToInt32(Request.QueryString["uid"]);
                tbl_admin u = db.tbl_admin.FirstOrDefault(v => v.adminID == adminID);
                u.adminEmail = txtBox_signup_email.Text;
                u.adminPassword = txtBox_signup_password.Text;
                u.status = true;
                db.SaveChanges();

            }
            else
            {
                tbl_admin u = new tbl_admin();
                u.adminName = txtBox_signup_userName.Text;
                u.adminEmail = txtBox_signup_email.Text;
                u.adminPassword = txtBox_signup_password.Text;
                u.status = true;
                db.tbl_admin.Add(u);
                db.SaveChanges();


            }
            Response.Redirect("adminSignin.aspx");

        }
    }
}