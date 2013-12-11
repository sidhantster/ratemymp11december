<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="registerMp.aspx.cs" Inherits="Admin_registerMp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

  
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">  
    <div class="outer">
    <div id="content">
   
         <script lang="javascript" type="text/javascript">
             function mpDetailsValidate() {
                
                 var fname = $('#<%= firstName.ClientID %>').val();
                 var lname = $('#<%= lastName.ClientID %>').val();
                 var email = $('#<%= email.ClientID %>').val();
                 var fupload = $('#<%= FileUpload1.ClientID %>').val();
                 var country = $('#<%= DropDowncountry.ClientID %>').val();
                 var state = $('#<%= DropDownState.ClientID %>').val();
                 var constituency = $('#<%= DropDownconstituency.ClientID %>').val();
                 var party = $('#<%= DropDownparty.ClientID %>').val();
                 var electedYear = $('#<%= DropDownelectedYear.ClientID %>').val();
                 // additional
                // var mname = $('#<%= middleName.ClientID %>').val();
                 var qualification = $('#<%= qualification.ClientID %>').val();
                 var profession = $('#<%= profession.ClientID %>').val();
                 var perAdd = $('#<%= permanentAddress.ClientID %>').val();
                 var perDid = $('#<%= DropDownpermanentDistrict.ClientID %>').val();
                 var perSid = $('#<%= DropDownpermanentState.ClientID %>').val();
                 var curADD = $('#<%= currentAddress.ClientID %>').val();
                 var curDid = $('#<%= DropDowncurrentDistrict.ClientID %>').val();
                 var curSid = $('#<%= DropDowncurrentState.ClientID %>').val();

                 if (fname == '' || lname == '' || fupload == '' || country == 0 || state == 0 || constituency == 0 || party == 0 || electedYear == 0 || qualification == '' || profession == '' || perAdd == '' || perDid == 0 || perSid == 0 || curADD == '' || curDid == 0 || curSid == 0)
                 {
                     alert("please fill up all required field.");
                     return false;
                }
                 else
                 {
                    // alert("kamal");
                    return true;
                }
             }

             function mpAlreadyExists() {
                 alert("This MP already exist.");
             }
             function newMpRegistered() {
                 alert("MP details successfully inserted.");
             }

    </script>
        <asp:ToolkitScriptManager runat="server"></asp:ToolkitScriptManager>
         
         
        <asp:Label CssClass="lbl" ID="fstName" runat="server" Text="First Name" Width="200px"></asp:Label>
        <asp:TextBox CssClass="text_box" ID="firstName" runat="server" ></asp:TextBox>
        <br />
        <asp:Label CssClass="lbl" ID="MdlName" runat="server" Text="Middle Name" Width="200px"></asp:Label>
        <asp:TextBox CssClass="text_box" ID="middleName" runat="server" ></asp:TextBox>
        <br/>
        
        <asp:Label CssClass="lbl" ID="lstName" runat="server" Text="Last Name" Width="200px"></asp:Label>   
        <asp:TextBox CssClass="text_box" ID="lastName" runat="server" ></asp:TextBox>
        <br/>
        <asp:Label CssClass="lbl" ID="lemail" runat="server" Text="E-Mail" Width="200px"></asp:Label>   
         <asp:TextBox CssClass="text_box" ID="email" runat="server"  ></asp:TextBox>

             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email" Font-Size="Smaller" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <br/>

        <asp:Label CssClass="lbl" ID="profilepic" runat="server" Text="Upload A profile Picture" Width="200px"></asp:Label>   
        <asp:FileUpload  CssClass="btn_choose" ID="FileUpload1" runat="server" />
        
        <br/>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
         <ContentTemplate>
        <asp:Label CssClass="lbl" ID="lcountry" runat="server" Text="Country" Width="200px"></asp:Label>   
        <asp:DropDownList CssClass="drop_box" ID="DropDowncountry" runat="server"  OnSelectedIndexChanged="DropDowncountry_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>Select Country</asp:ListItem>
        </asp:DropDownList>

        <br/>
        <asp:Label CssClass="lbl" ID="Labelstate" runat="server" Text="State" Width="200px"></asp:Label>  
        <asp:DropDownList CssClass="drop_box" ID="DropDownState" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="DropDownState_SelectedIndexChanged">
            <asp:ListItem>Select State</asp:ListItem>
        </asp:DropDownList>
        <br/>
        <asp:Label CssClass="lbl" ID="lconstituency" runat="server" Text="Constituency" Width="200px" Height="20px"></asp:Label>   
        <asp:DropDownList CssClass="drop_box" ID="DropDownconstituency" runat="server" >
            <asp:ListItem Selected="True">Select Constituency</asp:ListItem>
        </asp:DropDownList>

        <br/>
        
        
        <asp:Label CssClass="lbl" ID="lparty" runat="server" Text="Party" Width="201px" Height="23px"></asp:Label>  
        <asp:DropDownList CssClass="drop_box" ID="DropDownparty" runat="server" >
            <asp:ListItem>Select Party</asp:ListItem>
        </asp:DropDownList>
        
         <br/>
        
        
        <asp:Label CssClass="lbl" ID="lelectedYear" runat="server" Text="Elected Year" Width="200px" Height="20px"></asp:Label>  
        <asp:DropDownList CssClass="drop_box" ID="DropDownelectedYear" runat="server">   
        </asp:DropDownList>

         <br/>
        <asp:Label CssClass="lbl" ID="Lphone" runat="server" Text="Phone" Width="200px"></asp:Label>   
        <asp:TextBox CssClass="text_box" ID="phone" runat="server"  MaxLength="20"  OnTextChanged="phone_TextChanged"></asp:TextBox>
        
        <br/>
        <asp:Label CssClass="lbl" ID="Lmobile" runat="server" Text="Mobile" Width="200px"></asp:Label>   
        <asp:TextBox CssClass="text_box"  ID="mobile" runat="server"  MaxLength="20" ></asp:TextBox>
        
        <br/>
        <asp:Label CssClass="lbl" ID="Lqualfication" runat="server" Text="Qualification" Width="200px"></asp:Label>   
        <asp:TextBox CssClass="text_box" ID="qualification" runat="server" ></asp:TextBox>
        
        <br/>
        <asp:Label CssClass="lbl" ID="lprofession" runat="server" Text="Profession" Width="200px"></asp:Label>   
        <asp:TextBox CssClass="text_box" ID="profession" runat="server"></asp:TextBox>
        
        <br/>
        <asp:Label CssClass="lbl" ID="lpermAddr" runat="server" Text="Permanent Address" Width="200px"></asp:Label>
        <asp:TextBox CssClass="text_box" ID="permanentAddress" runat="server" ></asp:TextBox>
        
         <br/>
        <asp:Label CssClass="lbl" ID="permState" runat="server" Text="Permanent State" Width="200px"></asp:Label>  
        <asp:DropDownList CssClass="drop_box" ID="DropDownpermanentState" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="DropDownpermanentState_SelectedIndexChanged">
            <asp:ListItem>Select State</asp:ListItem>
        </asp:DropDownList>

        <br/>
       
         <asp:Label CssClass="lbl" ID="permDist" runat="server" Text="Permanent District" Width="200px"></asp:Label>   
        <asp:DropDownList CssClass="drop_box" ID="DropDownpermanentDistrict" runat="server" >
            <asp:ListItem>Select District</asp:ListItem>
        </asp:DropDownList>
         <br/>
        <asp:Label CssClass="lbl" ID="curAddr" runat="server" Text="Current Address" Width="200px"></asp:Label>   
        <asp:TextBox CssClass="text_box" ID="currentAddress" runat="server" ></asp:TextBox>
        
        <br/>
      
         <asp:Label CssClass="lbl" ID="curState" runat="server" Text="Current State" Width="200px"></asp:Label>   
        <asp:DropDownList CssClass="drop_box" ID="DropDowncurrentState" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="DropDowncurrentState_SelectedIndexChanged">
            <asp:ListItem>Select State</asp:ListItem>
        </asp:DropDownList>

         <br/>
         <asp:Label CssClass="lbl" ID="curDist" runat="server" Text="Current  District" Width="200px"></asp:Label>  
        <asp:DropDownList CssClass="drop_box" ID="DropDowncurrentDistrict" runat="server" >
             <asp:ListItem>Select District</asp:ListItem>
        </asp:DropDownList>

        <br/>
        </ContentTemplate>
      </asp:UpdatePanel>        
        <asp:Button ID="btnRegister" CssClass="btn_all" runat="server" Text="Register" OnClick="btnreg_Click" />
    
    </div>
     
  </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .lbl
        {}
    </style>
</asp:Content>



