<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekProjem2.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style3 {
        width: 196px;
    }
    .auto-style4 {
        text-align: right;
        width: 120px;
    }
        .auto-style2 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #C0C0C0">
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete1.png" Width="30px" />
                        </td>
                        <td class="auto-style2">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #C0C0C0; margin-top:15px;">
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style6" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td>ONAYLANMAYAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                           <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete1.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style2">
                           <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
