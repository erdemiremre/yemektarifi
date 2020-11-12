<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekProjem2.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="30px" Text="+" Width="30px" style="font-weight: bold; font-size: medium" OnClick="Button1_Click"/>
                    </strong></td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="30px" style="font-weight: bold; font-size: medium" Text="-" Width="30px" OnClick="Button2_Click"/>
                </td>
                <td>ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                           <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/ikonlar/öneri.png" Width="40px"/></a>
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
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Height="30px" style="font-weight: bold; font-size: medium" Text="+" Width="30px" OnClick="Button3_Click" />
                        </strong></td>
                    <td>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style6" Height="30px" style="font-weight: bold; font-size: medium" Text="-" Width="30px" OnClick="Button4_Click" />
                    </td>
                    <td>ONAYLI TARİF LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                           <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/ikonlar/öneri.png" Width="40px"/></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
    
</asp:Content>
