<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="addParty.aspx.cs" Inherits="Admin_addParty" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
    <script>
        function partyValidate()
        {

            var country = $('#<%= dropCountry.ClientID %>').val();
            var party = $('#<%= txtParty.ClientID %>').val();
            if (countr == 0||party=='')
            {
                alert("Please fillup required field");
                return false;
            }
            else
            {
                 return true;
            }

        }
        function partyInserted() {

            alert("Successfully Inserted.");
        }
        function partyInsertedFail() {

            alert("Insertion Failed.");
        }

       </script>

      <%--  <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
         <ContentTemplate>--%>
        <div id="countr" class="cmn">
            <asp:Label ID="Label1" runat="server" Text="Select Country"></asp:Label> <br />

            <asp:DropDownList CssClass="drop_box" ID="dropCountry" runat="server" AppendDataBoundItems="True"  ></asp:DropDownList>
        </div>

        <div id="party" class="cmn">
            <asp:Label ID="Label3" runat="server" Text="Enter Party Name"></asp:Label> <br />

            <asp:TextBox CssClass="text_box" ID="txtParty" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtParty" ErrorMessage="Required Field" Font-Size="Smaller" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        <br />
            </div>
            <div id="Div2" class="cmn">
            <asp:Label ID="Label4" runat="server" Text="Abbreviation"></asp:Label> <br />

            <asp:TextBox CssClass="text_box" ID="txtabbr" runat="server"></asp:TextBox>

            <br />


            <div id="Div1" class="cmn">
            <asp:Label CssClass="label_all" ID="Label2" runat="server" Text="Enter Total Number Of Members"></asp:Label> <br />

            <asp:TextBox CssClass="text_box" ID="txtTotMembers" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTotMembers" ErrorMessage="Enter Valid Number" Font-Size="Smaller" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{1,3}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTotMembers" ErrorMessage="Required Field" Font-Size="Smaller" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

          <br />
        </div>
     </div>

             
     
      <%--</ContentTemplate>
       <Triggers>
           <asp:AsyncPostBackTrigger ControlID="btnAdd" EventName="Click" />
       </Triggers>
        </asp:UpdatePanel>--%> 
                        <asp:Button CssClass="btn_all" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
</asp:Content>


