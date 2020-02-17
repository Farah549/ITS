using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminListContent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        fillAdmin();

    }
    protected void fillAdmin()
    {
        using (ITSprojectEntities db = new ITSprojectEntities())
        {
            var querylist = db.admin_list(true);
            GV.DataSource = querylist;
            GV.DataBind();
        }
    }


    protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            Response.Redirect("adminSignup.aspx?uid=" + e.CommandArgument);

        }
        else
        {
            int AdminID = Convert.ToInt32(e.CommandArgument);
            using (ITSprojectEntities db = new ITSprojectEntities())
            {
                db.admin_delete(AdminID);
            }
            fillAdmin();

        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminSignup.aspx");
    }
}
