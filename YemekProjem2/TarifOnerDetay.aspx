<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekProjem2.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            font-weight: bold;
            text-align: right;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style4 {
            font-weight: bold;
            text-align: right;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            text-align: right;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Tarif Ad:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtTarifAd" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Tarif Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TxtMalzemeler" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Yapılış:</td>
                <td>
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Tarif Resim: </strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Tarif Öneren :</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtOneren" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Öneren Mail :</strong></td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Kategori :</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" style="font-weight: 700; margin-left: 120px" Text="Onayla" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
