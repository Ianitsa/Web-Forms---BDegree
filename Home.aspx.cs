using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IaniDProject
{
    public partial class Home : Inherited //: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //String PCategory = Request.QueryString["PCategory"];
            //String PCriterion = Request.QueryString["PCriterion"];
            //if (PCategory != null)
            //{
            //    String SString;


            //    //SString = "SELECT BookID,BookType, BookTitle,BookAuthor,BookPrice FROM Books WHERE BookType ='" + PCategory + "' ORDER BY BookId";
            //    //SqlDataSource2.SelectCommand = SString;
            //}
            //else if (PCriterion != null)
            //{
            //    String SString;

            //    //SString = "SELECT Pr_id, BookType, BookTitle, BookAuthor, BookPrice " +
            //    //"FROM product" +
            //    //" WHERE (BookID LIKE '%" + PCriterion + "%' ) OR" +
            //    //" (BookType LIKE '%" + PCriterion + "%') OR" +
            //    //" (BookTitle LIKE '%" + PCriterion + "%') OR" +
            //    //" (BookAuthor LIKE '%" + PCriterion + "%') OR" +
            //    //" (BookPrice LIKE '%" + PCriterion + "%')" +
            //    //" ORDER BY Pr_id";
            //    //SqlDataSource2.SelectCommand = SString;

            //}


        }


 
        protected void DataListSpecOffer_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Redirect("DetailsProduct.aspx?@Pr_id=" + "Вижте детайлите! ");


            ControlCollection list = DataListSpecOffer.SelectedItem.Controls;

            foreach (Control cntrl in list)
            {
                if (cntrl.GetType() == typeof(Label))
                {
                    Label lbl = (Label)cntrl;
                    if (lbl.ID == "Pr_nameLabel")
                    {
                        Session["ProductPath"] = lbl.Text;
                        Response.Redirect("DetailsProduct.aspx?Category=" + Request.QueryString["Category"]);
                    }
                }
            }
        }






        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
         
          Response.Redirect("DetailsProduct.aspx?@Pr_id=" + btn.CommandArgument);
        }

        //protected void ImgBtnSearch_Click(object sender, ImageClickEventArgs e)
        //{
        //    //if (txtSearch.Text != "")
        //    //{
        //    //    Response.Redirect("Home.aspx?PCriterion=" + txtSearch.Text);
        //    //}
        //}





        //??????trqbva li neshto ot tova?


        //protected void SubCategoryNameLabel_Click(object sender, EventArgs e)
        //{
        //    LinkButton lnk = (LinkButton)sender;
        //    Response.Redirect("Products.aspx?SubCategory=" + lnk.Text + "&Category=" + Request.QueryString["Category"]);

        //}
        //protected void CategoryNameLabel_Click(object sender, EventArgs e)
        //{
        //    LinkButton lnk = (LinkButton)sender;
        //    Response.Redirect("Products.aspx?Category=" + lnk.Text);

        //}

    }
}