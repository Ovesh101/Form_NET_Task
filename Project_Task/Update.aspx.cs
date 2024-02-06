using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Task
{
    public partial class Update : System.Web.UI.Page
    {
        private int customerId;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            customerId = Convert.ToInt32(Request.QueryString["custID"]);

            if (!IsPostBack) {

               
                string customerName = Request.QueryString["customerName"];
                string age = Request.QueryString["age"];
                string email = Request.QueryString["email"];
                string phone_number = Request.QueryString["phone_number"];
               txtCustomerName.Text = customerName;
                txtAge.Text = age;
                txtEmail.Text = email;
                txtPhoneNumber.Text = phone_number;

                
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
            string updatedCustomerName = txtCustomerName.Text;
            string updatedAge = txtAge.Text;
            string updatedEmail = txtEmail.Text;
            string updatedPhoneNumber = txtPhoneNumber.Text;

            string query = "UPDATE customers SET customer_name=@updatedCustomerName, age=@updatedAge, email=@updatedEmail,  phone_number=@updatedPhoneNumber WHERE customer_id=@customerId";
            string constr = ConfigurationManager.ConnectionStrings["InventoryConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                   
                    cmd.Parameters.AddWithValue("@updatedCustomerName", updatedCustomerName);
                    cmd.Parameters.AddWithValue("@updatedAge", updatedAge);
                    cmd.Parameters.AddWithValue("@updatedEmail", updatedEmail);
                    cmd.Parameters.AddWithValue("@customerId", customerId);
                    cmd.Parameters.AddWithValue("@updatedPhoneNumber", updatedPhoneNumber);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Form.aspx");
                }

            }
          
        }

        protected void CountryDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string item = CountryDropDown.SelectedValue;
           if(!string.IsNullOrEmpty(item))
            {
                GetCity(item);
                CityDropDown.Enabled = true;
            }
            else
            {
                CityDropDown.Enabled = false;

            }
        }
        private void GetCity(string country)
        {

        }
    }
}