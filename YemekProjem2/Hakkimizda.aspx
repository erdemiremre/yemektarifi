<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekProjem2.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            font-size: x-large;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style4"><strong>HAKKIMIZDA<br />
                </strong></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" Width="440px">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
                
                <br />
                
                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/resimler/blog.jpg" Width="442px" />
            </td>
        </tr>
    </table>
</asp:Content>
