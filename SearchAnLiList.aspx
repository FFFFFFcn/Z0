<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchAnLiList.aspx.cs" Inherits="SearchAnLiList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
                    <td><br /></td>
                </tr>
        <tr>
            <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
                    Width="100%">
                    <ItemTemplate>
                        <div class="product1" style="width: 100%">
                            <div class="product">
                                <table cellpadding="0" cellspacing="0" height="100%" width="100%">
                                    <tr align="center" valign="middle">
                                        <td >
                                            <a class="highlightit" href='ShowAnLi.aspx?id=<%#Eval("AnLiID") %>'>
                                                <img alt="" border="0" src='files/<%#Eval("AnLiPhoto")%>' style="width: 100%; " /></a></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="ptxt">
                                <a href='ShowAnLi.aspx?id=<%#Eval("AnLiID") %>'>
                                    <%#Eval("AnLiName").ToString().Length > 25 ? CutChar(Eval("AnLiName").ToString(), 32) + "..." : Eval("AnLiName")%>
                                </a>
                            </div>
                            
                            
                        </div>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%;
                height: 38px">
                共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; &nbsp; &nbsp;
                当前第【<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    案例查询</asp:Content>

