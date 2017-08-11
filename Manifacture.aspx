<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Manifacture.aspx.cs" Inherits="IaniDProject.Manifacture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Mf_id" DataSourceID="SqlDataSourceMf">
            <Columns>
                <asp:CommandField ButtonType="Button" CancelText="Отмени" DeleteText="Изтрий" EditText="Редактирай" InsertText="Вмъкни" NewText="Нов" SelectText="Избери" ShowEditButton="True" UpdateText="Промени" />
                <asp:BoundField DataField="Mf_id" HeaderText="Производител№" InsertVisible="False" ReadOnly="True" SortExpression="Mf_id" />
                <asp:BoundField DataField="Company_name" HeaderText="Име на фирмата" SortExpression="Company_name" />
                <asp:BoundField DataField="Mf_city" HeaderText="Град" SortExpression="Mf_city" />
                <asp:BoundField DataField="Mf_address" HeaderText="Адрес" SortExpression="Mf_address" />
                <asp:BoundField DataField="Mf_BULSTAT" HeaderText="BULSTAT" SortExpression="Mf_BULSTAT" />
                <asp:BoundField DataField="Mf_phone" HeaderText="Телефон" SortExpression="Mf_phone" />
                <asp:BoundField DataField="Mf_MOL" HeaderText="MOL" SortExpression="Mf_MOL" />
                <asp:BoundField DataField="status" HeaderText="Статус" SortExpression="status" />
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
        <asp:SqlDataSource ID="SqlDataSourceMf" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Manufacturer] WHERE [Mf_id] = @Mf_id" InsertCommand="INSERT INTO [Manufacturer] ([Company_name], [Mf_city], [Mf_address], [Mf_BULSTAT], [Mf_phone], [Mf_MOL], [status]) VALUES (@Company_name, @Mf_city, @Mf_address, @Mf_BULSTAT, @Mf_phone, @Mf_MOL, @status)" SelectCommand="SELECT * FROM [Manufacturer]" UpdateCommand="UPDATE [Manufacturer] SET [Company_name] = @Company_name, [Mf_city] = @Mf_city, [Mf_address] = @Mf_address, [Mf_BULSTAT] = @Mf_BULSTAT, [Mf_phone] = @Mf_phone, [Mf_MOL] = @Mf_MOL, [status] = @status WHERE [Mf_id] = @Mf_id">
            <DeleteParameters>
                <asp:Parameter Name="Mf_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Company_name" Type="String" />
                <asp:Parameter Name="Mf_city" Type="String" />
                <asp:Parameter Name="Mf_address" Type="String" />
                <asp:Parameter Name="Mf_BULSTAT" Type="String" />
                <asp:Parameter Name="Mf_phone" Type="String" />
                <asp:Parameter Name="Mf_MOL" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Company_name" Type="String" />
                <asp:Parameter Name="Mf_city" Type="String" />
                <asp:Parameter Name="Mf_address" Type="String" />
                <asp:Parameter Name="Mf_BULSTAT" Type="String" />
                <asp:Parameter Name="Mf_phone" Type="String" />
                <asp:Parameter Name="Mf_MOL" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="Mf_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Mf_id" DataSourceID="SqlDataSourceMFF" GridLines="Both">
            <EditItemTemplate>
                Mf_id:
                <asp:Label ID="Mf_idLabel1" runat="server" Text='<%# Eval("Mf_id") %>' />
                <br />
                Company_name:
                <asp:TextBox ID="Company_nameTextBox" runat="server" Text='<%# Bind("Company_name") %>' />
                <br />
                Mf_city:
                <asp:TextBox ID="Mf_cityTextBox" runat="server" Text='<%# Bind("Mf_city") %>' />
                <br />
                Mf_address:
                <asp:TextBox ID="Mf_addressTextBox" runat="server" Text='<%# Bind("Mf_address") %>' />
                <br />
                Mf_BULSTAT:
                <asp:TextBox ID="Mf_BULSTATTextBox" runat="server" Text='<%# Bind("Mf_BULSTAT") %>' />
                <br />
                Mf_phone:
                <asp:TextBox ID="Mf_phoneTextBox" runat="server" Text='<%# Bind("Mf_phone") %>' />
                <br />
                Mf_MOL:
                <asp:TextBox ID="Mf_MOLTextBox" runat="server" Text='<%# Bind("Mf_MOL") %>' />
                <br />
                status:
                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <InsertItemTemplate>
                Company_name:
                <asp:TextBox ID="Company_nameTextBox" runat="server" Text='<%# Bind("Company_name") %>' />
                <br />
                Mf_city:
                <asp:TextBox ID="Mf_cityTextBox" runat="server" Text='<%# Bind("Mf_city") %>' />
                <br />
                Mf_address:
                <asp:TextBox ID="Mf_addressTextBox" runat="server" Text='<%# Bind("Mf_address") %>' />
                <br />
                Mf_BULSTAT:
                <asp:TextBox ID="Mf_BULSTATTextBox" runat="server" Text='<%# Bind("Mf_BULSTAT") %>' />
                <br />
                Mf_phone:
                <asp:TextBox ID="Mf_phoneTextBox" runat="server" Text='<%# Bind("Mf_phone") %>' />
                <br />
                Mf_MOL:
                <asp:TextBox ID="Mf_MOLTextBox" runat="server" Text='<%# Bind("Mf_MOL") %>' />
                <br />
                status:
                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Производител№:
                <asp:Label ID="Mf_idLabel" runat="server" Text='<%# Eval("Mf_id") %>' />
                <br />
                Име нафирмата:
                <asp:Label ID="Company_nameLabel" runat="server" Text='<%# Bind("Company_name") %>' />
                <br />
                Град:
                <asp:Label ID="Mf_cityLabel" runat="server" Text='<%# Bind("Mf_city") %>' />
                <br />
                Адрес:
                <asp:Label ID="Mf_addressLabel" runat="server" Text='<%# Bind("Mf_address") %>' />
                BULSTAT:
                <asp:Label ID="Mf_BULSTATLabel" runat="server" Text='<%# Bind("Mf_BULSTAT") %>' />
                <br />
                ТЕЛ:
                <asp:Label ID="Mf_phoneLabel" runat="server" Text='<%# Bind("Mf_phone") %>' />
                <br />
                MOL:
                <asp:Label ID="Mf_MOLLabel" runat="server" Text='<%# Bind("Mf_MOL") %>' />
                <br />
                Статус:
                <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Редактирай" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Изтрий" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Добави" />
            </ItemTemplate>
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSourceMFF" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Manufacturer] WHERE [Mf_id] = @Mf_id" InsertCommand="INSERT INTO [Manufacturer] ([Company_name], [Mf_city], [Mf_address], [Mf_BULSTAT], [Mf_phone], [Mf_MOL], [status]) VALUES (@Company_name, @Mf_city, @Mf_address, @Mf_BULSTAT, @Mf_phone, @Mf_MOL, @status)" SelectCommand="SELECT * FROM [Manufacturer]" UpdateCommand="UPDATE [Manufacturer] SET [Company_name] = @Company_name, [Mf_city] = @Mf_city, [Mf_address] = @Mf_address, [Mf_BULSTAT] = @Mf_BULSTAT, [Mf_phone] = @Mf_phone, [Mf_MOL] = @Mf_MOL, [status] = @status WHERE [Mf_id] = @Mf_id">
            <DeleteParameters>
                <asp:Parameter Name="Mf_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Company_name" Type="String" />
                <asp:Parameter Name="Mf_city" Type="String" />
                <asp:Parameter Name="Mf_address" Type="String" />
                <asp:Parameter Name="Mf_BULSTAT" Type="String" />
                <asp:Parameter Name="Mf_phone" Type="String" />
                <asp:Parameter Name="Mf_MOL" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Company_name" Type="String" />
                <asp:Parameter Name="Mf_city" Type="String" />
                <asp:Parameter Name="Mf_address" Type="String" />
                <asp:Parameter Name="Mf_BULSTAT" Type="String" />
                <asp:Parameter Name="Mf_phone" Type="String" />
                <asp:Parameter Name="Mf_MOL" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="Mf_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
