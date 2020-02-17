using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        using (ITSprojectEntities db = new ITSprojectEntities())
        {

            var querylist = db.user_login(txtB_login_email.Text,txtB_login_pass.Text).ToList();
            if (querylist.Count > 0)
            {
                Session["email"] = querylist[0].userEmail;
                Response.Redirect("Default2.aspx");

            }
            else
            {
                Response.Write("LOGIN FAILED");
            }
        }
    }
}