<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="IaniDProject.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Cat_id" DataSourceID="SqlDataSourceCat" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
        <Columns>
            <asp:CommandField ButtonType="Button" CancelText="Отмени" DeleteText="Изтрий" EditText="Редактирай" InsertText="Вмъкни" NewText="Нов" SelectText="Избери" ShowEditButton="True" UpdateText="Промени" />
            <asp:BoundField DataField="Cat_id" HeaderText="№ категория" ReadOnly="True" SortExpression="Cat_id" />
            <asp:BoundField DataField="ParentCat_id" HeaderText="Перант Категория №" SortExpression="ParentCat_id" />
            <asp:BoundField DataField="Cat_name" HeaderText="Име на категория" SortExpression="Cat_name" />
            <asp:BoundField DataField="Galery_id" HeaderText="Галерия №" SortExpression="Galery_id" />
            <asp:BoundField DataField="sratus" HeaderText="Статус" SortExpression="sratus" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceCat" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Categories] WHERE [Cat_id] = @Cat_id" InsertCommand="INSERT INTO [Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (@Cat_id, @ParentCat_id, @Cat_name, @Galery_id, @sratus)" SelectCommand="SELECT * FROM [Categories]" UpdateCommand="UPDATE [Categories] SET [ParentCat_id] = @ParentCat_id, [Cat_name] = @Cat_name, [Galery_id] = @Galery_id, [sratus] = @sratus WHERE [Cat_id] = @Cat_id">
        <DeleteParameters>
            <asp:Parameter Name="Cat_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cat_id" Type="Int32" />
            <asp:Parameter Name="ParentCat_id" Type="Int32" />
            <asp:Parameter Name="Cat_name" Type="String" />
            <asp:Parameter Name="Galery_id" Type="Int32" />
            <asp:Parameter Name="sratus" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ParentCat_id" Type="Int32" />
            <asp:Parameter Name="Cat_name" Type="String" />
            <asp:Parameter Name="Galery_id" Type="Int32" />
            <asp:Parameter Name="sratus" Type="String" />
            <asp:Parameter Name="Cat_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Cat_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
        <EditItemTemplate>
            Cat_id:
            <asp:Label ID="Cat_idLabel1" runat="server" Text='<%# Eval("Cat_id") %>' />
            <br />
            ParentCat_id:
            <asp:TextBox ID="ParentCat_idTextBox" runat="server" Text='<%# Bind("ParentCat_id") %>' />
            <br />
            Cat_name:
            <asp:TextBox ID="Cat_nameTextBox" runat="server" Text='<%# Bind("Cat_name") %>' />
            <br />
            Galery_id:
            <asp:TextBox ID="Galery_idTextBox" runat="server" Text='<%# Bind("Galery_id") %>' />
            <br />
            sratus:
            <asp:TextBox ID="sratusTextBox" runat="server" Text='<%# Bind("sratus") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Cat_id:
            <asp:TextBox ID="Cat_idTextBox" runat="server" Text='<%# Bind("Cat_id") %>' />
            <br />
            ParentCat_id:
            <asp:TextBox ID="ParentCat_idTextBox" runat="server" Text='<%# Bind("ParentCat_id") %>' />
            <br />
            Cat_name:
            <asp:TextBox ID="Cat_nameTextBox" runat="server" Text='<%# Bind("Cat_name") %>' />
            <br />
            Galery_id:
            <asp:TextBox ID="Galery_idTextBox" runat="server" Text='<%# Bind("Galery_id") %>' />
            <br />
            sratus:
            <asp:TextBox ID="sratusTextBox" runat="server" Text='<%# Bind("sratus") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Категория №:
            <asp:Label ID="Cat_idLabel" runat="server" Text='<%# Eval("Cat_id") %>' />
            <br />
            ПерантКатегория №:
            <asp:Label ID="ParentCat_idLabel" runat="server" Text='<%# Bind("ParentCat_id") %>' />
            <br />
            Име на категория:
            <asp:Label ID="Cat_nameLabel" runat="server" Text='<%# Bind("Cat_name") %>' />
            <br />
            Галерия №:
            <asp:Label ID="Galery_idLabel" runat="server" Text='<%# Bind("Galery_id") %>' />
            <br />
            Статус:
            <asp:Label ID="sratusLabel" runat="server" Text='<%# Bind("sratus") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Редактирай" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Изтрий" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Добави" />
        </ItemTemplate>
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Categories] WHERE [Cat_id] = @Cat_id" InsertCommand="INSERT INTO [Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (@Cat_id, @ParentCat_id, @Cat_name, @Galery_id, @sratus)" SelectCommand="SELECT * FROM [Categories]" UpdateCommand="UPDATE [Categories] SET [ParentCat_id] = @ParentCat_id, [Cat_name] = @Cat_name, [Galery_id] = @Galery_id, [sratus] = @sratus WHERE [Cat_id] = @Cat_id">
        <DeleteParameters>
            <asp:Parameter Name="Cat_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cat_id" Type="Int32" />
            <asp:Parameter Name="ParentCat_id" Type="Int32" />
            <asp:Parameter Name="Cat_name" Type="String" />
            <asp:Parameter Name="Galery_id" Type="Int32" />
            <asp:Parameter Name="sratus" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ParentCat_id" Type="Int32" />
            <asp:Parameter Name="Cat_name" Type="String" />
            <asp:Parameter Name="Galery_id" Type="Int32" />
            <asp:Parameter Name="sratus" Type="String" />
            <asp:Parameter Name="Cat_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
