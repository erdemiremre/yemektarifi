<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekProjem2.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        font-size: medium;
    }
    .auto-style3 {
        font-size: large;
    }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            font-size: medium;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #C0C0C0">
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" style="font-weight: bold; font-size: medium" OnClick="Button1_Click" />
                    </strong></td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px" style="font-weight: bold; font-size: medium" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>MESAJLAR LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text='<%# Eval("MesajMail") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                           <a href="MesajlarDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"> <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/ikonlar/view.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
