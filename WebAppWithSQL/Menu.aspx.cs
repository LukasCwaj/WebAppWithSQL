using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows;
using System.Data;

namespace WebAppWithSQL 
{
    public partial class Menu : System.Web.UI.Page  
    {  
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void EneterBT_Click(object sender, EventArgs e)
        {



            string database = ((TextBox)DatabaseTB.FindControl("DatabaseTB")).Text;
            string catalog = ((TextBox)CatalogTB.FindControl("CatalogTB")).Text;
            string user = ((TextBox)UserTB.FindControl("UserTB")).Text;
            string password = ((TextBox)PasswordTB.FindControl("PasswordTB")).Text;
            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = database;
                builder.UserID = user;
                builder.Password = password;
                builder.InitialCatalog = catalog;
                builder.ConnectTimeout = 10;
              
                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    
                    connection.Open();
                    if ((connection.State & ConnectionState.Open) > 0)
                    {
                        string url = "Popup_ConnectionOK.aspx";
                        string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
                        ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
                        connection.Close();
                    }
                    else
                    {
                        string url = "Popup_ConnectionFail.aspx";
                        string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
                        ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
                    }
                    

                 /*   
                    String sql = "SELECT * from Autorzy";

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        connection.Open();
                       
                        
                        
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Response.Write($"{reader.GetInt32(0)}");
                                Response.Write($"\t{reader.GetString(1)}");
                                Response.Write($"\t{reader.GetString(2)}" + "<br/>");
                                
                            }
                        }
                    }

                    connection.Close();
                 */   
                }
            }
            catch (SqlException exc)
            {
                Response.Write($"{exc.Message}");
            }
        }

    }  
} 