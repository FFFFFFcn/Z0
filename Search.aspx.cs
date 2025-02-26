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

public partial class Search : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from AnLiType");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();
            DropDownList1.Items.Add("所有类别");
            DropDownList1.Items[this.DropDownList1.Items.Count - 1].Value = " ";
            DropDownList1.SelectedIndex = this.DropDownList1.Items.Count - 1;
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAnLiList.aspx?ShangPinName=" + TxtName.Text + "&ShangPinTypeName=" + DropDownList1.SelectedItem.Text);
    }
}
