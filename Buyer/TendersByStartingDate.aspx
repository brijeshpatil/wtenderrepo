<%@ page title="" language="C#" masterpagefile="~/MasterPage/Buyer.master" autoeventwireup="true" inherits="Buyer_TendersByStartingDate, App_Web_j2telni5" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBuyer" Runat="Server">
<center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />

 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Tenders By StartingDate</font></h3>
       </center>
       <br />
<br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate >
      <div >
        
            <table style="color: Black ;">

                <tr>
                    <td>From:<asp:TextBox ID ="txtStartFrom" runat ="server" Width ="200px" ></asp:TextBox>
                        <asp:CalendarExtender ID="txtStartFrom_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="txtStartFrom">
                        </asp:CalendarExtender>
                    </td>
                    <td>To:<asp:TextBox ID ="txtStartTo" runat ="server"  Width ="200px"></asp:TextBox>
                        <asp:CalendarExtender ID="txtStartTo_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="txtStartTo">
                        </asp:CalendarExtender>
                    </td>
                </tr>
                <tr>
                    <td align ="center" colspan ="2">
                        <asp:Button ID ="btnSearch" runat ="server" Text ="Search" 
                            onclick="btnSearch_Click"  Width ="100px"/>
                    </td>
                </tr>
            </table>
            </div>
             <br />
            <br />
             <div style ="width:100%;height:auto ;overflow:auto ;">
                 <br />
                 <br />
            <asp:GridView ID="grvStartDate" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" AllowPaging="True" 
                onpageindexchanging="grvStartDate_PageIndexChanging" PageSize="5" 
                     DataKeyNames="TenderId" onrowcommand="grvStartDate_RowCommand" 
                     ondatabound="grvStartDate_DataBound">
                <Columns>
                    <asp:BoundField DataField="TenderCode" HeaderText="TenderCode" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="UploadDate" HeaderText="UploadDate" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                    <ControlStyle Height ="100px" Width ="100px" />
                    </asp:ImageField>
                   <%-- <asp:BoundField DataField="Description" HeaderText="Description" />--%>
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
                    <asp:BoundField DataField="Minimum_Cost" HeaderText="Minimum_Cost" />
                    <asp:BoundField DataField="StartingDate" HeaderText="StartingDate" />
                    <asp:TemplateField HeaderText="BidOnTender">
                     <ItemTemplate>
                        <asp:Button ID="btnBid" runat="server" Text="BidOnTender" CommandArgument='<%# bind("TenderId") %>' CommandName ="as" />
                         <asp:Label ID="lblBid" runat="server"></asp:Label>
                     </ItemTemplate>
                     </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    No Records Found....
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
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdvertisement" Runat="Server">
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

