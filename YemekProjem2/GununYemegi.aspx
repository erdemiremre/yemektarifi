<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekProjem2.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList3" runat="server">
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("GununYemegiAd") %>' style="font-weight: 700; font-size: x-large"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Yapılışı:</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="157px" ImageUrl="~/resimler/fasulye.jpg" Width="379px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <strong>Yemek Puanı:</strong>
                        <asp:Label ID="Label11" runat="server" style="font-weight: 700" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarih:</strong>
                        <asp:Label ID="Label12" runat="server" style="font-style: italic" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
