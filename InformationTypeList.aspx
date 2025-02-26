<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InformationTypeList.aspx.cs" Inherits="InformationTypeList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="content-list">


<asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
                            Width="100%">
                            <ItemTemplate>
                            
                            <article class="post type-post status-publish format-standard hentry category-anli">
                                <div class="row">
                                     
                                    <div class="entry-content col-md-8 col-sm-8 col-xs-6">
                                        <h2 class="entry-title">
                                            <a href="<%#Eval("id","InformationInfo.aspx?id={0}")%>"​ rel="bookmark">
                                               <%#Eval("name").ToString().Length > 25 ? CutChar(Eval("name").ToString(), 32) + "..." : Eval("name")%>
                                            </a>
                                        </h2>
                                        <div class="entry-des hidden-xs">
                                            <p>
                                               <%#Eval("content").ToString().Length > 100 ? CutChar(Eval("content").ToString(), 100) + "..." : Eval("content")%>
                                            </p>
                                        </div>
                                        <div class="entry-meta">
                                            <div class="time fl hidden-xs">
                                                <i class="fa fa-calendar-check-o">
                                                </i>
                                                <a href="<%#Eval("id","InformationInfo.aspx?id={0}")%>"​>
                                                  <%#Eval("Addtime")%>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            
                            
                                 
                            </ItemTemplate>
                        </asp:DataList>

                            
                        
                        </div>


<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tbody>
           
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
            </tbody>
        </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></asp:Content>
 