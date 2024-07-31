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
    public partial class GAdmin : System.Web.UI.Page
    {
        ConnectionStringSettings C; SqlDataAdapter Da; DataSet Ds;
        string Query;
        void GetData()
        {
            C = new ConnectionStringSettings();
            C = ConfigurationManager.ConnectionStrings["SqlCon"];
            Query = "Select * from Records";
            Da = new SqlDataAdapter(Query, C.ConnectionString);
            Ds = new DataSet();
            Da.Fill(Ds, "C"); Da.FillSchema(Ds, SchemaType.Source, "C");
            GridView1.DataSource = Ds.Tables[0];
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           // if (Page.IsPostBack) GetData();
        }
    }
}