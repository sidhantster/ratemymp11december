<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Moderator.aspx.cs" Inherits="Admin_Moderator" MasterPageFile="~/Admin/Admin.master" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">


    <div id="cont">
        <div id="cntrMenu">

            <div id="cnrtMenu">
                <a href="moderateIssues.aspx">
                    <div class="buttons btnCntr">
                        <%--<img src="../images/admin/check.png" /><br />--%>
                        Issues
                    </div>
                </a>
                <a href="moderateComment.aspx">
                    <div class="buttons btnCntr">
                        <%--<img src="../images/admin/comments.png" /><br />--%>
                        Comments
                    </div>
                </a>
            </div>


        </div>
    </div>


</asp:Content>