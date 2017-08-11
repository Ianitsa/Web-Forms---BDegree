<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="IaniDProject.Cart" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <p>
        <asp:GridView ID="GridViewOrder" runat="server" OnSelectedIndexChanged="GridViewOrder_SelectedIndexChanged" style="margin-bottom: 0px" CssClass="word-gridview" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" meta:resourcekey="GridViewOrderResource1">
            <Columns>
                <asp:BoundField HeaderText="Продукт №" DataField="ProductID" meta:resourcekey="BoundFieldResource1" />
                <asp:BoundField HeaderText="Име на продукт" DataField="ProductName" meta:resourcekey="BoundFieldResource2" />
                <asp:BoundField HeaderText="Размер" DataField="Size" meta:resourcekey="BoundFieldResource3" />
                <asp:TemplateField HeaderText="Количество" meta:resourcekey="TemplateFieldResource1">
                    <ItemTemplate>
                        <asp:TextBox ID="txtQty" runat="server" Text='<%# Bind("Qty") %>'  Width="30px" meta:resourcekey="txtQtyResource1"></asp:TextBox>
                        &nbsp;&nbsp;
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQty" CssClass="word-gridview" ErrorMessage="Въведете коректно количество (от 1 до 100)!" Font-Bold="True" ForeColor="Red" MaximumValue="1000" MinimumValue="1" Type="Integer" Width="50%" meta:resourcekey="RangeValidator1Resource1"></asp:RangeValidator>
                    </ItemTemplate>

<%--<ControlStyle Font-Bold="True" CssClass="word-gridview"></ControlStyle>
                    <HeaderStyle CssClass="word-gridview" />--%>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Оферта№" Visible="False" DataField="OfferID" meta:resourcekey="BoundFieldResource4" />
                <asp:BoundField HeaderText="Цена" DataField="Price" meta:resourcekey="BoundFieldResource5" />
                <asp:BoundField HeaderText="Нова цена" DataField="OfferPrice" meta:resourcekey="BoundFieldResource6" />
                <asp:TemplateField HeaderText="Обща стойност" meta:resourcekey="TemplateFieldResource2">
                    <ItemTemplate>
                        <asp:Label ID="lblTotal" runat="server" Text='<%# Bind("TPrice") %>' meta:resourcekey="lblTotalResource1"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Описание" DataField="Discription" meta:resourcekey="BoundFieldResource7" />
                <asp:TemplateField HeaderText="Премахни" meta:resourcekey="TemplateFieldResource3">
                    <ItemTemplate>
                        <asp:ImageButton ID="imgBtnDel" runat="server" CssClass="img-all" CausesValidation="False" CommandName="Select" ImageUrl="~/img/Delete.jpg" OnClick="imgBtnDel_Click" meta:resourcekey="imgBtnDelResource1" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Редактирай" meta:resourcekey="TemplateFieldResource4">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" CssClass="img-all" CausesValidation="False" CommandName="Select" ImageUrl="~/img/Update.jpg" OnClick="ImageButton2_Click" meta:resourcekey="ImageButton2Resource1" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </p>
    <p>
        <asp:Label ID="LblTotalValueOrder" runat="server" Text="Обща стойност на поръчката:" meta:resourcekey="LblTotalValueOrderResource1"></asp:Label>
        <asp:TextBox ID="txtTotalValueOrder" runat="server" Width="69px" meta:resourcekey="txtTotalValueOrderResource1"></asp:TextBox>
        <asp:Label ID="LblLv" runat="server" Text="лв." meta:resourcekey="LblLvResource1"></asp:Label>
    </p>
    <p>
        <%--<asp:Label ID="Label1" runat="server" Text="Адрес за доставка:"></asp:Label>
        <asp:TextBox ID="txtDeliveryAddress" runat="server" Height="65px" Width="319px"></asp:TextBox>--%>
    
        <%--<asp:Label ID="Label2" runat="server" Text="Допълнителна информация:"></asp:Label>
        <asp:TextBox ID="txtInfo" runat="server" Height="16px" Width="306px"></asp:TextBox>--%>
    </p>
     
    <asp:Panel ID="PanelOrders" runat="server" meta:resourcekey="PanelOrdersResource1"  >
        <table>
            <tr>
                <td>
                    <asp:Label ID="LblDeliveryAddress" runat="server" Text="Адрес за доставка:" meta:resourcekey="LblDeliveryAddressResource1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDeliveryAddress" runat="server" Height="55px" Width="100%" meta:resourcekey="txtDeliveryAddressResource1"></asp:TextBox>
                </td>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Labelinformaciq" runat="server" Text="Можете да оставите телефон,skype, e-mail..." meta:resourceKey="LabelinformaciqResource1"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblAddInfo" runat="server" Text="Допълнителна информация:" meta:resourcekey="LblAddInfoResource1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtInfo" runat="server" Height="56px" Width="100%" meta:resourcekey="txtInfoResource1"></asp:TextBox>
                    </td>
                </tr>
            </tr>
                
                

        </table>
    </asp:Panel>
    <p>
        <asp:Button ID="btnOrder" runat="server" Text="Поръчай" OnClick="btnOrder_Click" meta:resourcekey="btnOrderResource1" />
    </p>
    <p>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" meta:resourcekey="lblMsgResource1"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/UserHistory.aspx" Visible="False" meta:resourcekey="LinkButton1Resource1" Text="История на поръчката"></asp:LinkButton>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
