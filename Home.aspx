<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="IaniDProject.Home" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <p>
        <br />
    </p>
    <p>
        <asp:DataList ID="DataListSpecOffer" runat="server" DataKeyField="SOffer_id" DataSourceID="SqlDataSourceSpecificOffer" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataListSpecOffer_SelectedIndexChanged" Width="100%" meta:resourcekey="DataListSpecOfferResource1">
            <ItemTemplate>
                &nbsp;<asp:Label ID="SOffer_idLabel" runat="server" Text='<%# Eval("SOffer_id") %>' meta:resourcekey="SOffer_idLabelResource1" />
                <br />
                <asp:Image ID="Image1" runat="server" Height="100px" CssClass="img-all" Width="80%" ImageUrl='<%# "./img/" + Eval("Pr_id") + ".JPG" %>' meta:resourcekey="Image1Resource1" />
                <br />
                &nbsp;<asp:Label ID="Pr_idLabel" runat="server" Text='<%# Eval("Pr_id") %>' meta:resourcekey="Pr_idLabelResource1" />
                <img alt="" src="img/sale.JPG" Width="50px"/>
                <br />
                <br />
                &nbsp;<asp:Label ID="Pr_nameLabel" runat="server" Text='<%# Eval("Pr_name") %>' meta:resourcekey="Pr_nameLabelResource1" />
                <br />
                Стара цена:
                <asp:Label ID="Pr_priceLabel" runat="server" Text='<%# Eval("Pr_price") %>' meta:resourcekey="Pr_priceLabelResource1" />
                <br />
                Нова цена:
                <asp:Label ID="NewPriceLabel" runat="server" Text='<%# Eval("NewPrice") %>' meta:resourcekey="NewPriceLabelResource1" />
                <br />
                Валидно от:
                <asp:Label ID="Valid_fromLabel" runat="server" Text='<%# ((DateTime)Eval("Valid_from")).ToString("dd/MM/yyyy") %>' meta:resourcekey="Valid_fromLabelResource1" />
                <br />
                Валидно до:
                <asp:Label ID="valid_toLabel" runat="server" Text='<%# ((DateTime)Eval("valid_to")).ToString("dd/MM/yyyy") %>' meta:resourcekey="valid_toLabelResource1" />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Pr_id") %>'  OnClick="LinkButton1_Click" CommandName="Select" meta:resourcekey="LinkButton1Resource1">Виж детаили за продукта</asp:LinkButton>
                <br />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSourceSpecificOffer" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [V_PRODUCT_SPEC_OFFER]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <%--<span>
    <asp:Label ID="LblSearch" runat="server" Text="Търси"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="txtSearch" runat="server" Width="167px"></asp:TextBox>
    &nbsp;<asp:ImageButton ID="ImgBtnSearch" runat="server" Height="30px" ImageUrl="~/img/search.JPG" OnClick="ImgBtnSearch_Click" Width="28px" />
    &nbsp;</span><p>--%>
    </p>
</asp:Content>


