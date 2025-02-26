<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserStReg.aspx.cs" Inherits="UserStReg" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellpadding="2" class="registeInfo" width="100%">
    <tr>
                    <td><br /></td>
                </tr>
               
                            <tr>
                                
                                <td style="height:30px; width: 295px">
                                    <asp:TextBox ID="txtname" runat="server" placeholder="请输入登录账号" Height="30px" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                        ErrorMessage="*登录账号必填"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr >
                                <td>
                                    <asp:TextBox ID="XingMing" runat="server" placeholder="请输入姓名" Height="30px" Width="150px"></asp:TextBox></td>
                            </tr>
                            <tr >
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="150px">
                                        <asp:ListItem>保密</asp:ListItem>
                                        <asp:ListItem>男</asp:ListItem>
                                        <asp:ListItem>女</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:TextBox ID="Age" runat="server" placeholder="请输入年龄" Height="30px" Width="150px"></asp:TextBox></td>
                            </tr>
                            <tr >
                                <td>
                                    <asp:TextBox ID="Address" runat="server" placeholder="请输入家庭地址" Height="30px" Width="300px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                
                                <td>
                                    <label for="ksIDType3">
                                        <asp:TextBox ID="txtemal" runat="server" placeholder="请输入邮箱地址" Height="30px" Width="300px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemal"
                                            ErrorMessage="邮箱格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemal"
                                            ErrorMessage="邮箱必填"></asp:RequiredFieldValidator>
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                   <td td style="height:30px; width: 295px">
                                    <asp:Image ID="Image1" runat="server" Width="150px" />
                                </td>
                                </tr>
                            <tr>
                                    <td>
                                    <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="150px"></asp:TextBox>
                                    
                                    <input id="file1" runat="server" class="inputBox" style="width: 150px; height:30px;" type="file" />
                                        </td>
                             </tr>   
                                <tr>
                                    <td>
                                    <asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="formbutton" Height="30px"
                                    OnClick="Button2_Click" Text="上传头像" Width="75px" />
                                    <asp:Label ID="Label1" runat="server"
                                                Visible="False" Width="150px"></asp:Label></td>
                               
                            </tr>
                              <tr>
                                
                                <td>
                                    <asp:TextBox ID="Tel" runat="server" placeholder="请输入联系电话" Height="30px" Width="150px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" placeholder="请输入登录密码" Height="30px" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1"
                                        ErrorMessage="登录密码必填"></asp:RequiredFieldValidator></td>
                            </tr>
    <tr>
        
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="请再输入登录密码" Height="30px" Width="150px"></asp:TextBox><asp:RequiredFieldValidator
                ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="重复登录密码必填"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1"
                ControlToValidate="TextBox2" ErrorMessage="两次密码不一致"></asp:CompareValidator></td>
    </tr>
                            <tr>
                                
                                <td >
                                    <asp:TextBox ID="txtds" runat="server" placeholder="请输入个人说明" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Height="30px" Width="75px" Text="注册" /></td>
                            </tr>
                        </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    会员注册</asp:Content>

