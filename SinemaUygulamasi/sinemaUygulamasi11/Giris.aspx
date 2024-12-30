<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="sinemaUygulamasi11.Giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <p style="margin-left: 120px">
            Mail<br />
            <asp:TextBox ID="tBoxMail" runat="server" TextMode="Email" Width="229px" OnTextChanged="tBoxMail_TextChanged"></asp:TextBox>
            <br />
            Şifre<br />
            <asp:TextBox ID="tBoxSifre" runat="server" OnTextChanged="TextBox2_TextChanged1" TextMode="Password" Width="227px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="buttonGiris" runat="server" OnClick="buttonGiris_Click" Text="Admin Giriş" Width="143px" />
        </p>
    </form>
</asp:Content>
