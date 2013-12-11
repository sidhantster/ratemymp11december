using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for IssueFlagBO
/// </summary>
public class IssueFlagBO
{
    public Int64 id
    { get; set; }
    public Int64 guid
    { get; set; }
    public Int64 issueId
    { get; set; }
    public bool flag
    { get; set; }

}