<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetailsCategory.aspx.cs" Inherits="IaniDProject.DetailsCategory" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel" runat="server" meta:resourcekey="PanelResource1">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Pr_id" DataSourceID="SqlDataSourceProduct" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" ShowHeader="False" meta:resourcekey="DataList1Resource1">
            <ItemStyle Height="100%" HorizontalAlign="Left" VerticalAlign="Top" />
            <ItemTemplate>
                Продукт №:
                <asp:Label ID="Pr_idLabel" runat="server" Text='<%# Eval("Pr_id") %>' meta:resourcekey="Pr_idLabelResource1" />
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server"  CssClass="img-all" ImageUrl='<%# "./img/" + Eval("Pr_id") + ".jpg" %>' OnClick="ImageButton2_Click" CommandName="Select" meta:resourcekey="ImageButton2Resource1"  />
                <br />
                Име:
                <asp:Label ID="Pr_nameLabel" runat="server" Text='<%# Eval("Pr_name") %>' meta:resourcekey="Pr_nameLabelResource1" />
                <br />
                Цена:
                <asp:Label ID="Pr_PriceLabel" runat="server" Text='<%# Eval("Pr_Price") %>' meta:resourcekey="Pr_PriceLabelResource1"></asp:Label>
                <br />
                Категория:
                <asp:Label ID="Cat_idLabel" runat="server" Text='<%# Eval("Cat_id") %>' meta:resourcekey="Cat_idLabelResource1"></asp:Label>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Pr_id") %>' CommandName="Select" OnClick="LinkButton1_Click" meta:resourcekey="LinkButton1Resource1">Виж детаили за продукта!</asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSourceProduct" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" SelectCommand="SELECT Products.Pr_id, Products.Pr_name, Products.Pr_Price, Products.Cat_id, Categories.Cat_name FROM Products INNER JOIN Categories ON Products.Cat_id = Categories.Cat_id WHERE (Categories.Cat_id = @CatName)">
            <SelectParameters>
                <asp:QueryStringParameter Name="CatName" QueryStringField="CatName" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Panel>
<p>
    <br />
</p>
</asp:Content>
