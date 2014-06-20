﻿<%@ control language="C#" autoeventwireup="true" inherits="Company_SearchTender, App_Web_qeszwpya" %>
<%--<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
--%>
 <style type="text/css">
     .style1
     {
         width: 244px;
     }
     .style2
     {
         width: 244px;
         height: 30px;
     }
 </style>

<%-- <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
 </asp:ToolkitScriptManager>--%>

<table>
   
    <tr>
        <td colspan ="2" class="style2"><asp:TextBox ID ="txtKeyword" runat ="server" Width="200px"></asp:TextBox>
           <%-- <asp:TextBoxWatermarkExtender ID="txtKeyword_TextBoxWatermarkExtender" 
                runat="server" Enabled="True" TargetControlID="txtKeyword" WatermarkText ="Enter Keyword"></asp:TextBoxWatermarkExtender>--%>
       
        <asp:RegularExpressionValidator ID="rfvKey" runat="server" ErrorMessage="Keyword must be alphabetic words."
                ControlToValidate="txtKeyword" ValidationExpression="^[a-zA-Z]+$" ForeColor ="Red" ValidationGroup ="K1">*</asp:RegularExpressionValidator>
             
        </td>
   </tr> 
    <tr>
        <td colspan ="2" align ="center" class="style1" ><asp:Button ID ="btnSearch" runat ="server"  
                Text = "Go" onclick="btnSearch_Click" ValidationGroup ="K1" CausesValidation ="true" /></td>
    </tr>
</table>
<asp:ValidationSummary ID="vsKey" runat="server" ShowMessageBox ="true" ShowSummary ="false" ValidationGroup ="K1" ForeColor ="Red" />
