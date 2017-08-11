<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UserHistory.aspx.cs" Inherits="IaniDProject.UserHistory" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="word-gridview" DataSourceID="SqlDataSource1" meta:resourcekey="GridView1Resource1">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="Клиент" SortExpression="UserName" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="Order_date" HeaderText="Дата на поръчка" SortExpression="Order_date" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="Shipped_date" HeaderText="Дата на доставка" SortExpression="Shipped_date" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="OrderStatus" HeaderText="Статус" SortExpression="OrderStatus" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="DeliveryAddress" HeaderText="Адрес" SortExpression="DeliveryAddress" meta:resourcekey="BoundFieldResource5" />
            <asp:BoundField DataField="Info" HeaderText="Информация" SortExpression="Info" meta:resourcekey="BoundFieldResource6" />
            <asp:BoundField DataField="Pr_name" HeaderText="Продукт" SortExpression="Pr_name" meta:resourcekey="BoundFieldResource7" />
            <asp:BoundField DataField="Quantity" HeaderText="Количество" SortExpression="Quantity" meta:resourcekey="BoundFieldResource8" />
            <asp:BoundField DataField="OD_Price" HeaderText="Цена" SortExpression="OD_Price" meta:resourcekey="BoundFieldResource9" />
            <asp:BoundField DataField="Total" HeaderText="Общо" ReadOnly="True" SortExpression="Total" meta:resourcekey="BoundFieldResource10" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" SelectCommand="SELECT Orders.UserName, Orders.Order_date, Orders.Shipped_date, OrderStatus.OrderStatus, Orders.DeliveryAddress, Orders.Info, Products.Pr_name, OrderDetail.Quantity, OrderDetail.OD_Price, OrderDetail.Quantity * OrderDetail.OD_Price AS Total FROM OrderDetail INNER JOIN Orders ON OrderDetail.Order_id = Orders.Order_id INNER JOIN Products ON OrderDetail.Product_id = Products.Pr_id INNER JOIN OrderStatus ON Orders.OrderStatusID = OrderStatus.OrderStatusID INNER JOIN OrderStatusOrders ON Orders.Order_id = OrderStatusOrders.Order_id AND OrderStatus.OrderStatusID = OrderStatusOrders.OrderStatusID"></asp:SqlDataSource>
</asp:Content>
