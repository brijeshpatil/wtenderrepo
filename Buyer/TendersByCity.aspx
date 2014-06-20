﻿<%@ page title="" language="C#" masterpagefile="~/MasterPage/Buyer.master" autoeventwireup="true" inherits="Buyer_TendersByCity, App_Web_j2telni5" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphBuyer" Runat="Server">
 <center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
          <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Tenders By City</font></h3>
       </center>
       <br />
<br />
   
      <div >
    <table style="color: Black ;">

        <tr>
            <td>
                <asp:Label ID ="lblCity" runat ="server" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID ="ddlCity" runat ="server" Width ="305px"></asp:DropDownList>
            </td>
        </tr>
        <tr>
        <td></td>
            <td>
                <asp:Button ID ="btnSearch" runat ="server" 
                    Text="Search" onclick="btnSearch_Click"  Width ="100px" /></td>
        </tr>
    </table>
</div>
<br />
<br />
<div style="width :100%;height:auto;overflow:auto ">
<br />
<br />

    <asp:GridView ID="grvCity" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        onpageindexchanging="grvCity_PageIndexChanging" PageSize="5" 
        DataKeyNames="TenderId" onrowcommand="grvCity_RowCommand" 
        onselectedindexchanged="grvCity_SelectedIndexChanged" 
        ondatabound="grvCity_DataBound">
        <Columns>
            <asp:BoundField DataField="TenderCode" HeaderText="TenderCode" />
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="UploadDate" HeaderText="UploadDate" />
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
            <ControlStyle Width ="100px" Height ="100px" />
            </asp:ImageField>
          <%--  <asp:BoundField DataField="Description" HeaderText="Description" />--%>
            <asp:BoundField DataField="Minimum_Cost" HeaderText="Minimum_Cost" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompnyName" />
            <asp:BoundField DataField="CityName" HeaderText="CityName" />
           <asp:TemplateField HeaderText="BidOnTender">
                <ItemTemplate>
                    <asp:Button ID="btnBid" runat="server" Text="BidOnTender" CommandArgument='<%# bind("TenderId") %>' CommandName ="as" />
                    <asp:Label ID="lblBid" runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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

</div> 
</center> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdvertisement" Runat="Server">
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

