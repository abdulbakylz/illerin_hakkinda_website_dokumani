using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _03_06 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Redirect("03-06-1.aspx?v1="+DropDownList1.SelectedValue.ToString());

            Session["v1"] = DropDownList1.SelectedValue.ToString();
            Response.Redirect("03-06-1.aspx");
        }
    }
}