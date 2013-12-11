using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for IssueFlagDAL
/// </summary>
public class IssueFlagDAL
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["rateMyMPConnectionString"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter dap;
    string query;
	public IssueFlagDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable notifyIssues(IssueFlagBO issueflagBO)
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            query = "notifyIssues";
            dap = new SqlDataAdapter(query, con);
            dap.SelectCommand.Parameters.AddWithValue("@guid",issueflagBO.guid);
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            dap.Fill(ds, "notifyIssues");
            dap.Dispose();
            return ds.Tables["notifyIssues"];
        }
        catch
        {
            throw;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }

    }



}