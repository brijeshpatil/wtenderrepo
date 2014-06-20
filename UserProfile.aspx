<%@ page language="C#" autoeventwireup="true" inherits="UserProfile, App_Web_r0l5cs0s" masterpagefile="~/MasterPage/Home.master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ContentPlaceHolderID = "LocalScripts"  runat ="server" >  
   <asp:ScriptManager ID ="ScriptManager1" runat ="server"></asp:ScriptManager>
  <center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
     <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Registration Form</font></h3>
       </center>
       <br />
<br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
   
   <div >
    <table style="color:Black ;">
  <%--  <th align ="center" colspan ="2"><h3>Registration Form</h3></th>--%>

        <tr>
            <td><asp:Label ID ="lblCompanyName" runat ="server" Text ="CompanyName:"></asp:Label></td>
            <td><asp:TextBox ID ="txtCompanyName" runat ="server" Width="300px"></asp:TextBox>      
            <asp:RequiredFieldValidator ID="rfvCompanyName" runat="server"  ControlToValidate ="txtCompanyName"
            ErrorMessage="Please Enter CompanyName" ValidationGroup ="u1" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="rfvCompanyName1" runat="server" ErrorMessage="CompanyName must be alphabetic words."
                ControlToValidate="txtCompanyName" ValidationExpression="^[a-zA-Z]+$" ForeColor ="Red" ValidationGroup ="u1">*</asp:RegularExpressionValidator>
             </td>
        </tr>
    
        <tr>
            <td><asp:Label ID ="lblFname" runat ="server" Text ="FirstName:"></asp:Label></td>
            <td><asp:TextBox ID ="txtFname" runat ="server"  Width="300px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFname" runat="server"  ControlToValidate ="txtFname"
            ErrorMessage="Please Enter FirstName" ValidationGroup ="u1" ForeColor="Red">*</asp:RequiredFieldValidator>
            
              <asp:RegularExpressionValidator ID="rfvFname1" runat="server" ErrorMessage="FirstName must be alphabetic words."
                ControlToValidate="txtFname" ValidationExpression="^[a-zA-Z]+$" ForeColor ="Red" ValidationGroup ="u1">*</asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblLname" runat ="server" Text ="LastName:"></asp:Label></td>
            <td><asp:TextBox ID ="txtLname" runat ="server"  Width="300px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvLname" runat="server"  ControlToValidate ="txtLname"
            ErrorMessage="Please Enter LastName" ValidationGroup ="u1" ForeColor="Red">*</asp:RequiredFieldValidator>
            
             <asp:RegularExpressionValidator ID="rfvLname1" runat="server" ErrorMessage="LastName must be alphabetic words."
                ControlToValidate="txtLname" ValidationExpression="^[a-zA-Z]+$" ForeColor ="Red" ValidationGroup ="u1">*</asp:RegularExpressionValidator>

            </td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblGender" runat ="server" Text ="Gender:"></asp:Label></td>
            <td><asp:RadioButtonList ID ="rblGender" runat ="server" 
                    RepeatDirection="Horizontal" >
                <asp:ListItem Selected="True">Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblAddress" runat ="server" Text ="Address:"></asp:Label></td>
            <td><asp:TextBox ID ="txtAddress" runat ="server" TextMode ="MultiLine"  Width="300px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvAddress" runat="server"  ControlToValidate ="txtAddress"
            ErrorMessage="Please Enter Address" ValidationGroup ="u1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

             <asp:UpdatePanel ID ="ud1" runat ="server">
    <ContentTemplate >
        <tr>
            <td><asp:Label ID ="lblState" runat ="server" Text ="State:"></asp:Label></td>
            <td><asp:DropDownList ID ="ddlState" runat ="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlState_SelectedIndexChanged" Width ="305px" ></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvState" runat="server"  ControlToValidate ="ddlState"
            ErrorMessage="Please Select State" ValidationGroup ="u1" InitialValue ="0" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblCity" runat ="server" Text ="City:"></asp:Label></td>
            <td><asp:DropDownList ID ="ddlCity" runat ="server" Width ="305px"></asp:DropDownList>
              <asp:RequiredFieldValidator ID="rfvCity" runat="server"  ControlToValidate ="ddlCity"
            ErrorMessage="Please Select City" ValidationGroup ="u1" InitialValue ="0" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblMobileno" runat ="server" Text ="Mobileno:"></asp:Label></td>
            <td><asp:TextBox ID ="txtMobileno" runat ="server"  Width="300px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvMobileno" runat="server"  ControlToValidate ="txtMobileno"
            ErrorMessage="Please Enter Mobileno" ValidationGroup ="u1" ForeColor="Red">*</asp:RequiredFieldValidator>
            
            <asp:RegularExpressionValidator ID="RegExp1" runat="server" ErrorMessage="Mobileno must be 10 digit long numeric values"
                ControlToValidate="txtMobileno" ValidationExpression="^[0-9]{10}$" ValidationGroup ="u1" ForeColor ="Red">*</asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblImage" runat ="server" Text ="Image:"></asp:Label></td>
            <td><asp:FileUpload ID ="fuImage" runat ="server"/>
              <asp:RequiredFieldValidator ID="rfvImage" runat="server"  ControlToValidate ="fuImage"
            ErrorMessage="Please Select Image" ValidationGroup ="u1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblEmail" runat ="server" Text ="EmailId:"></asp:Label></td>
            <td><asp:TextBox ID ="txtEmail" runat ="server"  Width="300px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvEmail" runat="server"  ControlToValidate ="txtEmail"
            ErrorMessage="Please Enter EmailId" ValidationGroup ="u1" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rfvEmailID" runat="server"  ControlToValidate ="txtEmail"
            ErrorMessage="Please Enter Valid EmailId" ValidationGroup ="u1" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red">*</asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblPassword" runat ="server" Text ="Password:"></asp:Label></td>
            <td><asp:TextBox ID ="txtPassword" runat ="server" TextMode ="Password"  Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server"  ControlToValidate ="txtPassword"
                ErrorMessage="Please Enter Password" ValidationGroup ="u1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblHQ" runat ="server" Text ="HintQuestion:"></asp:Label></td>
            <td><asp:DropDownList ID ="ddlHQ" runat ="server"  Width ="305px">
                <asp:ListItem Selected="True" Text="Select Question" Value="0"><%--Select Question--%></asp:ListItem>
                <asp:ListItem Text="What is your Birth Place" Value="1"><%--What is your Birth Place--%></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvHQ" runat="server" ControlToValidate ="ddlHQ"
                ErrorMessage="Please Select Question" ValidationGroup ="u1" InitialValue ="0" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
        </tr>
           </ContentTemplate>
      
