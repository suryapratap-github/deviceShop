using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rblGender_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Save the selected value as a session variable
        Session["SexValue"] = rblGender.SelectedValue.ToString();
    }

    protected void ddlMembershipType_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlMembershipType.Items.Clear();
        ddlMembershipType.Items.Add("Select Type");

    }

    protected void ddlTimings_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlTimings.Items.Clear();
        ddlTimings.Items.Add("Select Timings");

    } 
}