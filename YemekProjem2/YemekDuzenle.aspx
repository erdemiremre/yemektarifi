<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekProjem2.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
            font-size: large;
            width: 174px;
        }
        .auto-style3 {
            width: 174px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style6 {
            width: 174px;
            text-align: right;
        }
        .auto-style7 {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek Görüntü :</strong></td>
            <td class="auto-style7">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Güncelle" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style5" OnClick="Button3_Click" Text="Günün Yemeği Seç" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
