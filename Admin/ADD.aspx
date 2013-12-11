<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD.aspx.cs" Inherits="Admin_ADD" MasterPageFile="~/Admin/Admin.master" %>

<asp:Content ClientIDMode="Static" ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">
    <div id="cont">
        <div id="cnrtMenu">
            <a href="registerMp.aspx">
                <div class="buttons btnCntr">

                   <%-- <img src="../images/admin/add.png" /><br />--%>
                    Register MP
                </div>
            </a>
            <a href="addCountry.aspx">
                <div class="buttons btnCntr">
                    <%--<img src="../images/admin/add.png" /><br />--%>
                    Add Country
                </div>
            </a>
            <a href="addConstituency.aspx">
                <div class="buttons btnCntr">
                    <%--<img src="../images/admin/add.png" /><br />--%>
                    Add Constituency
                </div>
            </a>
            <a href="addState.aspx">
                <div class="buttons btnCntr">
                   <%-- <img src="../images/admin/add.png" /><br />--%>
                    Add<br />State
                </div>
            </a>
            <a href="addDistrict.aspx">
                <div class="buttons btnCntr">
                    <%--<img src="../images/admin/add.png" /><br />--%>
                    Add District
                </div>
            </a>
            <a href="addParty.aspx">
                <div class="buttons btnCntr">
                    <%--<img src="../images/admin/add.png" /><br />--%>
                    Add<br /> Party
                </div>
            </a>
            <a href="addParameter.aspx ">
                <div class="buttons btnCntr">
                    <%--<img src="../images/admin/add.png" /><br />--%>
                    Parameters
                </div>
            </a>
        </div>


    </div>



</asp:Content>
