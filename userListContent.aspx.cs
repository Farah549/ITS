using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userListContent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillUser();

    }
    protected void fillUser()
    {
        using (ITSprojectEntities db = new ITSprojectEntities())
        {
            var querylist = db.user_list(true);
            GV.DataSource = querylist;
            GV.DataBind();
        }
    }


    protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            Response.Redirect("signup.aspx?uid=" + e.CommandArgument);

        }
        else
        {
            int userID = Convert.ToInt32(e.CommandArgument);
            using (ITSprojectEntities db = new ITSprojectEntities())
            {
                db.user_delete(userID);
            }
            fillUser();

        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
}
