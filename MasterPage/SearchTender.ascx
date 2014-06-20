<%@ control language="C#" autoeventwireup="true" inherits="SearchTender, App_Web_qeszwpya" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>--%>

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

 <%--<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
 </asp:ToolkitScriptManager>
--%>
<table>
   
    <tr>
        <td colspan ="2" class="style2"><asp:TextBox ID ="txtKeyword" runat ="server" Width="200px"></asp:TextBox>
           <%-- <asp:TextBoxWatermarkExtender ID="txtKeyword_TextBoxWatermarkExtender" 
                runat="server" Enabled="True" TargetControlID="txtKeyword" WatermarkText ="Enter Keyword"></asp:TextBoxWatermarkExtender>--%>
        </td>
   </tr> 
    <tr>
        <td colspan ="2" align ="center" class="style1" ><asp:Button ID ="btnSearch" runat ="server"  
                Text = "Go" onclick="btnSearch_Click"/></td>
    </tr>
</table>