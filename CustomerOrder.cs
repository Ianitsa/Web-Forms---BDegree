using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IaniDProject
{
    [Serializable]
    public class CustomerOrder
    {
        public CustomerOrder()
        {

        }

        private int prID;
        private string prName;
        private int offerID;
        private double price;
        private double offerPrice;
        private double totalPrice;
        private string discription;
        private int qty;
        private string size;

        public int ProductID
        {
            get
            {
                return prID;
            }
            set
            {
                if (value != prID)
                { prID = value; }
            }
        }

        public string ProductName
        {
            get 
            {
                return prName;
            }
            set
            {
                if (value != prName)
                { prName = value; }
            }
        }


        public string Size
        {
            get
            {
                return size;
            }
            set
            {
                if (value != size)
                { size = value; }
            }
        }




        public int Qty
        {
            get
            {
                return qty;
            }
            set
            {
                if (value != qty)
                { qty = value; }
            }
        }

        public int OfferID
        {
            get
            {
                return offerID;
            }
            set
            {
                if (value != offerID)
                { offerID = value; }
            }
        }

        public double Price
        {
            get
            {
                return price;
            }
            set
            {
                if (value != price)
                { price = value; }
            }
        }

        public double OfferPrice
        {
            get
            {
                return offerPrice;
            }
            set
            {
                if (value != offerPrice)
                { offerPrice = value; }
            }
        }
        public double TPrice
        {
            get
            {
                return totalPrice;
            }
            set
            {
                if (value != totalPrice)
                { totalPrice = value; }
            }
        }
        public string Discription
        {
            get
            {
                return discription;
            }
            set
            {
                if (value != discription)
                { discription = value; }
            }
        }







    }
}