<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="addCountry.aspx.cs" Inherits="Admin_addCountry" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <script>
        function countryInserted() {
            alert("Country Successfully Inserted.");
        }
        function countryInsertionFail() {
            alert("Sorry Can not be inserted.");
        }
    </script>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Enter Country Name"></asp:Label><br />
        <asp:TextBox CssClass="text_box" ID="txtCountry" runat="server"></asp:TextBox><br />
        <asp:Button CssClass="btn_all" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
</div>
</asp:Content>


