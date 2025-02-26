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
using System.Data.SqlClient;

public partial class About : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Label1.Text = Request.QueryString["Type"].ToString();
            //获取人文历史的类型信息，然后获取相应的信息到页面上
          
            sql = "select top 1  * from AboutInfo  where Type='" + Request.QueryString["Type"].ToString() + "'";
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            //读取信息到Div中显示
            this.DIV1.InnerHtml = dr["AboutInfo"].ToString();
        }

    }

}
