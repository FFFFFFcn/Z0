<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ly.aspx.cs" Inherits="ly" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <DIV class=main style="width: 100%">

<DIV class=cases>
 
<DIV class="casePic5 nb">
<UL>
    <table id="Table4" border="0" cellpadding="1" cellspacing="0" style="width: 100%; font-size: 12px;">
        <tr>
                    <td><br /></td>
                </tr>
       
        <tr>
            
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="请输入联系电话" EnableViewState="False" Height="30px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="*联系电话必须填写"  ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="请输入11位数字" ValidationExpression="\d{11}"></asp:RegularExpressionValidator></td>
        </tr>
                    <tr>
                        
                        <td align="left">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入姓名" EnableViewState="False" Height="30px" Width="150px" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                ErrorMessage="*姓名必须填写"  ></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        
                        <td align="left">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="请输入邮箱地址" EnableViewState="False" Height="30px" Width="150px" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                ErrorMessage="*邮箱地址必须填写"  ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"
                                ErrorMessage="格式错误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                    </tr>
        <tr>
                    <td><br /></td>
                </tr>
        <tr>
                    <td><br /></td>
                </tr>
                    <tr>
                        
                        <td align="left">
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="请输入留言" EnableViewState="False" Height="112px"
                                TextMode="MultiLine" Width="50%" MaxLength="200"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                                ErrorMessage="*留言必须填写"  ></asp:RequiredFieldValidator></td>
                    </tr>
        <tr>
            <td colspan="2" style="height: 30px; width:75px;" valign="top" align="left">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="发布留言" /></td>
        </tr>
                </table>
  
 </UL>
    <div style=" text-align:left">   <asp:DataList ID="DataList1" runat="server" Width="100%">
                    <ItemTemplate>
                        
                            <table id="Table6" border="0" cellpadding="1" cellspacing="0" style="width: 100%; border-bottom: #ffffff 0.1mm solid;">
                                 <tr>
                    <td><br /></td>
                </tr>
                                 <tr>
                    <td><br /></td>
                </tr>
                                <tr>
                                    <td>
                                        姓名:
                                        <asp:Label ID="Label1" runat="server" ForeColor="Maroon" Text='<%# DataBinder.Eval(Container, "DataItem.username") %>'></asp:Label>&nbsp;&nbsp;留言时间：<asp:Label ID="Label4" runat="server" ForeColor="Maroon" Text='<%# DataBinder.Eval(Container, "DataItem.Addtime") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>
                                       内容:
                                        <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.lybcontent") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td height="16">
                                     回复:
                                        <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.lyhuifu") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="16">
                                    </td>
                                </tr>
                            </table>
                     
                    </ItemTemplate>
                </asp:DataList> </div> 
                
                <div>    共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; &nbsp;&nbsp; 当前第【<asp:Label
                    ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
               <asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                
                <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                
                <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink></div>
                    <br />
                    <br />

                </DIV>
</DIV></DIV>   
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    留言咨询</asp:Content>

