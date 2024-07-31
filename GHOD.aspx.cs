using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace College_Grievance_Cell
{
    public partial class GHOD : System.Web.UI.Page
    {
        ConnectionStringSettings C;SqlDataAdapter Da;DataSet Ds;
        string Query;public int I;
        void GetData()
        {
            C = new ConnectionStringSettings();
            C = ConfigurationManager.ConnectionStrings["SqlCon"];
            Query = "Select * from Complaints order by date Desc";
            Da = new SqlDataAdapter(Query, C.ConnectionString);
            Ds = new DataSet();
            Da.Fill(Ds, "C");Da.FillSchema(Ds, SchemaType.Source, "C");
            GridView1.DataSource = Ds.Tables[0];
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetData();
            }
        }

        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie Cook = new HttpCookie("Id");
            GridViewRow R = GridView1.SelectedRow;
            Label2.Text = "Select";
            Label L = (Label)R.Cells[1].Controls[1];
            Label2.Text = L.Text;
            Cook.Value = L.Text;
            Response.Cookies.Add(Cook);
        }
        
        protected void CheckOne_CheckedChanged(object sender, EventArgs e)
        {
            GridView1_SelectedIndexChanged(sender, e);
            GridViewRow R = GridView1.Rows[GridView1.SelectedIndex];
            CheckBox C = (CheckBox)R.FindControl("CheckOne");
            if (C.Checked)
            {
                //GridViewRow R = GridView1.Rows[GridView1.SelectedIndex];
                //q += R.Cells[0].Text;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            C = ConfigurationManager.ConnectionStrings["SqlCon"];
            SqlConnection Con = new SqlConnection(C.ConnectionString);
            Query = "Update Complaints set status='completed' where ComplaintId=@P1" ;
            SqlCommand Cmd = new SqlCommand(Query, Con);
            Cmd.CommandType = CommandType.Text;
            Cmd.Parameters.AddWithValue("@P1", Request.Cookies["Id"].Value);
            Con.Open();int R = Cmd.ExecuteNonQuery();Con.Close();
            if (R != 0) Label2.Text = R + " status Changed";
            else Label2.Text = "No Change";
            GetData();
        }
    }
}