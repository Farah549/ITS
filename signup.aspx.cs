using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        if (Request.QueryString["uid"] != null)
        {
            using (ITSprojectEntities db = new ITSprojectEntities())
            {

                int UserID = Convert.ToInt32(Request.QueryString["uid"]);
                tbl_user u = db.tbl_user.FirstOrDefault(v => v.userID == UserID);
                txtB_signup_name.Text = u.userName;
                txtB_signup_email.Text = u.userPassword;
                txtB_signup_cnfrmPass.Text = u.userPassword;
                ddlCountry.SelectedValue = u.userCountry;
                ddlType.SelectedValue = u.userType;

            }


        }


    }

    protected void btn_signUp_Click(object sender, EventArgs e)
    {
        using (ITSprojectEntities db = new ITSprojectEntities())
        {
            if (Request.QueryString["uid"] != null)
            {
                int UserID = Convert.ToInt32(Request.QueryString["uid"]);
                tbl_user u = db.tbl_user.FirstOrDefault(v => v.userID == UserID);
                u.userEmail = txtB_signup_email.Text;
                u.userName = txtB_signup_name.Text;
                u.userCountry = ddlCountry.SelectedValue;
                u.userType = ddlType.SelectedValue;
                u.userPassword = txtB_signup_pass.Text;
                u.status = true;
                db.SaveChanges();

            }
            else
            {
                tbl_user u = new tbl_user();
                u.userEmail = txtB_signup_email.Text;
                u.userName = txtB_signup_name.Text;
                u.userCountry = ddlCountry.SelectedValue;
                u.userType = ddlType.SelectedValue;
                u.userPassword = txtB_signup_pass.Text;
                u.status = true;
                db.tbl_user.Add(u);
                db.SaveChanges();


            }
            Response.Redirect("login.aspx");

        }
    }
}