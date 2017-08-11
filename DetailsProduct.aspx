<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetailsProduct.aspx.cs" Inherits="IaniDProject.Details" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <asp:Label ID="LblMsg" runat="server" meta:resourcekey="LblMsgResource1"></asp:Label>
</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Pr_id" DataSourceID="SqlDataSource2" RepeatColumns="1" RepeatDirection="Horizontal" Height="100%" Width="100%" meta:resourcekey="DataList1Resource1">
            <ItemTemplate>
                Продукт №:
                <asp:Label ID="Pr_idLabel" runat="server" Text='<%# Eval("Pr_id") %>' meta:resourcekey="Pr_idLabelResource1" />
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl='<%# "./img/" + Eval("Pr_id") + ".JPG" %>' meta:resourcekey="Image3Resource1" />
                <br />
                Име:
                <asp:Label ID="Pr_nameLabel" runat="server" Text='<%# Eval("Pr_name") %>' meta:resourcekey="Pr_nameLabelResource1" />
                <br />
                &nbsp;<asp:Label ID="SOffer_idLabel" runat="server" Text='<%# Eval("SOffer_id") %>' meta:resourcekey="SOffer_idLabelResource1" />
                <br />
                Цена:
                <asp:Label ID="Pr_PriceLabel" runat="server" Text='<%# Eval("Pr_Price") %>' meta:resourcekey="Pr_PriceLabelResource1" />
                <br />
                Промо-цена:
                <asp:Label ID="NewPriceLabel" runat="server" Text='<%# Eval("NewPrice") %>' meta:resourcekey="NewPriceLabelResource1" />
                <br />
                Описание:
                <asp:Label ID="Pr_discriptionsLabel" runat="server" Text='<%# Eval("Pr_discriptions") %>' meta:resourcekey="Pr_discriptionsLabelResource1" />
                <br />
                Размер:
                <asp:Label ID="Pr_sizeLabel" runat="server" Text='<%# Eval("Pr_size") %>' meta:resourcekey="Pr_sizeLabelResource1" />
                <br />
                <br />
                <asp:Label ID="LabelQty" runat="server" Text="Количество" meta:resourcekey="LabelQtyResource1"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtQty" runat="server" Width="40px" meta:resourcekey="txtQtyResource1"  >1</asp:TextBox>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Моля, въведете коректна стойност!" Font-Bold="True" ForeColor="#CC0000" MaximumValue="100" MinimumValue="1" Type="Integer" ControlToValidate="txtQty" meta:resourcekey="RangeValidator1Resource1"></asp:RangeValidator>
                <br />
                &nbsp;&nbsp;&nbsp;
                <br />

                <asp:Label ID="msg" runat="server" Text=" " meta:resourcekey="msgResource1"></asp:Label>
                <asp:Button ID="btnAddToCart" runat="server" Text="Добави в количката" OnClick="btnAddToCart_Click" meta:resourcekey="btnAddToCartResource1" />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" SelectCommand="SELECT Products.Pr_id, Products.Pr_name, Spec_Offer.SOffer_id, Products.Pr_Price, Products.Pr_Price - Spec_Offer.Pr_discont AS NewPrice, Products.Pr_discriptions, Products.Pr_size FROM Products LEFT OUTER JOIN Spec_Offer ON Products.Pr_id = Spec_Offer.Pr_id AND Products.Pr_id = Spec_Offer.Pr_id WHERE (Products.Pr_id = @Pr_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Pr_id" QueryStringField="@Pr_id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="MSG" runat="server" Text=" " meta:resourcekey="MSGResource2"></asp:Label>
    <br />
</p>
<p>
</p>
</asp:Content>
