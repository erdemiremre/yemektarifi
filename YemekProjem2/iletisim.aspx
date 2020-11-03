<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekProjem2.ilesim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        font-weight: bold;
        text-align: right;
    }
    .auto-style5 {
        font-size: x-large;
        color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td class="auto-style5" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Ad Soyad :</td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail Adresiniz :</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Konu : </td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mesaj :</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="ta5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="margin-left: 40px">
            <asp:Button ID="Button1" runat="server" style="font-weight: 700; margin-left: 84px;" Text="Gönder" Width="150px" CssClass="fb8" Height="30px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="margin-left: 40px">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
