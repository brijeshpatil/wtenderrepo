﻿<%@ page title="" language="C#" masterpagefile="~/MasterPage/Admin.master" autoeventwireup="true" inherits="Admin_ArchieveTenders, App_Web_qxecay11" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">

<center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
   
<center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Archive Tenders</font></h3>
       </center>
       <br />
<br />
  
       <div style ="width:100%;height:auto ;overflow:auto ;">
    <asp:GridView ID="grvArchieveTenders" runat="server" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" 
        onpageindexchanging="grvArchieveTenders_PageIndexChanging" PageSize="5">
        <Columns>
            <asp:BoundField DataField="TenderCode" HeaderText="TenderCode" />
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
            <asp:ImageField DataImageUrlField="Image" HeaderText ="Image">
            <ControlStyle Height ="100px" Width ="100px" />
           </asp:ImageField>
            <asp:BoundField DataField="Minimum_Cost" HeaderText="Minimum_Cost" />
            <asp:BoundField DataField="EndingDate" HeaderText="EndingDate" />
        </Columns>
        <EmptyDataTemplate>
            No Record Found...
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

<asp:Content ID="Content2" ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
<asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>