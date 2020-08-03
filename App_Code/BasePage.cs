using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for BasePage
/// </summary>
public class BasePage :Page
{
    protected override void InitializeCulture()
    {
        if (Session["langSession"] != null)
        {
            Culture = Session["langSession"].ToString();
            UICulture = Session["langSession"].ToString();
        }
        base.InitializeCulture();
    }

    //public override void InitializeCulture()
    //{
    //    if (Session["langSession"]!=null)
    //    {
    //        Culture = Session["langSession"].ToString();
    //        UICulture = Session["langSession"].ToString();
    //    }
    //    base.InitializeCulture();
    //}
	public BasePage()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}