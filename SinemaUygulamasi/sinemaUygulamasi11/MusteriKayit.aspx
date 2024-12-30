<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="MusteriKayit.aspx.cs" Inherits="sinemaUygulamasi11.MusteriKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="nav-justified">
        <tr>
            <td style="width: 270px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Adnız: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tboxAd" runat="server" Width="292px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 270px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Soyadınız: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tboxSoyad" runat="server" Width="292px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 270px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Mail: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tboxMail" runat="server" Width="292px" OnTextChanged="tboxMail_TextChanged" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 270px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Yaş(Zorunlu Değil):"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tboxYas" runat="server" Width="292px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 270px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>
