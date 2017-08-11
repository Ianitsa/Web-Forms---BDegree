<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="IaniDProject.WebUserControl1" %>
<asp:Panel ID="Panel1" runat="server" Height="232px" Width="33.33%">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" Height="68px" Width="90px" />
    <br />
    <asp:Label ID="LblFurnitureN" runat="server" Text="Каталожен№:"></asp:Label>
    <asp:Label ID="lblFurnitureID" runat="server"></asp:Label>
    <br />
    <asp:Label ID="LblName" runat="server" Text="Наименование:"></asp:Label>
    <asp:Label ID="LblFurnitureName" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Size" runat="server" Text="Размери:"></asp:Label>
    <asp:Label ID="LblFSize" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Price" runat="server" Text="Цена:"></asp:Label>
    <asp:Label ID="LblFPrice" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Quantity" runat="server" Text="Количество:"></asp:Label>
    <asp:Label ID="LblFQuantity" runat="server"></asp:Label>
    <br />
    <asp:CheckBox ID="CheckBoxToBuy" runat="server" Text="Отбележи за купуване " />
    <br />
    <br />
</asp:Panel>

