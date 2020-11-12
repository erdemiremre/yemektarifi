<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekProjem2.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style3 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>KATEGORİ AD:</strong></td>
            <td>
                <asp:TextBox ID="TxtKategoriAd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>ADET:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
