﻿<%@ page title="" language="C#" masterpagefile="~/MasterPage/MainMasterPage.master" autoeventwireup="true" inherits="TendersByState, App_Web_r0l5cs0s" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
<center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />

<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
          <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Tenders By State</font></h3>
       </center>
       <br />
<br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate >
      <div >
    <table style="color:Black ;">

        <tr>
            <td>
                <asp:Label ID ="lblState" runat ="server" Text="State:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID ="ddlState" runat ="server" Width ="305px"></asp:DropDownList>
            </td>
        </tr>
        <tr>
        <td></td>
            <td><asp:Button ID ="btnSearch" runat ="server" 
                    Text="Search" onclick="btnSearch_Click" Width ="100px" /></td>
        </tr>
    </table>
    </div> 
   <br />
    <br />
    <div style="width :100%;height:auto;overflow:auto ">
    <br />
    <br />
    <asp:GridView ID="grvState" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" AllowPaging="True" 
            onpageindexchanging="grvState_PageIndexChanging" PageSize="5">
        <Columns>
            <asp:BoundField DataField="TenderCode" HeaderText="TenderCode" />
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="UploadDate" HeaderText="UploadDate" />
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
            <ControlStyle Width ="100px" Height ="100px" />
            </asp:ImageField>
           <%-- <asp:BoundField DataField="Description" HeaderText="Description" />--%>
            <asp:BoundField DataField="Minimum_Cost" HeaderText="Minimum_Cost" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
            <asp:BoundField DataField="StateName" HeaderText="StateName" />
        </Columns>
        <EmptyDataTemplate>
            No Records Found
        </EmptyDataTemplate>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
        
    </asp:GridView>
</div>
</ContentTemplate> 
</asp:UpdatePanel> 
</div> 
</center> 

</asp:Content>
<asp:Content ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

