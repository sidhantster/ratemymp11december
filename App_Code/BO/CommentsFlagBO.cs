using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CommentsFlagBO
/// </summary>
public class CommentsFlagBO
{
    public Int64 id
    { get; set; }
    public Int64 guid
    { get; set; }
    public Int64 commentId
    { get; set; }
    public bool flag
    { get; set; }

}