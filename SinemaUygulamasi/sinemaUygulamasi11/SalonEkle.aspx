<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="SalonEkle.aspx.cs" Inherits="sinemaUygulamasi11.SalonEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td style="width: 381px">
                    <asp:Label ID="Label1" runat="server" Text="Salon Adı : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tboxSalon" runat="server" CssClass="col-xs-offset-0" Width="368px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 381px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 381px">
                    <asp:Label ID="Label2" runat="server" Text="Koltuk Sayısını Girin : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tboxSayi" runat="server" Width="365px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 381px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 381px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
