<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="IaniDProject.Contacts" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        
    <p>
        <br />
        <Table>
            <tr>
                <td>За контакти:</td>
            </tr>
            <tr>
                <td>Адрес:</td>
                <td></td>
                <td>гр.София, кв. Студентски град</td>
                
            </tr>
            <tr>
                <td>Мениджър:</td>
                <td></td>
            </tr>
            <tr>
                <td>Яница Георгиева</td>
                <td></td>
                <td>0894 39 73 17</td>
                
            </tr>
        </Table>

        <br /><br />
        <Table>
            <tr>За въпроси:</tr>
            <tr>
                <td>
                    От:
                </td>
                <td>
                  <asp:TextBox ID="MailFrom" runat="server" Width="210px" meta:resourcekey="MailFromResource1"></asp:TextBox>                  
                </td>
            </tr>
            <tr>
                <td>До:</td>
                <td>
                    <asp:TextBox ID="MailTo" runat="server" Width="210px" meta:resourcekey="MailToResource1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Относно:</td>
                <td>
                    <asp:TextBox ID="Subject" runat="server" Width="210px" meta:resourcekey="SubjectResource1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Запитване:</td>
                <td>
                    <asp:TextBox ID="Body" runat="server" Height="92px" style="margin-left: 9px; text-align: justify;" TextMode="MultiLine" Width="260px" meta:resourcekey="BodyResource1"></asp:TextBox>
   
                </td>
            </tr>
        </Table>
    </p>
    <p>
       <%-- <p style="margin-left: 200px">--%>
        <asp:Button ID="BtnSendMailMsg" runat="server" OnClick="BtnSendMailMsg_Click" Text="Изпрати" meta:resourcekey="BtnSendMailMsgResource1" />
    </p>
    <p>
        <asp:Label ID="MailMsg" runat="server" meta:resourcekey="MailMsgResource2"></asp:Label>
    </p>
    <p>
        <br />
    </p>
</asp:Content>
