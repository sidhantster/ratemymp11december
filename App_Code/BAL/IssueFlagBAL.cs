using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for IssueFlag
/// </summary>
public class IssueFlagBAL
{
    IssueFlagDAL issueflagDAL = new IssueFlagDAL();
	public IssueFlagBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable notifyIssues(IssueFlagBO issueflagBO)
    {
        try
        {
            return issueflagDAL.notifyIssues(issueflagBO);
        }
        catch
        {
            throw;

        }
        finally
        {

        }

    }
}