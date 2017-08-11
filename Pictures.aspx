<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Pictures.aspx.cs" Inherits="IaniDProject.Pictures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Picture_id" DataSourceID="SqlDataSourcePicture" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
    <Columns>
        <asp:CommandField ShowEditButton="True" ButtonType="Button" CancelText="Отмени" DeleteText="Изтрии" EditText="Редактитай" InsertText="Вмъкни" NewText="Нов" SelectText="Избери" UpdateText="промени" />
        <asp:BoundField DataField="Picture_id" HeaderText="Снимка №" ReadOnly="True" SortExpression="Picture_id" />
        <asp:BoundField DataField="Picture_name" HeaderText="Име на снимката" SortExpression="Picture_name" />
        <asp:BoundField DataField="Picture_link" HeaderText="Линк" SortExpression="Picture_link" />
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
<asp:SqlDataSource ID="SqlDataSourcePicture" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Pictures] WHERE [Picture_id] = @original_Picture_id AND [Picture_name] = @original_Picture_name AND (([Picture_link] = @original_Picture_link) OR ([Picture_link] IS NULL AND @original_Picture_link IS NULL))" InsertCommand="INSERT INTO [Pictures] ([Picture_id], [Picture_name], [Picture_link]) VALUES (@Picture_id, @Picture_name, @Picture_link)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Pictures]" UpdateCommand="UPDATE [Pictures] SET [Picture_name] = @Picture_name, [Picture_link] = @Picture_link WHERE [Picture_id] = @original_Picture_id AND [Picture_name] = @original_Picture_name AND (([Picture_link] = @original_Picture_link) OR ([Picture_link] IS NULL AND @original_Picture_link IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Picture_id" Type="Int32" />
        <asp:Parameter Name="original_Picture_name" Type="String" />
        <asp:Parameter Name="original_Picture_link" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Picture_id" Type="Int32" />
        <asp:Parameter Name="Picture_name" Type="String" />
        <asp:Parameter Name="Picture_link" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Picture_name" Type="String" />
        <asp:Parameter Name="Picture_link" Type="String" />
        <asp:Parameter Name="original_Picture_id" Type="Int32" />
        <asp:Parameter Name="original_Picture_name" Type="String" />
        <asp:Parameter Name="original_Picture_link" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Picture_id" DataSourceID="SqlDataSourcepic" ForeColor="Black">
        <EditItemTemplate>
            Picture_id:
            <asp:Label ID="Picture_idLabel1" runat="server" Text='<%# Eval("Picture_id") %>' />
            <br />
            Picture_name:
            <asp:TextBox ID="Picture_nameTextBox" runat="server" Text='<%# Bind("Picture_name") %>' />
            <br />
            Picture_link:
            <asp:TextBox ID="Picture_linkTextBox" runat="server" Text='<%# Bind("Picture_link") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <InsertItemTemplate>
            Picture_id:
            <asp:TextBox ID="Picture_idTextBox" runat="server" Text='<%# Bind("Picture_id") %>' />
            <br />
            Picture_name:
            <asp:TextBox ID="Picture_nameTextBox" runat="server" Text='<%# Bind("Picture_name") %>' />
            <br />
            Picture_link:
            <asp:TextBox ID="Picture_linkTextBox" runat="server" Text='<%# Bind("Picture_link") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Продукт №:
            <asp:Label ID="Picture_idLabel" runat="server" Text='<%# Eval("Picture_id") %>' />
            <br />
            Име:
            <asp:Label ID="Picture_nameLabel" runat="server" Text='<%# Bind("Picture_name") %>' />
            <br />
            Линк:
            <asp:Label ID="Picture_linkLabel" runat="server" Text='<%# Bind("Picture_link") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Редактирай" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Изтрии" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Добави" />
        </ItemTemplate>
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourcepic" runat="server" ConnectionString="<%$ ConnectionStrings:DProectConnectionString %>" DeleteCommand="DELETE FROM [Pictures] WHERE [Picture_id] = @Picture_id" InsertCommand="INSERT INTO [Pictures] ([Picture_id], [Picture_name], [Picture_link]) VALUES (@Picture_id, @Picture_name, @Picture_link)" SelectCommand="SELECT * FROM [Pictures]" UpdateCommand="UPDATE [Pictures] SET [Picture_name] = @Picture_name, [Picture_link] = @Picture_link WHERE [Picture_id] = @Picture_id">
        <DeleteParameters>
            <asp:Parameter Name="Picture_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Picture_id" Type="Int32" />
            <asp:Parameter Name="Picture_name" Type="String" />
            <asp:Parameter Name="Picture_link" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Picture_name" Type="String" />
            <asp:Parameter Name="Picture_link" Type="String" />
            <asp:Parameter Name="Picture_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
