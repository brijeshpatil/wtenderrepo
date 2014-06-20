<%@ page title="" language="C#" masterpagefile="~/MasterPage/MainMasterPage.master" autoeventwireup="true" inherits="Feedback, App_Web_r0l5cs0s" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
<center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
<center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Feedback</font></h3>
       </center>
<br />
<br />
 <div>
  <table  style="color:Black ;">
        <tr>
            <td>
                <asp:Label ID = "lblName" runat ="server" Text ="Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID ="txtName" runat ="server" Width ="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Please enter your Name"
                ControlToValidate="txtName" ValidationGroup ="f1" ForeColor ="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID ="lblEmailId" runat ="server" Text ="EmailId:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID ="txtEmailId" runat ="server" Width="300px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" ErrorMessage="Please enter your EmailId"
                ControlToValidate="txtEmailId" ValidationGroup ="f1" ForeColor ="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rfvemail" runat="server" ErrorMessage="Please enter valid EmailId"
                ControlToValidate="txtEmailId" ValidationGroup ="f1" 
                    ValidationExpression ="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor ="Red">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID ="lblCompany" runat ="server" Text ="CompanyName:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID ="txtCompany" runat ="server" Width ="300px" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvCompany" runat="server" ErrorMessage="Please enter your CompanyName"
                ControlToValidate="txtCompany" ValidationGroup ="f1" ForeColor ="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID ="lblFeedback" runat ="server" Text ="Your Feedback:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID ="txtFeedback" runat ="server" TextMode ="MultiLine" Width ="300px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvFeedback" runat="server" ErrorMessage="Please enter your Feedback"
                ControlToValidate="txtFeedback" ValidationGroup ="f1" ForeColor ="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align ="center" colspan ="2">
                <asp:Button ID ="btnFeedback" runat ="server" Text ="Submit" 
                    onclick="btnFeedback_Click" CausesValidation ="true" ValidationGroup ="f1"  Width ="100px"/>
                <asp:Button ID ="btnClear" runat ="server" Text ="Clear" 
                    onclick="btnClear_Click" Width ="100px" />
            </td>
        </tr>
    </table>
    
    <asp:ValidationSummary ID="vsFeedback" runat="server" ValidationGroup ="f1" ShowMessageBox ="true" ShowSummary ="false" ForeColor ="Red"/>
</div>
</div> 
</center> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>


