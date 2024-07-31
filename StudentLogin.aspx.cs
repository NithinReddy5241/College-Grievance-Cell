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
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            ConnectionStringSettings C = new ConnectionStringSettings();
            C = ConfigurationManager.ConnectionStrings["SqlCon"];
            SqlConnection Con = new SqlConnection(C.ConnectionString);
            string Query = "Select * from Records where RollNo=@P1 and SPass=@P2";
            SqlCommand Cmd = new SqlCommand(Query, Con);
            Cmd.CommandType = CommandType.Text;
            Cmd.Parameters.AddWithValue("@P1", TextBoxR.Text);
            Cmd.Parameters.AddWithValue("@P2", TextBoxP.Text);            
            Con.Open();SqlDataReader Dr=Cmd.ExecuteReader();            
            if (Dr.Read())
            {                
                Response.Redirect("GStudent");
            }
            else
            {
                Response.Write("Student Does not exist");
            }Con.Close();
        }
    }
}