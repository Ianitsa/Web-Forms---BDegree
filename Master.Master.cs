using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IaniDProject
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //!!!! броим поръчките
            List<CustomerOrder> MyList = new List<CustomerOrder>();
            MyList = new List<CustomerOrder>();
            MyList = Session["Mylist"] as List<CustomerOrder>;

            if (MyList!=null)
            {
                lblCartCount.Text = MyList.Count.ToString();
                 
            }
            else
            {
                lblCartCount.Text = "0";     
            }
          
        }

        protected void LBtnforgetPass_Click(object sender, EventArgs e)
        {
            PasswordRecovery chpass = (PasswordRecovery)LoginView1.FindControl("PasswordRecovery1");
            chpass.Visible = true;
        }

        protected void LBtnChPassUser_Click(object sender, EventArgs e)
        {
            ChangePassword chpass = (ChangePassword)LoginView1.FindControl("ChangePasswordUser");
            chpass.Visible = true;
        }

        protected void LinkBtnChPassAdmin_Click(object sender, EventArgs e)
        {
            ChangePassword chpass = (ChangePassword)LoginView1.FindControl("ChangePasswordAdmin");
            chpass.Visible = true;
        }

      

        protected void Menu3_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

 
        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            TreeView tv = sender as TreeView;
            string nid = tv.SelectedNode.Value;
            Response.Redirect("DetailsCategory.aspx?CatName=" + nid);
        }




        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void LinkBtnTermsOfUse_Click(object sender, EventArgs e)
        {
            Response.Redirect("TermsOfUse.aspx");
        }

        protected void LBtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void LinkBtnServices_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }

        protected void LinkBtnContacts_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contacts.aspx");
        }

        protected void ImgBtnBG_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "bg-BG";
            Response.Redirect(Request.Path);
        }

        protected void ImgBtnUS_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "en-US";
            Response.Redirect(Request.Path);
        }

        

         

         


        //str.Home or Detailcategory??????/
        //protected void ImgBtnSearch_Click(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("Search.aspx?Criterion=" + txtSearch.Text);
        //}

         


         

         
    }
}