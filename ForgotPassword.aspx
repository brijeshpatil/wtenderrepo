<%@ page title="" language="C#" masterpagefile="~/MasterPage/MainMasterPage.master" autoeventwireup="true" inherits="ForgotPassword, App_Web_r0l5cs0s" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">

  <center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
<center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">ForgotPassword</font></h3>
       </center>
<br />
<br />
 <div>
  <table  style="color:Black ;">
        <tr>
            <td><asp:Label ID ="lblFP" runat="server" Text ="Enter Your EmailId:"></asp:Label></td>
            <td><asp:TextBox ID ="txtFP" runat ="server"  Width ="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" 
                    ErrorMessage="Please Enter Your EmailId"  ValidationGroup ="F1" 
                    ControlToValidate ="txtFP" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rfvEmail1" runat="server"  
                    ControlToValidate ="txtFP" ErrorMessage="Please enter valid EmailId" 
                    ValidationGroup="F1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td> 
        </tr>
      
        <tr>
        <td></td>
            <td><asp:Button ID ="btnSubmit" runat ="server"  
                    Text ="Submit" onclick="btnSubmit_Click" CausesValidation ="true" ValidationGroup="F1" Width ="100px"/></td>
        </tr>
    </table>
    <asp:ValidationSummary ID="vsForgotPassword" runat="server" 
        ValidationGroup ="F1" ShowSummary ="false" ShowMessageBox ="true" 
        ForeColor="Red"  />
    <asp:Label ID="lbltxt" runat="server" Text=""></asp:Label>
    </div> 
    </center> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

