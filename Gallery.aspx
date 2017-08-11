<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="IaniDProject.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Gallery_id" DataSourceID="SqlDataSourceGalery" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowInsertButton="true" ButtonType="Button" CancelText="Отмени" DeleteText="Изтрий" EditText="Редактирай" InsertText="Вмъкни" NewText="Нов" SelectText="Избери" UpdateText="Промени" />
                <asp:BoundField DataField="Gallery_id" HeaderText="№ галерия" ReadOnly="True" SortExpression="Gallery_id" />
                <asp:BoundField DataField="Gallery_name" HeaderText="Име на галерия" SortExpression="Gallery_name" />
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
        <asp:SqlDataSource ID="SqlDataSourceGalery" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM Gallery WHERE (Gallery_id = @G_id)" InsertCommand="INSERT INTO Gallery(Gallery_id, Gallery_name, status) VALUES (@G_id, @G_name, @G_status)" SelectCommand="SELECT Gallery_id, Gallery_name, status FROM Gallery" UpdateCommand="UPDATE Gallery SET Gallery_id = @G_ID, Gallery_name = @G_NAME, status = @G_STATUS">
            <DeleteParameters>
                <asp:Parameter Name="G_id" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="G_id" />
                <asp:Parameter Name="G_name" />
                <asp:Parameter Name="G_status" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="G_ID" />
                <asp:Parameter Name="G_NAME" />
                <asp:Parameter Name="G_STATUS" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="Gallery_id" DataSourceID="SqlDataSourceGallery" ForeColor="#333333">
            <EditItemTemplate>
                Gallery_id:
                <asp:Label ID="Gallery_idLabel1" runat="server" Text='<%# Eval("Gallery_id") %>' />
                <br />
                Gallery_name:
                <asp:TextBox ID="Gallery_nameTextBox" runat="server" Text='<%# Bind("Gallery_name") %>' />
                <br />
                status:
                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Gallery_id:
                <asp:TextBox ID="Gallery_idTextBox" runat="server" Text='<%# Bind("Gallery_id") %>' />
                <br />
                Gallery_name:
                <asp:TextBox ID="Gallery_nameTextBox" runat="server" Text='<%# Bind("Gallery_name") %>' />
                <br />
                status:
                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Галерия №:
                <asp:Label ID="Gallery_idLabel" runat="server" Text='<%# Eval("Gallery_id") %>' />
                <br />
                Име:
                <asp:Label ID="Gallery_nameLabel" runat="server" Text='<%# Bind("Gallery_name") %>' />
                <br />
                Статус:
                <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Редактирай" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Изтрий" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Добави" />
            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSourceGallery" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Gallery] WHERE [Gallery_id] = @Gallery_id" InsertCommand="INSERT INTO [Gallery] ([Gallery_id], [Gallery_name], [status]) VALUES (@Gallery_id, @Gallery_name, @status)" SelectCommand="SELECT * FROM [Gallery]" UpdateCommand="UPDATE [Gallery] SET [Gallery_name] = @Gallery_name, [status] = @status WHERE [Gallery_id] = @Gallery_id">
            <DeleteParameters>
                <asp:Parameter Name="Gallery_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Gallery_id" Type="Int32" />
                <asp:Parameter Name="Gallery_name" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Gallery_name" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="Gallery_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
