using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "English")
        {
            Session["langSession"] = "en-US";
        }
        if (DropDownList1.SelectedValue == "Hindi")
        {
            Session["langSession"] = "hi-IN";
        }
        if (DropDownList1.SelectedValue == "Chinese")
        {
            Session["langSession"] = "zh-Hant";
        }


        Response.Redirect(Request.Url.AbsoluteUri);
    }
}