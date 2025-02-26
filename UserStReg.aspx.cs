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

public partial class UserStReg : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "优雅广告公司";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into Users(emal,UserName,Sex,Age,Ds,pwd,XingMing,Tel,Address,Photo)values('" + txtemal.Text + "','" + txtname.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Age.Text + "','" + txtds.Text + "','" + TextBox1.Text + "','" + XingMing.Text + "','" + Tel.Text + "','" + Address.Text + "','"+pic.Text+"')");

        Alert.AlertAndRedirect("注册成功！", "Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {   //这里是文件上传上传用户的头像 
        string res;
        upload up = new upload();
        res = up.Up(file1, "files/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "files/" + pic.Text;

    }
}
