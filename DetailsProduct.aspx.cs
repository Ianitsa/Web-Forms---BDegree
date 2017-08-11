using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IaniDProject
{
    public partial class Details : Inherited //: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        List<CustomerOrder> MyList = new List<CustomerOrder>();
        CustomerOrder obj = new CustomerOrder();
        CustomerOrder newvalue = new CustomerOrder();

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            int same = 0;
            try
            {
                obj.ProductID = Convert.ToInt32(((Label)DataList1.Items[0].FindControl("Pr_idLabel")).Text);
                obj.ProductName = ((Label)DataList1.Items[0].FindControl("Pr_nameLabel")).Text;
                obj.Price = Convert.ToDouble(((Label)DataList1.Items[0].FindControl("Pr_PriceLabel")).Text);
                if (((Label)DataList1.Items[0].FindControl("SOffer_idLabel")).Text != "")
                {
                    obj.OfferPrice = Convert.ToDouble(((Label)DataList1.Items[0].FindControl("NewPriceLabel")).Text); obj.OfferID = Convert.ToInt32(((Label)DataList1.Items[0].FindControl("SOffer_idLabel")).Text);
                }
               
                obj.Discription = ((Label)DataList1.Items[0].FindControl("Pr_discriptionsLabel")).Text;
                obj.Size = ((Label)DataList1.Items[0].FindControl("Pr_sizeLabel")).Text;
                obj.Qty = Convert.ToInt32(((TextBox)DataList1.Items[0].FindControl("txtQty")).Text);
                if (obj.OfferPrice!=0)
                {                    obj.TPrice = obj.OfferPrice * obj.Qty;
                }
                else
                {
                    obj.TPrice = obj.Price * obj.Qty;
                }

                 
                //obj.ProductTotal = obj.ProductPrice * obj.NumberProduct;
            }
            catch { }
            MyList = Session["Mylist"] as List<CustomerOrder>;

            if (MyList != null && MyList.Count != 0) // Ако в сесията в листа има нещо
            {
                try
                {
                    foreach (CustomerOrder c in MyList) // проверка за съществуващ продукт в сесията
                    {
                        if (c.ProductID == obj.ProductID)
                        {
                            c.Qty = c.Qty + c.Qty;
                            c.TPrice = c.TPrice + c.TPrice;
                            //c.NumberProduct = c.NumberProduct + obj.NumberProduct;
                            //c.ProductTotal = c.ProductPrice * c.NumberProduct;
                            same = 1;
                        }
                    }
                    if (same == 0) { MyList.Add(obj); } // при несъществуващ продукт в сесията


                    Session["Mylist"] = MyList;
                    ((Button)DataList1.Items[0].FindControl("btnAddToCart")).Text = "Успешно добавен продукт!";
                    ((Button)DataList1.Items[0].FindControl("btnAddToCart")).Enabled = false;
                    //btnAdd.Text = "Успешно добавен продукт!";
                    //btnAdd.Enabled = false;
                }
                catch { 
                        ((Button)DataList1.Items[0].FindControl("btnAddToCart")).Text = "Неуспешно добавен продукт!"; 
                      }
            }
            else if (MyList == null || MyList.Count == 0) // ако в сесията няма нищо
            {
                try
                {
                    List<CustomerOrder> MyList1 = new List<CustomerOrder>();
                    MyList1.Add(obj);
                    Session["Mylist"] = MyList1;
                    if (Session["MyList"] != null)
                    {
                        ((Button)DataList1.Items[0].FindControl("btnAddToCart")).Text = "Успешно добавен продукт!";
                        ((Button)DataList1.Items[0].FindControl("btnAddToCart")).Enabled = false;
                    }
                }
                catch { ((Button)DataList1.Items[0].FindControl("btnAddToCart")).Text = "Неуспешно добавен продукт!"; }
            }

            //Button btn = (Button)sender;
            //Response.Redirect("Cart.aspx?@Pr_id=" + btn.Text);
        }

         
    }
}