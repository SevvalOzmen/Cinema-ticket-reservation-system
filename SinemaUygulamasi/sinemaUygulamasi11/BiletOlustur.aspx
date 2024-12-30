<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="BiletOlustur.aspx.cs" Inherits="sinemaUygulamasi11.BiletOlustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td style="width: 131px" class="text-left">Film Seçiniz :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="421px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 131px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 131px">Seans Seçiniz : </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="417px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 131px; height: 20px;"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 131px; height: 22px;">Salon Seçiniz : </td>
                <td style="height: 22px">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="417px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 131px; height: 22px;">&nbsp;</td>
                <td style="height: 22px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 131px; height: 22px;">
                    <asp:Label ID="Label1" runat="server" Text="Koltuk Seçiniz : "></asp:Label>
                </td>
                <td style="height: 22px">
                <asp:DropDownList ID="ddlSecenekler" runat="server" Height="16px" Width="418px"></asp:DropDownList>



                </td>
            </tr>
            <tr>
                <td style="width: 131px; height: 22px;">&nbsp;</td>
                <td style="height: 22px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 131px; height: 441px;">
                    <img alt="" src="sinemaTemsili.jpg" style="width: 642px; height: 441px" /></td>
                <td style="height: 441px">
                    
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image8" src="film5.jpg" runat="server" Height="186px" Width="130px" />
                    <asp:Image ID="Image14" src="Film6.jpg" runat="server" Height="186px" Width="130px" />
                    <asp:Image ID="Image15" src="film7.jpg" runat="server" Height="186px" Width="130px" />
                    <asp:Image ID="Image16" src="film8.jpg" runat="server" Height="186px" Width="130px" />
                    <asp:Image ID="Image17" src="film9.jpg" runat="server" Height="186px" Width="130px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image9" src="film10.jpg" runat="server" Height="186px" Width="130px" style="margin-left: 24px" />
                    <asp:Image ID="Image10" src="Film1.jpg" runat="server" Height="186px" Width="130px" />
                    <asp:Image ID="Image11" src="Film2.jpg" runat="server" Height="186px" Width="130px" />
                    <asp:Image ID="Image12" src="Film3.jpg" runat="server" Height="186px" Width="130px" />
                    <asp:Image ID="Image13" src="Film4.jpg" runat="server" Height="186px" Width="130px" />
                </td>
            </tr>
            <tr>
                <td style="width: 131px; height: 26px;"></td>
                <td style="height: 26px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 131px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
