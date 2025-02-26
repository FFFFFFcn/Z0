<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowAnLi.aspx.cs" Inherits="ShowAnLi" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" style="font-size: 9pt; width: 100%;
        height: auto">
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 323px; height: 30px; text-align: left">
                案例名称：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 1082px; height: 30px">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 323px; height: 30px; text-align: left">
                案例类别：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 1082px; height: 30px">
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                <input id="Hidden1" runat="server" type="hidden" /></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 323px; height: 30px; text-align: left">
                案例报价：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 1082px; height: 30px">
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                <input id="Hidden2" runat="server" type="hidden" /></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 323px; height: 30px; text-align: left">
                点击次数：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 1082px; height: 30px">
                <asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 18px">
                <asp:Image ID="iGPhoto" runat="server" Height="245px" Width="251px" /></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 18px">
                案例介绍</td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="vertical-align: top; text-indent: 8pt; height: auto;
                text-align: left">
                <div id="DIV1" runat="server" style="width: 100%; height: auto">
                </div>
            </td>
        </tr>
          <tr>
            <td bgcolor="#f7f6f3" colspan="2" style="height: 24px; text-align: center" align="center">
                </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    查看案例</asp:Content>

