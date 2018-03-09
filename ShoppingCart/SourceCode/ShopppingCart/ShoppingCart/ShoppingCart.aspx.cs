using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                btnLogin.Visible = true;
                btnLogout.Visible = false;
            }
            else
            {
                btnLogin.Visible = false;
                btnLogout.Visible = true;

            }
            GetAllCartItems();

        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session["UserId"] = 0;
            Response.Redirect("Home.aspx");
        }

        public void GetAllCartItems()
        {
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                btnCheckOut.Visible = false;
                CartItem.Visible = false;
                CartEmpty.Visible = true;

            }
            else
            {
                btnCheckOut.Visible = true;
                CartItem.Visible = true;
                CartEmpty.Visible = false;

            }

            List<ShoppingCart_Result> objList = new List<ShoppingCart_Result>();
            using (var entities = new ShoppingCartEntities())
            {
                objList = entities.ShoppingCart(Convert.ToInt32(Session["UserId"])).ToList<ShoppingCart_Result>();
            }
            Repeater1.DataSource = objList;
            Repeater1.DataBind();
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
             using (var entities = new ShoppingCartEntities())
                {
                    entities.CheckOut(Convert.ToInt32(Session["UserId"]));
                }
                ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('Check Out Succeed !')", true);
        }
    }
}