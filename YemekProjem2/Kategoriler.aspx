<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekProjem2.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: right;
    }
    .auto-style3 {
        width: 196px;
    }
    .auto-style4 {
        text-align: right;
        width: 120px;
    }
        .auto-style6 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style7 {
            background-color: #999999;
        }
        .auto-style8 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            height: 30px;
            margin-left: 74px;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #C0C0C0">
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete1.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style2">
                           <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style7">
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style8" OnClick="BtnEkle_Click" Text="Ekle" Width="50px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
