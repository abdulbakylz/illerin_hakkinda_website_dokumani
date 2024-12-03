using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _27_05 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedItem.Text;

            if (Convert.ToInt32(DropDownList1.SelectedValue) < 10)
            {
                Label2.Text = "0" + DropDownList1.SelectedItem.Value.ToString();
            }
            else 
            {
                Label2.Text = DropDownList1.SelectedItem.Value.ToString();
            }
            Image1.ImageUrl = "~/il/"+DropDownList1.SelectedValue.ToString()+".png";
        }
    }
}