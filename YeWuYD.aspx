<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YeWuYD.aspx.cs" Inherits="YeWuYD" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    业务预订
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="registeInfo" width="100%">
         <tr>
                    <td><br /></td>
                </tr>
        <tr>
            
            <td >
                <asp:TextBox ID="leixing" runat="server" placeholder="请输入业务类型" Height="30px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="leixing"
                    ErrorMessage=" *业务类型必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr >
            
            <td>
                <asp:TextBox ID="XingMing" runat="server" placeholder="请输入公司名/个人姓名" Height="30px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="XingMing"
                    ErrorMessage="*公司名/个人姓名必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr >
           
            <td>
                <asp:TextBox ID="lxfs" runat="server" placeholder="请输入联系电话" Height="30px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="lxfs"
                    ErrorMessage="*联系电话必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            
            <td>
                <asp:TextBox ID="ydsj" runat="server" placeholder="请输入预约时间" Height="30px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ydsj"
                    ErrorMessage="*预约时间必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            
            <td>
                <label for="ksIDType3">
                    <asp:TextBox ID="yusuan" runat="server" placeholder="请输入预算" Height="30px" Width="150px"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="yusuan"
                        ErrorMessage="*预算必填"></asp:RequiredFieldValidator></label></td>
        </tr>
        <tr>
                    <td><br /></td>
                </tr>
        <tr>
                    <td><br /></td>
                </tr>
        <tr>
            
            <td style="height: 127px">
                <asp:TextBox ID="txtds" runat="server" placeholder="请输入要求" Height="115px" TextMode="MultiLine" Width="473px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 30px; width:75px;" valign="top" align="left">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认提交" /></td>
        </tr>
    </table>
</asp:Content>

