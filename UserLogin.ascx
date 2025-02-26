<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserLogin.ascx.cs" Inherits="UserLogin" %>
<table width="100%">
    <tr>
        <td colspan="3" style="text-align: center;">
            <table id="Login2" runat="server" align="center" border="0" cellpadding="1" cellspacing="0"
                style="width: 295px">
                <tr>
                    <td><br /></td>
                </tr>
                <tr>
                    <td><br /></td>
                </tr>
                <tr>
                    <td><br /></td>
                </tr>
                <tr>
                   
                    <td align="left">
                        <asp:TextBox ID="TxtUserName" runat="server" placeholder="请输入登录账号" ValidationGroup="3" Width="295px" Height="30px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><br /></td>
                </tr>
                <tr>
                   
                    <td align="left">
                        <asp:TextBox ID="TxtPassword" runat="server" placeholder="请输入密码" TextMode="Password" ValidationGroup="3" Width="295px" Height="30px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><br /><br /></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" >

                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="登录" ValidationGroup="3" Width="295px" Height="30px" />&nbsp;
                    </td>
                </tr>
            </table>
            <table id="Login1" runat="server" align="center" border="0" cellpadding="1" cellspacing="0"
                style="width: 295px">
                <tr>
                    <td><br /></td>
                </tr>
                <tr>
                    <td><br /></td>
                </tr>
                <tr>
                    <td><br /></td>
                </tr>
                <tr>
                    <td nowrap="nowrap" >
                        <div align="right">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                    </td>
                    <td align="left" >
                        <span>，欢迎登录。</span>
                        </td>
                    <td align="center" colspan="2" style="height: 39px">
                        <asp:Button ID="Button3" runat="server" CausesValidation="False" class="btn" OnClick="Button4_Click"
                            Text="注销" /></td>
                        <td align="center" colspan="2" style="height: 39px">
                        <asp:Button ID="Button5" runat="server" CausesValidation="False" OnClick="Button1_Click"
                            Text="用户中心" /></td>
                </tr>
               
            </table>
        </td>
    </tr>
  
</table>