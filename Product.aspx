<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="IaniDProject.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Pr_id" DataSourceID="SqlDataSourceProduct" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ButtonType="Button" CancelText="Отмени" DeleteText="Изтрий" EditText="Редактирай" InsertText="Вмъкни" NewText="Нов" SelectText="Избери" />
            <asp:BoundField DataField="Pr_id" HeaderText="Продукт №" ReadOnly="True" SortExpression="Pr_id" />
            <asp:BoundField DataField="Mf_id" HeaderText="Производител №" SortExpression="Mf_id" />
            <asp:BoundField DataField="Cat_id" HeaderText="Категория №" SortExpression="Cat_id" />
            <asp:BoundField DataField="Pr_name" HeaderText="Име" SortExpression="Pr_name" />
            <asp:BoundField DataField="Pr_Price" HeaderText="Цена" SortExpression="Pr_Price" />
            <asp:BoundField DataField="Pr_discriptions" HeaderText="Описание" SortExpression="Pr_discriptions" />
            <asp:BoundField DataField="Pr_size" HeaderText="Размер" SortExpression="Pr_size" />
            <asp:BoundField DataField="status" HeaderText="Статус" SortExpression="status" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceProduct" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Pr_id] = @Pr_id" InsertCommand="INSERT INTO [Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (@Pr_id, @Mf_id, @Cat_id, @Pr_name, @Pr_Price, @Pr_discriptions, @Pr_size, @status)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Mf_id] = @Mf_id, [Cat_id] = @Cat_id, [Pr_name] = @Pr_name, [Pr_Price] = @Pr_Price, [Pr_discriptions] = @Pr_discriptions, [Pr_size] = @Pr_size, [status] = @status WHERE [Pr_id] = @Pr_id">
        <DeleteParameters>
            <asp:Parameter Name="Pr_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Pr_id" Type="Int32" />
            <asp:Parameter Name="Mf_id" Type="Int32" />
            <asp:Parameter Name="Cat_id" Type="Int32" />
            <asp:Parameter Name="Pr_name" Type="String" />
            <asp:Parameter Name="Pr_Price" Type="Decimal" />
            <asp:Parameter Name="Pr_discriptions" Type="String" />
            <asp:Parameter Name="Pr_size" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Mf_id" Type="Int32" />
            <asp:Parameter Name="Cat_id" Type="Int32" />
            <asp:Parameter Name="Pr_name" Type="String" />
            <asp:Parameter Name="Pr_Price" Type="Decimal" />
            <asp:Parameter Name="Pr_discriptions" Type="String" />
            <asp:Parameter Name="Pr_size" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="Pr_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Pr_id" DataSourceID="SqlDataSourceP" GridLines="Vertical">
            <EditItemTemplate>
                Pr_id:
                <asp:Label ID="Pr_idLabel1" runat="server" Text='<%# Eval("Pr_id") %>' />
                <br />
                Mf_id:
                <asp:TextBox ID="Mf_idTextBox" runat="server" Text='<%# Bind("Mf_id") %>' />
                <br />
                Cat_id:
                <asp:TextBox ID="Cat_idTextBox" runat="server" Text='<%# Bind("Cat_id") %>' />
                <br />
                Pr_name:
                <asp:TextBox ID="Pr_nameTextBox" runat="server" Text='<%# Bind("Pr_name") %>' />
                <br />
                Pr_Price:
                <asp:TextBox ID="Pr_PriceTextBox" runat="server" Text='<%# Bind("Pr_Price") %>' />
                <br />
                Pr_discriptions:
                <asp:TextBox ID="Pr_discriptionsTextBox" runat="server" Text='<%# Bind("Pr_discriptions") %>' />
                <br />
                Pr_size:
                <asp:TextBox ID="Pr_sizeTextBox" runat="server" Text='<%# Bind("Pr_size") %>' />
                <br />
                status:
                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Pr_id:
                <asp:TextBox ID="Pr_idTextBox" runat="server" Text='<%# Bind("Pr_id") %>' />
                <br />
                Mf_id:
                <asp:TextBox ID="Mf_idTextBox" runat="server" Text='<%# Bind("Mf_id") %>' />
                <br />
                Cat_id:
                <asp:TextBox ID="Cat_idTextBox" runat="server" Text='<%# Bind("Cat_id") %>' />
                <br />
                Pr_name:
                <asp:TextBox ID="Pr_nameTextBox" runat="server" Text='<%# Bind("Pr_name") %>' />
                <br />
                Pr_Price:
                <asp:TextBox ID="Pr_PriceTextBox" runat="server" Text='<%# Bind("Pr_Price") %>' />
                <br />
                Pr_discriptions:
                <asp:TextBox ID="Pr_discriptionsTextBox" runat="server" Text='<%# Bind("Pr_discriptions") %>' />
                <br />
                Pr_size:
                <asp:TextBox ID="Pr_sizeTextBox" runat="server" Text='<%# Bind("Pr_size") %>' />
                <br />
                status:
                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Продукт№:
                <asp:Label ID="Pr_idLabel" runat="server" Text='<%# Eval("Pr_id") %>' />
                <br />
                Производител№:
                <asp:Label ID="Mf_idLabel" runat="server" Text='<%# Bind("Mf_id") %>' />
                <br />
                Категория№:
                <asp:Label ID="Cat_idLabel" runat="server" Text='<%# Bind("Cat_id") %>' />
                <br />
                Име:
                <asp:Label ID="Pr_nameLabel" runat="server" Text='<%# Bind("Pr_name") %>' />
                <br />
                Цена:
                <asp:Label ID="Pr_PriceLabel" runat="server" Text='<%# Bind("Pr_Price") %>' />
                <br />
                Описание:
                <asp:Label ID="Pr_discriptionsLabel" runat="server" Text='<%# Bind("Pr_discriptions") %>' />
                <br />
                Размер:
                <asp:Label ID="Pr_sizeLabel" runat="server" Text='<%# Bind("Pr_size") %>' />
                <br />
                статус:
                <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Редактирай" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Изтрий" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Добави" />
            </ItemTemplate>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSourceP" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Pr_id] = @Pr_id" InsertCommand="INSERT INTO [Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (@Pr_id, @Mf_id, @Cat_id, @Pr_name, @Pr_Price, @Pr_discriptions, @Pr_size, @status)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Mf_id] = @Mf_id, [Cat_id] = @Cat_id, [Pr_name] = @Pr_name, [Pr_Price] = @Pr_Price, [Pr_discriptions] = @Pr_discriptions, [Pr_size] = @Pr_size, [status] = @status WHERE [Pr_id] = @Pr_id">
            <DeleteParameters>
                <asp:Parameter Name="Pr_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Pr_id" Type="Int32" />
                <asp:Parameter Name="Mf_id" Type="Int32" />
                <asp:Parameter Name="Cat_id" Type="Int32" />
                <asp:Parameter Name="Pr_name" Type="String" />
                <asp:Parameter Name="Pr_Price" Type="Decimal" />
                <asp:Parameter Name="Pr_discriptions" Type="String" />
                <asp:Parameter Name="Pr_size" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Mf_id" Type="Int32" />
                <asp:Parameter Name="Cat_id" Type="Int32" />
                <asp:Parameter Name="Pr_name" Type="String" />
                <asp:Parameter Name="Pr_Price" Type="Decimal" />
                <asp:Parameter Name="Pr_discriptions" Type="String" />
                <asp:Parameter Name="Pr_size" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="Pr_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>
