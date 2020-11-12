<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekProjem2.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        font-size: medium;
            font-style: italic;
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
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><em>
                    <asp:TextBox ID="TxtHakkimizda" runat="server" CssClass="auto-style4" Height="250px" TextMode="MultiLine" Width="430px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
