<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>盛世广告公司</title>
     <link rel="stylesheet" href="css/language-selector.css" type="text/css"
        media="all" />
        <link rel='stylesheet'  href='css/styles.css' type='text/css'
        media='all' />
        <link rel='stylesheet' href='css/style.css' type='text/css'
        media='all' />
        <link rel='stylesheet'  href='css/jquery.fancybox.css'
        type='text/css' media='all' />
        <link rel='stylesheet'  href='css/swiper.css' type='text/css'
        media='all' />
        <link rel='stylesheet'  href='css/slicknav.min.css' type='text/css'
        media='all' />
        <link rel='stylesheet' href='css/font-awesome.min.css'
        type='text/css' media='all' />
        <script type='text/javascript' src='js/jquery.js'>
        </script>
        <script type='text/javascript' src='js/jquery-migrate.min.js'>
        </script>
</head>
<body class="archive tax-products term-hnt term-13">
    <form id="form1" runat="server">
    <header id="header">
            <div class="top-header">
                <div class="container">
                    
                    <div class="fr tool">
                        <span class="hidden-xs">
                            <a rel="nofollow"  href="UserStReg.aspx">
                                
                                </i>
                                用户注册
                            </a>
                        </span>
                        |
                        <span>
                            <a rel="nofollow"  href="Login.aspx">
                                
                                </i>
                                用户登录
                            </a>
                        </span>
                    </div>
                </div>
            </div>
            <div class="btm-header container">
                <div class="header-logo fl">
                    <a class="logo" href="/" title="">
                        
                    </a>
                    <h1 class="hidden-xs">
                            盛世广告公司
                            <br>
                            SHENG SHI Advertising Company
                    </h1>
                </div>
                <div class="contact fr hidden-xs">
                    <h1>
                        服务热线：
                        <a href="tel:400-8888-8888"​>
                            400-8888-8888
                        </a>
                    </h1>
                </div>
            </div>
            <div class="header-nav">
                <div class="container">
                    <ul id="menu-header" class="header-menu-con">
                        <li class="menu-item menu-item-type-custom menu-item-object-custom current_page_item menu-item-home">
                            <a href="Default.aspx"​>
                                <h1>首页</h1>
                            </a>
                        </li>
                     <li class="menu-item menu-item-type-taxonomy menu-item-object-products ">
                            <a href="InformationTypeList.aspx?TypeName=企业动态"​>
                                <h1>企业动态</h1>
                            </a>
                        </li>
                       
                        <li class="menu-item menu-item-type-taxonomy menu-item-object-products ">
                            <a href="AnLiList.aspx"​>
                                <h1>案例展示</h1>
                            </a>
                             
                        </li>
                        <li class="menu-item menu-item-type-taxonomy menu-item-object-products ">
                            <a href="About.aspx?Type=联系我们"​>
                                <h1>联系我们</h1>
                            </a>
                        </li>
                        <li class="menu-item menu-item-type-taxonomy menu-item-object-products ">
                            <a href="About.aspx?Type=公司简介"​>
                                <h1>公司简介</h1>
                            </a>
                        </li>
                          <li class="menu-item menu-item-type-taxonomy menu-item-object-products ">
                            <a href="Search.aspx"​>
                                <h1>案例查询</h1>
                            </a>
                        </li>
                            <li class="menu-item menu-item-type-taxonomy menu-item-object-products ">
                            <a href="ly.aspx"​>
                                <h1>留言咨询</h1>
                            </a>
                        </li>
                           <li class="menu-item menu-item-type-taxonomy menu-item-object-products ">
                            <a href="YeWuYD.aspx"​>
                                <h1>业务预定</h1>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </header>
  <div id="slider">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a href="ShowAnLi.aspx?id=11">
                                <img src="images/1-1g101164a70-l.jpg" height=400px alt="幻灯2">
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a href="ShowAnLi.aspx?id=9">
                                <img src="images/1-1g1011646030-l.jpg" height=400px alt="幻灯1">
                            </a>
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination big-p1">
                    </div>
                    <!-- Add Navigation -->
                    <div class="icon-arrows-left icon">
                    </div>
                    <div class="icon-arrows-right icon">
                    </div>
                </div>
            </div>
     
             
            <div class="container">
                <div class="row">
                    <div class="col-md-9 content">
                        <div class="case container">
                    <div class="title-con">
                        <h3>
                            精选广告案例
                            <span>
                                Excellent advertising case
                            </span>
                        </h3>
                    </div>
                    <div class="row">
                        <div class="swiper-container">
                            <div class="swiper-wrapper" style="left: 0px; top: 25px; ">
                            
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%">
                    <ItemTemplate>
                                <div class="swiper-slide">
                                    <a href="ShowAnLi.aspx?id=<%#Eval("AnLiID") %>"​ title="">
                                        <img class="thumbnail" src="files/<%#Eval("AnLiPhoto")%>" alt="" style="width: 100%; height: 100%"
                                        />
                                        <p>
                                       <%#Eval("AnLiName").ToString().Length > 25 ? CutChar(Eval("AnLiName").ToString(), 32) + "..." : Eval("AnLiName")%>
                                        </p>
                                        <br />
                                    </a>
                                </div>
                    </ItemTemplate>
                </asp:DataList>
                            
                             
                            </div>
                        </div>
                    </div>
                </div>
                     
                    </div>
                     
                </div>
            </div>
            <div class="news container">
                    <div class="title-con">
                        <h3>
                            动态&资讯
                        </h3>
                    </div>
                    <div class="row">
                        <div class="baike-con col-md-6">
                            <h3>
                                <a href="#"​>
                                    企业动态  Company news
                                </a>
                            </h3>
                            <ul class="baike-list">
                                <asp:DataList ID="DataList2" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
                            Width="100%">
                            <ItemTemplate>
                                <li class="baike-btm">
                                    <span>
                                        <%#Eval("Addtime","{0:d}")%>
                                    </span>
                                    <h2>
                                        <a href="<%#Eval("id","InformationInfo.aspx?id={0}")%>"​ rel="bookmark" title="">
                                           <%#Eval("name").ToString().Length > 25 ? CutChar(Eval("name").ToString(), 32) + "..." : Eval("name")%>
                                        </a>
                                    </h2>
                                    <p>
                                          <%#Eval("content").ToString().Length > 100 ? CutChar(Eval("content").ToString(), 100) + "..." : Eval("content")%>
                                    </p>
                                </li>           
                            </ItemTemplate>
                        </asp:DataList>
                                
                                
                            
                               
                            </ul>
                        </div>
                        <div class="baike-con col-md-6">
                            <h3>
                                <a href="#"​>
                                    行业资讯  Industry information 
                                </a>
                            </h3>
                            <ul class="baike-list">
                                
                              <asp:DataList ID="DataList3" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
                            Width="100%">
                            <ItemTemplate>
                            
                                
                                <li class="baike-btm">
                                    <span>
                                        <%#Eval("Addtime","{0:d}")%>
                                    </span>
                                    <h2>
                                        <a href="<%#Eval("id","InformationInfo.aspx?id={0}")%>"​ rel="bookmark" title="">
                                           <%#Eval("name").ToString().Length > 25 ? CutChar(Eval("name").ToString(), 32) + "..." : Eval("name")%>
                                        </a>
                                    </h2>
                                    <p>
                                          <%#Eval("content").ToString().Length > 100 ? CutChar(Eval("content").ToString(), 100) + "..." : Eval("content")%>
                                    </p>
                                </li>      
                            </ItemTemplate>
                        </asp:DataList>
                            </ul>
                        </div>
                    </div>
                </div>
         
        
        <section id="footer">
            <div class="container">
                <div class="row">
                     
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyr">
                             
                            <p>
                                Copyright &copy; 2018 盛世广告公司 | SHENG SHI Advertising Company 版权所有 &nbsp;&nbsp;
                                <a href="Admin/Login.aspx" target="_blank" >管理后台</a>
                                <a href="http://www.sise.com.cn/" target="_blank" >广州大学华软软件学院提供技术支持</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        &nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp;
        <script type='text/javascript' src='js/scripts.js'>
        </script>
        <script type='text/javascript' src='js/script.min.js'>
        </script>
        <script type='text/javascript' src='js/wphy.js'>
        </script>
        <script type='text/javascript' src='js/wp-embed.min.js'>
function IMG1_onclick() {

}

        </script>
    </form>
</body>
</html>
