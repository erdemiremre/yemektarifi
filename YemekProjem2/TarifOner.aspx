<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekProjem2.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        text-align: right;
        font-weight: bold;
    }
        .auto-style5 {
            width: 80%;
        }
        .auto-style6 {
            text-align: right;
            font-weight: bold;
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #CE7171">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="300px" CssClass="ta5" Height="20px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Malzemeler:</td>
        <td>
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="300px" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Yapılışı:</td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="300px" CssClass="ta5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Resim:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" CssClass="ta5" Height="20px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Tarif Öneren:</td>
        <td>
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="300px" CssClass="ta5" Height="20px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="300px" CssClass="ta5" Height="20px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#CCCCCC" Height="40px" style="font-weight: 700; text-align: center; margin-left: 108px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" CssClass="fb8" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
