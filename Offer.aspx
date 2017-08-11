<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Offer.aspx.cs" Inherits="IaniDProject.Offer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SOffer_id" DataSourceID="SqlDataSourceOffer">
    <Columns>
        <asp:BoundField DataField="SOffer_id" HeaderText="SOffer_id" InsertVisible="False" ReadOnly="True" SortExpression="SOffer_id" />
        <asp:BoundField DataField="Pr_id" HeaderText="Продукт №" SortExpression="Pr_id" />
        <asp:BoundField DataField="Pr_discont" HeaderText="Отстъпка" SortExpression="Pr_discont" />
        <asp:BoundField DataField="Valid_from" HeaderText="Валидно от" SortExpression="Valid_from" />
        <asp:BoundField DataField="valid_to" HeaderText="Валидно до" SortExpression="valid_to" />
        <asp:BoundField DataField="status" HeaderText="Статус" SortExpression="status" />
        <asp:CommandField ShowEditButton="True" ButtonType="Button" CancelText="Отмени" DeleteText="Изтрий" EditText="Редакция" HeaderText="Редактирай" InsertText="Вмъкни" SelectText="Избери" UpdateText="Промени" NewText="Нов" />
    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceOffer" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Spec_Offer] WHERE [SOffer_id] = @SOffer_id" InsertCommand="INSERT INTO [Spec_Offer] ([Pr_id], [Pr_discont], [Valid_from], [valid_to], [status]) VALUES (@Pr_id, @Pr_discont, @Valid_from, @valid_to, @status)" SelectCommand="SELECT * FROM [Spec_Offer]" UpdateCommand="UPDATE [Spec_Offer] SET [Pr_id] = @Pr_id, [Pr_discont] = @Pr_discont, [Valid_from] = @Valid_from, [valid_to] = @valid_to, [status] = @status WHERE [SOffer_id] = @SOffer_id">
    <DeleteParameters>
        <asp:Parameter Name="SOffer_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Pr_id" Type="Int32" />
        <asp:Parameter Name="Pr_discont" Type="Decimal" />
        <asp:Parameter DbType="Date" Name="Valid_from" />
        <asp:Parameter DbType="Date" Name="valid_to" />
        <asp:Parameter Name="status" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Pr_id" Type="Int32" />
        <asp:Parameter Name="Pr_discont" Type="Decimal" />
        <asp:Parameter DbType="Date" Name="Valid_from" />
        <asp:Parameter DbType="Date" Name="valid_to" />
        <asp:Parameter Name="status" Type="String" />
        <asp:Parameter Name="SOffer_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SOffer_id" DataSourceID="SqlDataSourceSOffer" GridLines="Both">
        <EditItemTemplate>
            SOffer_id:
            <asp:Label ID="SOffer_idLabel1" runat="server" Text='<%# Eval("SOffer_id") %>' />
            <br />
            Pr_id:
            <asp:TextBox ID="Pr_idTextBox" runat="server" Text='<%# Bind("Pr_id") %>' />
            <br />
            Pr_discont:
            <asp:TextBox ID="Pr_discontTextBox" runat="server" Text='<%# Bind("Pr_discont") %>' />
            <br />
            Valid_from:
            <asp:TextBox ID="Valid_fromTextBox" runat="server" Text='<%# Bind("Valid_from") %>' />
            <br />
            valid_to:
            <asp:TextBox ID="valid_toTextBox" runat="server" Text='<%# Bind("valid_to") %>' />
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
            Pr_id:
            <asp:TextBox ID="Pr_idTextBox" runat="server" Text='<%# Bind("Pr_id") %>' />
            <br />
            Pr_discont:
            <asp:TextBox ID="Pr_discontTextBox" runat="server" Text='<%# Bind("Pr_discont") %>' />
            <br />
            Valid_from:
            <asp:TextBox ID="Valid_fromTextBox" runat="server" Text='<%# Bind("Valid_from") %>' />
            <br />
            valid_to:
            <asp:TextBox ID="valid_toTextBox" runat="server" Text='<%# Bind("valid_to") %>' />
            <br />
            status:
            <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Oферта №:
            <asp:Label ID="SOffer_idLabel" runat="server" Text='<%# Eval("SOffer_id") %>' />
            <br />
            Продукт№:
            <asp:Label ID="Pr_idLabel" runat="server" Text='<%# Bind("Pr_id") %>' />
            <br />
            Описание:
            <asp:Label ID="Pr_discontLabel" runat="server" Text='<%# Bind("Pr_discont") %>' />
            <br />
            Валидно от:
            <asp:Label ID="Valid_fromLabel" runat="server" Text='<%# Bind("Valid_from") %>' />
            <br />
            Валидно дo:
            <asp:Label ID="valid_toLabel" runat="server" Text='<%# Bind("valid_to") %>' />
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
    <asp:SqlDataSource ID="SqlDataSourceSOffer" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Spec_Offer] WHERE [SOffer_id] = @SOffer_id" InsertCommand="INSERT INTO [Spec_Offer] ([Pr_id], [Pr_discont], [Valid_from], [valid_to], [status]) VALUES (@Pr_id, @Pr_discont, @Valid_from, @valid_to, @status)" SelectCommand="SELECT * FROM [Spec_Offer]" UpdateCommand="UPDATE [Spec_Offer] SET [Pr_id] = @Pr_id, [Pr_discont] = @Pr_discont, [Valid_from] = @Valid_from, [valid_to] = @valid_to, [status] = @status WHERE [SOffer_id] = @SOffer_id">
        <DeleteParameters>
            <asp:Parameter Name="SOffer_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Pr_id" Type="Int32" />
            <asp:Parameter Name="Pr_discont" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Valid_from" />
            <asp:Parameter DbType="Date" Name="valid_to" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Pr_id" Type="Int32" />
            <asp:Parameter Name="Pr_discont" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Valid_from" />
            <asp:Parameter DbType="Date" Name="valid_to" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="SOffer_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
