<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr align="left">
            <tr>
                    <td><br /></td>
                </tr>
                
            <td align="left" height="30px" style="text-align: center">
                案例类别：<asp:DropDownList ID="DropDownList1" runat="server" Width="150px" Height="30px">
                </asp:DropDownList>
                案例名称关键字：<asp:TextBox ID="TxtName" runat="server" height="30px" ></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Height="30px" Width="150px" OnClick="btnRegister_Click"
                    Text="查询" ></asp:Button>
            </td>
        </tr>
        
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    案例查询</asp:Content>

