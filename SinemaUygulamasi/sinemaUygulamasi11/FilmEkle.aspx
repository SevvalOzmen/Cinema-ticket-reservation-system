<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="FilmEkle.aspx.cs" Inherits="sinemaUygulamasi11.FilmEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 273px">
                <asp:Label ID="Label1" runat="server" Text="Film Adını Gİriniz : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tboxAd" runat="server" OnTextChanged="TextBox1_TextChanged" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <br />
        <tr>
            <td class="modal-sm" style="width: 273px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>
