using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace IaniDProject
{
    public partial class Cart : Inherited
    {
        List<CustomerOrder> MyList;
        double GrandTotal = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            MyList = new List<CustomerOrder>();
            MyList = Session["Mylist"] as List<CustomerOrder>;
            if (!IsPostBack)
            {
                try
                {
                    GridViewOrder.DataSource = MyList;
                    GridViewOrder.DataBind();
                    foreach (CustomerOrder ord in MyList)
                    {
                        GrandTotal = GrandTotal + ord.TPrice;
                    }
                    Session["GrandTotal"] = GrandTotal;
                    txtTotalValueOrder.Text = Session["GrandTotal"].ToString();
                }
                catch { }
            }

            if (MyList == null)
            {
                LblTotalValueOrder.Visible = false;
                txtTotalValueOrder.Visible = false;
                btnOrder.Visible = false;
            }
        }

        bool del = false, upd = false;


        protected void GridViewOrder_SelectedIndexChanged(object sender, EventArgs e)
        {
            CustomerOrder remove = new CustomerOrder();
            MyList = Session["Mylist"] as List<CustomerOrder>;
            if (MyList != null && MyList.Count != 0)//Always add null check before reading data from session
        {
            if (del ==true)
            {
                foreach (CustomerOrder c in MyList)
                {
                    //if (c.ProductID==Convert.ToInt32(GridViewOrder.SelectedRow.Cells[0].Text))
                    //{
                    //    remove = c;
                    //}
                    if (c.ProductID.ToString() == GridViewOrder.SelectedRow.Cells[0].Text)
                    {
                        remove = c;
                    }
                }
                MyList.Remove(remove);
                del = false;
                Session["GrandTotal"] = Convert.ToDouble(Session["GrandTotal"]) - remove.TPrice ;
                if (MyList.Count == 0) { Session.Remove("Mylist"); Session.Remove("GrandTotal"); }
            }
            else if (upd == true)
            {
                foreach (CustomerOrder c in MyList)
                {
                    if (c.ProductID == Convert.ToInt32(GridViewOrder.SelectedRow.Cells[0].Text))
                    {
                        try
                        {
                            TextBox txt = (TextBox)GridViewOrder.Rows[GridViewOrder.SelectedIndex].Cells[3].FindControl("txtQty");

                            c.Qty = Convert.ToInt32(txt.Text);

                            //c.TPrice = c.NumberProduct * c.ProductPrice;
                            if (c.OfferPrice != 0)
                            {
                                c.TPrice = c.OfferPrice * c.Qty;
                            }
                            else
                            {
                                c.TPrice = c.Price * c.Qty;
                            }
                        }
                        catch { }
                    }
                }
                Session["Mylist"] = MyList;
                upd = false;


            }
        }


        Response.Redirect(Request.RawUrl);
    
        }

        protected void imgBtnDel_Click(object sender, ImageClickEventArgs e)
        {
            del = true;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            upd = true;
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            int orderID=0;
            if (User.Identity.Name != "")
            {
                SqlConnection conn = ConnectToSQL.CreateConnection();
                using (conn)
                {
                    SqlCommand myComand = new SqlCommand("sp_InsertOrders", conn);
                    myComand.CommandType = CommandType.StoredProcedure;
                    myComand.CommandText = "sp_InsertOrders";

                    SqlParameter UD_Id = new SqlParameter("@UserName", SqlDbType.NVarChar);
                    UD_Id.Value = User.Identity.Name;
                    myComand.Parameters.Add(UD_Id);

                    SqlParameter OrderDate = new SqlParameter("@Order_date", SqlDbType.Date);
                    OrderDate.Value = DateTime.Now;
                    myComand.Parameters.Add(OrderDate);

                    SqlParameter ShippedDate = new SqlParameter("@Shipped_date", SqlDbType.Date);
                    ShippedDate.Value = DateTime.Now.AddDays(5);
                    myComand.Parameters.Add(ShippedDate);

                    SqlParameter Orderid = new SqlParameter("@orderid", SqlDbType.Int);
                    Orderid.Direction = ParameterDirection.Output;
                    myComand.Parameters.Add(Orderid);

                    SqlParameter Address = new SqlParameter("@DeliveryAddress", SqlDbType.NVarChar);
                    Address.Value = txtDeliveryAddress.Text;
                    myComand.Parameters.Add(Address);


                    SqlParameter Info = new SqlParameter("@Info", SqlDbType.NVarChar);
                    Info.Value = txtInfo.Text;
                    myComand.Parameters.Add(Info);
                    try
                    {
                        conn.Open();
                    SqlDataReader dr =myComand.ExecuteReader();
                    orderID= (Int32)myComand.Parameters["@orderid"].Value;
                    }
                    catch (SqlException se)
                    {

                        lblMsg.Text = se.ToString();
                    }

                }
               
                MyList = Session["Mylist"] as List<CustomerOrder>;
                if (MyList != null && MyList.Count != 0)//Always add null check before reading data from session
                { 
                    foreach (CustomerOrder item in MyList)
                    {SqlConnection conn2 = ConnectToSQL.CreateConnection();
                        using (conn2)
                        {
                            SqlCommand myComand = new SqlCommand("sp_OrderDetail", conn2);
                            myComand.CommandType = CommandType.StoredProcedure;
                            myComand.CommandText = "sp_OrderDetail";

                            SqlParameter OrderID = new SqlParameter("@Order_id", SqlDbType.Int);
                            OrderID.Value = orderID;
                            myComand.Parameters.Add(OrderID);

                            SqlParameter PrID = new SqlParameter("@Pr_id", SqlDbType.Int);
                            PrID.Value = item.ProductID;
                            myComand.Parameters.Add(PrID);


                            SqlParameter Qty = new SqlParameter("@Qty", SqlDbType.Int);
                            Qty.Value = item.Qty ;
                            myComand.Parameters.Add(Qty);

                            SqlParameter Price = new SqlParameter("@Price", SqlDbType.Money);
                            Price.Value = item.TPrice;
                            myComand.Parameters.Add(Price);


                            try
                            {
                                conn2.Open();
                                myComand.ExecuteNonQuery();
                               //porychkata be[e naprawena uspeshno
                                lblMsg.Text = "Успешно направена поръчка! Можете да видите своите поръчки 'История на поръчката'"; LinkButton1.Visible = true;

                            }
                            catch (SqlException se)
                            {

                                lblMsg.Text = se.ToString();
                            }
                        }
                    }


                }
            }
            else
            {
                lblMsg.Text = "Моля, първо влезнете!";
            }
            
        }

        //protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        //{
        //    del = true;

        //}
        //protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        //{
        //    upd = true;
        //}

    }
}