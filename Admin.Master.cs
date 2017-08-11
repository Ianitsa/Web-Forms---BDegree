using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IaniDProject
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPageProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product.aspx");
        }

        protected void BtnPageMf_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manifacture.aspx");
        }

        protected void btnPageCategory_Click(object sender, EventArgs e)
        {

            Response.Redirect("Category.aspx");
        }

        protected void BtnPageGallery_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx");
        }

        protected void btnPagePicture_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pictures.aspx");
        }

        protected void btnPageOffer_Click(object sender, EventArgs e)
        {
            Response.Redirect("Offer.aspx");
        }
    }
}