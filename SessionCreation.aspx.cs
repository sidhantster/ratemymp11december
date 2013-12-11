using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class SessionCreation : System.Web.UI.Page
{


        /******** session variables **********/
    private static Int64 guId;
    private static String name;
    private static String Email;



    protected void Page_Load(object sender, EventArgs e)
    {


        if (Request.Cookies["UserCookies"] != null || (Session["name"] != null && Session["email"] != null && Session["guId"] != null))// checking wether there is active cookie for this user or not.
        {
            Response.Redirect("~/RMMP/Homepage.aspx");
        }
       
       else
       {
            if (userCreateAndSession())
            {

                Response.Redirect("~/RMMP/Homepage.aspx", false);
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Default.aspx");
            }
        }
    }

    private bool userCreateAndSession()
    {  //+ email + "&name=" + name + "&social=" + social + "&socialType=" + socialtype + "&image=" + picture

        if (Request["email"] != null && Request["name"] != null && Request["social"] != null && Request["socialType"] != null && Request["image"] != null)
        {

            String QEmail = Request["email"];
            String Qname = Request["name"];
            String Qsocial = Request["social"];
            String QsocialType = Request["socialType"];
            String Qpicture = Request["image"];

            String[] SplitName = new String[3];
            userMasterBO userMasterBO = new userMasterBO();
            userMasterBAL userMasterBAL = new userMasterBAL();



            SplitName = Qname.Split(' ');


            //give the code to insert data into the usermaster table.
            userMasterBO.email = QEmail;
            userMasterBO.firstName = SplitName[0];
            userMasterBO.lastName = (SplitName.Count() > 1) ? SplitName[1] : "NULL";
            userMasterBO.middleName = (SplitName.Count() > 2) ? SplitName[2] : "NULL";
            userMasterBO.password = "";

            userMasterBO.socialNetwork = true;
            userMasterBO.status = true;
            userMasterBO.roleId = 3;  //3 for user , 2 for mp,1 for admin, 4  for moderator
            userMasterBO.snTypeId = userMasterBAL.getSocialNetworkId(QsocialType); //fetch the corresponding id of socialnetwork
            userMasterBO.profilePicPath = (Qpicture.Length > 1) ? Qpicture : "NULL";
            //insert data into the database.
            string msg = userMasterBAL.insertUser(userMasterBO).ToString();
            userMasterBO.guid = Convert.ToInt64(userMasterBAL.getGuid(userMasterBO));
            guId = userMasterBO.guid;
            name = userMasterBO.firstName;
            Email = userMasterBO.email;
            CreateSession();
            return true;
        }


        else

            return false;
    
    }
    public void CreateSession()
    {
       Session["name"] = name;
       Session["email"] = Email;
       Session["guId"] = guId.ToString();
       
    }

}