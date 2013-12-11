<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="Admin_view" MasterPageFile="~/Admin/Admin.master" %>

<asp:Content ClientIDMode="Static" ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">
    <div id="cont">
        <div id="cntrMenu">

            <div id="cnrtMenu">
                <a href="viewMp.aspx">
                    <div class="buttons btnCntr">
                        <%--<img src="../images/admin/view.png" />--%>
                        MP
                    </div>
                </a>
                <a href="viewConstituencies.aspx">
                    <div class="buttons btnCntr">
                        <%--<img src="../images/admin/view.png" />--%>
                        Constituency
                    </div>
                </a>
                <a href="viewstates.aspx">
                    <div class="buttons btnCntr">
                        <%--<img src="../images/admin/view.png" />--%>
                        State
                    </div>
                </a>
                <a href="viewDistrict.aspx">
                    <div class="buttons btnCntr">
                        <%--<img src="../images/admin/view.png" />--%>
                        District
                    </div>
                </a>
                <a href="viewParty.aspx">
                    <div class="buttons btnCntr">
                       <%-- <img src="../images/admin/view.png" />--%>
                        Party
                    </div>
                </a>
            </div>


        </div>
    </div>

</asp:Content>
