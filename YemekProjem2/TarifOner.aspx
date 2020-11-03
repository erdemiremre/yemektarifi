<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekProjem2.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #CE7171">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Malzemeler:</td>
        <td>
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Yapılışı:</td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Resim:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="ta5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Tarif Öneren:</td>
        <td>
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#CCCCCC" Height="40px" style="font-weight: 700; text-align: center; margin-left: 108px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" CssClass="fb8" />
        </td>
    </tr>
</table>
</asp:Content>
