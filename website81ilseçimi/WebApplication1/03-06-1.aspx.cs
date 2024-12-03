using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _03_06_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int plaka = Convert.ToInt32(Request.QueryString["v1"].ToString());

            int plaka = Convert.ToInt32(Session["v1"].ToString());


            if (plaka < 10)
            {
                Label1.Text = "0" + plaka.ToString();
            }
            else 
            {
                Label1.Text = plaka.ToString();
            }
            Image1.ImageUrl = "~/il/" + plaka.ToString() + ".png";

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}