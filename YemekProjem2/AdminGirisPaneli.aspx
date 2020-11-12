<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AdminGirisPaneli.aspx.cs" Inherits="YemekProjem2.AdminGirisPaneli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        text-align: right;
    }
    .auto-style5 {
        font-weight: bold;
        font-size: medium;
        background-color: #3366FF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Kullanıcı Adı :</strong></td>
        <td>
            <asp:TextBox ID="TxtKullanici" runat="server" placeholder="Kullanıcı Adınız" CssClass="ta5" Height="30px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Parola :</strong></td>
        <td>
            <asp:TextBox ID="TxtParola" runat="server" TextMode="Password" placeholder="Şifrenizi Giriniz" CssClass="ta5" Height="30px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="fb8" Text="Giriş Yap" OnClick="Button1_Click" Height="40px" Width="100px" />
            </strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>
</asp:Content>