</asp:UpdatePanel>
        <tr>
            <td><asp:Label ID ="lblHA" runat ="server" Text ="HintAnswer:"></asp:Label></td>
            <td><asp:TextBox ID ="txtHA" runat ="server"  Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvHA" runat="server" ControlToValidate ="txtHA"
                ErrorMessage="Please Enter Answer" ValidationGroup ="u1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID ="lblUserType" runat ="server" Text ="UserType:" ></asp:Label></td>
            <td><asp:RadioButtonList ID ="rbtnUserType" runat ="server" 
                    RepeatDirection="Horizontal" >
                <asp:ListItem Selected = "True" >Company</asp:ListItem>
                <asp:ListItem>Buyer</asp:ListItem>
            
            </asp:RadioButtonList></td>
        </tr>

        <%--<tr>
            <td><asp:Label ID ="lblIsBlock" runat ="server" Text ="IsBlock:"></asp:Label></td>
            <td><asp:CheckBox ID ="chkIsBlock" runat ="server" Text ="IsBlock"/></td>
        </tr>--%>

        <tr>
            <td align ="center" colspan="2" ><asp:Button ID ="btnUserProfile" runat ="server" 
                    Text ="Register" onclick="btnUserProfile_Click"  CausesValidation ="true" ValidationGroup ="u1" Width ="100px"/>
            <asp:Button ID ="btnUserProfile1" runat ="server" Text ="Clear" 
                    onclick="btnUserProfile1_Click"  Width ="100px"/></td>
            
        </tr>
         <tr>
            <td align="center" colspan="2">
                <asp:ValidationSummary ID="vsUserProfile" runat="server" ShowMessageBox ="true" ShowSummary ="false" ValidationGroup ="u1" ForeColor ="Red"/>
            </td>
        </tr>
    </table>
   
    </div>
   
 </div> 
 </center> 

</asp:Content>
   
<asp:Content ContentPlaceHolderID ="cphLogin" runat ="server" >
    <%-- <form id ="frm" runat ="server" >
    <asp:Login ID="AdminLogin" runat="server" UserNameLabelText="EmaillId:" 
        onauthenticate="AdminLogin_Authenticate" Width="100px">
    </asp:Login>
    </form>--%>

      <%-- <asp:ScriptManager ID ="sc2" runat ="server" ></asp:ScriptManager>--%>
     
      
    <table style="height: 184px; width: 200px; color: #000000;" >
    
        <tr>
            <td>
                <asp:Label ID ="UserType" runat ="server"  Text = "UserType:"></asp:Label>
            </td>    
            <td style="width: 142px">
                <asp:DropDownList ID ="ddlUserType" runat ="server">
                    <asp:ListItem Selected ="True" Value ="0">Select UserType</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Company</asp:ListItem>
                    <asp:ListItem>Buyer</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvUserType" runat="server" ErrorMessage="Please Select Valid UserType"
                 ControlToValidate ="ddlUserType" ValidationGroup ="l1" InitialValue ="0" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID ="lblUsername" runat ="server" Text ="EmailId:" ></asp:Label>
            </td>
            <td style="width: 142px">
                <asp:TextBox ID ="txtUsername" runat ="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Please Enter EmailId"
                ControlToValidate="txtUsername" ValidationGroup ="l1" ForeColor="Red">*</asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="revUsername" runat="server" ErrorMessage="Please Enter Valid EmailId"
                ControlToValidate ="txtUsername" ValidationGroup ="l1"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red">*</asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID ="Label1" runat ="server" Text ="Password:"></asp:Label>
            </td>
            <td style="width: 142px">
                <asp:TextBox ID ="txtPass" runat ="server" TextMode ="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPass" runat="server" ErrorMessage="Please Enter Password:"
                ControlToValidate ="txtPass" ValidationGroup ="l1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td align="center" colspan="2">
                <asp:Button ID ="btnLogin" runat ="server" Text ="Login" 
                    CausesValidation ="true" onclick="btnLogin_Click"  ValidationGroup ="l1" />
            </td>
        </tr>

        <tr>
            <td align="center" colspan="2">
                <asp:ValidationSummary ID="vsLogin" runat="server" ShowMessageBox ="true" 
                    ShowSummary ="false" ValidationGroup ="l1" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td align ="center" colspan ="2">
                <asp:Label ID="Label3" runat="server" ForeColor ="Red"></asp:Label>
            </td>
        </tr>
    </table>
 
</asp:Content>
<asp:Content ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>



