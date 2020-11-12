<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekProjem2.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #C0C0C0">
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
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
                        <td class="auto-style7"><a href='YemekDuzenle.aspx?Yemekid=<%#Eval("yemekid")%>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/touchscreen.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
