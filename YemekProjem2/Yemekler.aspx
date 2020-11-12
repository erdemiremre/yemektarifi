<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekProjem2.Yemekler" %>

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
            font-weight: bold;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 3px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            text-align: center;
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
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete1.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style2">
                           <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("yemekid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" /></a>
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td>YEMEK EKLEME</td>
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
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">MALZEMELER:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="fb8" Text="Ekle" Width="100px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
