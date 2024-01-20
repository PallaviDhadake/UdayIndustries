using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uday_innovations_MasterParent : System.Web.UI.MasterPage
{
    iClass c = new iClass();
    public string rootPath, currentYear;
    protected void Page_Load(object sender, EventArgs e)
    {
        rootPath = c.ReturnHttp();
        currentYear = DateTime.Now.Year.ToString();
    }
}
