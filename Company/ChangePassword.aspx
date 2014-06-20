<%@ page title="" language="C#" masterpagefile="~/MasterPage/User.master" autoeventwireup="true" inherits="Company_ChangePassword, App_Web_r3obomnm" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cphbody" Runat="Server">
<center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
   
  <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Change Password</font></h3>
       </center>
<br />
<br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />

<table style="color:Black; ">

    <tr>
        <td>
            <asp:Label ID ="lblOldpwd" runat ="server" Text ="Current password:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID ="txtOldpwd" runat ="server" TextMode="Password" Width ="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvOld" runat="server"  
                ControlToValidate ="txtOldpwd" ErrorMessage="Please enter old password" 
                ValidationGroup="c1" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID ="lblNewpwd" runat ="server" Text ="New password:" ></asp:Label>
        </td>
        <td>
            <asp:TextBox ID ="txtNewpwd" runat ="server" TextMode="Password"  Width ="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNew" runat="server"  
                ControlToValidate ="txtNewpwd" ErrorMessage="Please enter new password" 
                ValidationGroup ="c1" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID ="lblConfipwd" runat ="server" Text ="Confirm new password:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID ="txtConfipwd" runat ="server" TextMode="Password"  Width ="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirm" runat="server"  
                ControlToValidate ="txtConfipwd" ErrorMessage="Please enter Confirm password" 
                ValidationGroup ="c1" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cmConfipwd" runat="server" 
                ErrorMessage="Please enter confirm password as new password" 
                ValidationGroup ="c1" ControlToCompare = "txtNewpwd" 
                ControlToValidate ="txtConfipwd" ForeColor="Red">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" align ="center">
            <asp:Button ID ="btnCP" runat ="server" Text ="Change Password" 
                onclick="btnCP_Click" CausesValidation ="true" ValidationGroup ="c1"   Width ="200px"/>
            <asp:Button ID ="btnCP1" runat ="server" Text ="Clear" onclick="btnCP1_Click"  Width ="100px" />
        </td>
    </tr>
</table>

    <asp:ValidationSummary ID="vsChangePassword" runat="server" 
        ValidationGroup ="c1" ShowSummary ="false" ShowMessageBox ="true" 
        ForeColor="Red"  />

</div> 
</center> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdvertisement" Runat="Server">
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

