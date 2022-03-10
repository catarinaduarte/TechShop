using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExCatalgoFinal_CatarinaSilva
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["marca"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }

            if (Request.QueryString["tipo"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource3;
                DataList1.DataBind();
            }


        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Motorola");
        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Sony");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Samsung");
        }

        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Mi");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Lenovo");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Asus");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Acer");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Micromax");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Apple");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Dell");
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Motorola");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?tipo=Telemóveis");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?tipo=Laptops");
        }

        protected void LinkButton18_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton18_Click1(object sender, EventArgs e)
        {

        }

        protected void LinkButton19_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?tipo=Tablet");
        }

        protected void LinkButton20_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?tipo=Acessórios_PC");
        }

        protected void LinkButton21_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?tipo=Televisões");
        }

        protected void LinkButton22_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }
    }
}