using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class Inherited : System.Web.UI.Page
{
    public Inherited()
    { }
    protected override void InitializeCulture()
    {
        string culture = "";
        if (Session["lng"] != null)
            culture = Session["lng"].ToString();
        if (string.IsNullOrEmpty(culture)) culture = "Auto";
        //Use this
        this.UICulture = culture;
        this.Culture = culture;
        //OR This
        if (culture != "Auto")
        {
            System.Globalization.CultureInfo ci = new System.Globalization.CultureInfo(culture);
            System.Threading.Thread.CurrentThread.CurrentCulture = ci;
            System.Threading.Thread.CurrentThread.CurrentUICulture = ci;
        }
        base.InitializeCulture();
    }
}