using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IaniDProject
{
    public partial class DetailsCategory : Inherited //: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            //ImageButton btn=(ImageButton)sender;
            //Response.Redirect("DetailsProduct.aspx?@Pr_id="+ btn);

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            Response.Redirect("DetailsProduct.aspx?@Pr_id=" + btn.CommandArgument);
        }
    }
}