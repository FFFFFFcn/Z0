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

public partial class _Default : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DataList1.DataSource = data.GetDataReader("select top 8   * from  AnLi    order by  AnLiClick desc ");
            DataList1.DataBind();





            DataList3.DataSource = data.GetDataReader("select top 8   * from  dbo.Information  where typeid=2 order by  id desc ");
            DataList3.DataBind();


            DataList2.DataSource = data.GetDataReader("select top 8   * from  dbo.Information  where typeid=1 order by  id desc ");
            DataList2.DataBind();
        }

    }
    protected string CutChar(string strChar, int intLength)
    {
        //取得自定义长度的字符串
        if (strChar.Length > intLength)
        { return strChar.Substring(0, intLength); }
        else
        { return strChar; }

    }

}
