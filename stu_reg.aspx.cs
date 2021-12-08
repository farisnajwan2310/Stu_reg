using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_Registration
{
    public partial class stu_reg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=HMSB-M1MQ006203;Initial Catalog=MyDB;Integrated Security=True");
  

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        /* protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
        } */

        
        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText= "insert into tblstudent(std_id,std_name,fname, dob,s_program,region,address,cell_no,gender)" 
                + "values('" + txtStdID.Text + "','" + txtStdname.Text+ "','" + txtfname.Text + "','" + txtdob.Text + "','" + txtprogram.Text + "','" + txtregion.SelectedItem.ToString()+ "','" + txtaddress.Text + "','" + txtcell.Text + "','" + txtgender.Text + "')";
            cmd.ExecuteNonQuery();
            


            txtStdID.Text = " ";
            txtStdname.Text = " ";
            txtfname.Text = " ";
            txtdob.Text = " ";
            txtprogram.Text = " ";
            txtregion.Text = " ";
            txtaddress.Text = " ";
            txtcell.Text = " ";
            txtgender.Text = " ";
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void btnupdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update tblstudent set std_name='"+txtStdname.Text+ "', fname='"+txtfname.Text+"',dob='"+txtdob.Text+"',s_program='"+ txtprogram.Text+"', region='"+txtregion.Text+"', address='"+txtaddress.Text+"', cell_no='"+txtcell.Text+"', gender='"+txtgender.Text+"' where std_id='"+txtStdID.Text+"' ";
            cmd.ExecuteNonQuery();

            txtStdID.Text = " ";
            txtStdname.Text = " ";
            txtfname.Text = " ";
            txtdob.Text = " ";
            txtprogram.Text = " ";
            txtregion.Text = " ";
            txtaddress.Text = " ";
            txtcell.Text = " ";
            txtgender.Text = " ";
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri); //Refresh page after update data

        }
        protected void btndelete_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from tblstudent where std_id='"+txtStdID.Text+"'";
            cmd.ExecuteNonQuery();

            txtStdID.Text = " ";
            txtStdname.Text = " ";
            txtfname.Text = " ";
            txtdob.Text = " ";
            txtprogram.Text = " ";
            txtregion.Text = " ";
            txtaddress.Text = " ";
            txtcell.Text = " ";
            txtgender.Text = " ";
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri); //Refresh page after update data
        }

    }
}