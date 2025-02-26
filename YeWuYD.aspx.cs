using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class YeWuYD : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "优雅广告公司";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into YuDing(leixing,XingMing,lxfs,ydsj,yusuan,yaoqiu)values('" + leixing.Text + "','" + XingMing.Text + "','" + lxfs.Text + "','" + ydsj.Text + "','" + yusuan.Text + "','" + txtds.Text + "')");

        Alert.AlertAndRedirect("添加成功！", "YeWuYD.aspx");
    }

  
}
