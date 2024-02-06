using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Task
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CurrentPageIndex"] != null)
                {
                    GridView1.PageIndex = Convert.ToInt32(Session["CurrentPageIndex"]);
                }
                BindGrid();
            }
        }




        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["InventoryConnectionString"].ToString();
            string query = "SELECT * FROM customers";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            string Customer_Name = txtCustomer_name.Text;
            string Age = txtAge.Text;
            string Email = txtEmail.Text;
            long Phone_Number = Convert.ToInt32 (txtPhone_number.Text);

            txtCustomer_name.Text = "";
            txtAge.Text = "";
            txtEmail.Text = "";
            txtPhone_number.Text = "";

            string query = "INSERT INTO customers VALUES( @customer_name, @age, @email,  @phone_number)";
            string constr = ConfigurationManager.ConnectionStrings["InventoryConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                   
                    cmd.Parameters.AddWithValue("@customer_name", Customer_Name);
                    cmd.Parameters.AddWithValue("@age", Age);
                    cmd.Parameters.AddWithValue("@email", Email);
                    cmd.Parameters.AddWithValue("@phone_number", Phone_Number);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.BindGrid();
        }

        // Clear Button Functionality
        protected void Button1_Click(object sender, EventArgs e)
        {
            txtCustomer_name.Text = "";
            txtAge.Text = "";
            txtEmail.Text = "";
            txtPhone_number.Text = "";

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        // Edit Button Functionality
        protected void OnRowEdit(object sender, GridViewEditEventArgs e)
        {
            Session["CurrentPageIndex"] = GridView1.PageIndex;
            GridViewRow row = GridView1.Rows[e.NewEditIndex];
            int custID = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value);

            Label lblCustomer_name = (Label)row.FindControl("lblCustomer_name");
            string customerName = lblCustomer_name.Text;
            Label lblAge = (Label)row.FindControl("lblAge");
            string age = lblAge.Text;
            Label lblEmail = (Label)row.FindControl("lblEmail");
            string email = lblEmail.Text;
            Label lblPhone_number = (Label)row.FindControl("lblPhone_number");
            long phone_number = Convert.ToInt32(lblPhone_number.Text);


            Response.Redirect($"Update.aspx?custID={custID}&customerName={customerName}&age={age}&email={email}&phone_number={phone_number}");
        }

       protected void OnRowDelete(object sender, GridViewDeleteEventArgs e)
        {
            int customer_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string query = "Delete from customers where customer_id = @customer_id";
            string constr = ConfigurationManager.ConnectionStrings["InventoryConnectionString"].ToString(); 
            SqlConnection conn = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@customer_id", customer_id);
            cmd.Connection = conn;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            this.BindGrid();
        }
    }
}