using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for CommentsFlag
/// </summary>
public class CommentsFlagBAL
{
	public CommentsFlagBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    CommentsFlagDAL commentsflagDAL = new CommentsFlagDAL();

    public DataTable notifyComment(CommentsFlagBO commentsflagBO)
    {
        try
        {
            return commentsflagDAL.notifyComments(commentsflagBO);
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