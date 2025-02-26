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
using System.IO;
using System.Data.SqlClient;

public partial class ShowAnLi : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = " 优雅广告公司";
        if (!IsPostBack)
        {
          
            data.RunSql("update AnLi set AnLiClick=AnLiClick+1 where AnLiID=" + Request.QueryString["id"].ToString());
            string sql = "select * from AnLi where AnLiID=" + Request.QueryString["id"].ToString();
            getdata(sql);

         
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
        
            Label2.Text = dr["AnLiName"].ToString();
            Label4.Text = dr["AnLiPrice"].ToString();
          
            DIV1.InnerHtml = dr["AnLiIntroduce"].ToString();
            Label6.Text = dr["AnLiClick"].ToString();
            iGPhoto.ImageUrl = "files/" + dr["AnLiPhoto"].ToString();
            Label3.Text = dr["AnLiTypeName"].ToString();
            Hidden1.Value = dr["AnLiTypeID"].ToString();

           
          
          
            
        }

    }
   
   
    
   
}
