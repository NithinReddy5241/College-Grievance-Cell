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
    public partial class Grievance : System.Web.UI.Page
    {
        //public static int CId =101;
        SqlConnection Con;SqlCommand Cmd;
        ConnectionStringSettings C;
        public int Id;
        void GetData()
        {
            C= new ConnectionStringSettings();
            C = ConfigurationManager.ConnectionStrings["SqlCon"];
            string Query = "Select ComplaintID from Complaints";
            SqlDataAdapter Da = new SqlDataAdapter(Query, C.ConnectionString);
            DataSet Ds = new DataSet();
            Da.Fill(Ds, "C");
            int count= Ds.Tables[0].Rows.Count;
            if (Ds.Tables[0].Rows.Count == 0) { Id = 100;  }
            else
            {
                Id = Convert.ToInt32(Ds.Tables[0].Rows[count-1][0]);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            TextBoxCId.Text = (++Id).ToString();
            TextBoxD.Text = DateTime.Now.ToString();
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            //foreach(Control C in Controls)
            //{
            //    if(C is DropDownList)
            //    {
            //        DropDownList D = C as DropDownList;D.SelectedIndex = 0;
            //    }
            //    if (C is TextBox)
            //    {
            //        TextBox T = C as TextBox;T.Text = "";
            //    }
            //}
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            TextBoxDescription.Text = "";
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedIndex==0 || DropDownList2.SelectedIndex == 0)
            {

            }
            else
            C = ConfigurationManager.ConnectionStrings["SqlCon"];
            Con = new SqlConnection(C.ConnectionString);
            string Query = "Insert into Complaints values(@P1,@P2,@P3,@P4,@P5,@P6)";
            Cmd = new SqlCommand(Query, Con);
            Cmd.CommandType = CommandType.Text;
            Cmd.Parameters.AddWithValue("@P1", Id);
            Cmd.Parameters.AddWithValue("@P2", DropDownList2.SelectedValue);
            Cmd.Parameters.AddWithValue("@P3", DropDownList1.SelectedValue);
            Cmd.Parameters.AddWithValue("@P4", Convert.ToDateTime(TextBoxD.Text));
            Cmd.Parameters.AddWithValue("@P5", TextBoxDescription.Text);
            Cmd.Parameters.AddWithValue("@P6", "Pending");
            Con.Open();int R = Cmd.ExecuteNonQuery();Con.Close();
            if (R != 0) LabelDisplay.Text = "Complaint Registered Successfully under" +
                    " Complaint Id = " + Id;


        }

        protected void ButtonNew_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            TextBoxDescription.Text = "";
            TextBoxCId.Text=(Id).ToString();
        }
    }
    
}