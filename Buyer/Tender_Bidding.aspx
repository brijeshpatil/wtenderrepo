<%@ page title="" language="C#" masterpagefile="~/MasterPage/Buyer.master" autoeventwireup="true" inherits="Buyer_Tender_Bidding, App_Web_j2telni5" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphBuyer" Runat="Server">

 <center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
  
  <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Tender BidDetails</font></h3>
       </center>
<br />
<br />
 
   <div>
      <asp:Label ID="Label4" runat="server"></asp:Label>
    <table style="color:Black ;">
     
                 <tr>
            <td>   <asp:Label ID ="lblCompanyname" runat ="server" Text ="CompanyName: "></asp:Label></td>
              <td> <%--<asp:DropDownList ID ="ddlCompany" runat ="server" ></asp:DropDownList>
               <asp:RequiredFieldValidator ID="rfvCompany" runat="server" ControlToValidate ="ddlCompany"
             ErrorMessage="Please Select Company" ValidationGroup ="b1" InitialValue ="0" 
                      ForeColor="Red">*</asp:RequiredFieldValidator>--%>
                  <asp:Label ID="lblCompany" runat="server" Width ="300px"></asp:Label>
            </td>
           
        </tr>



       <%-- <tr>
            <td>
                <asp:Label ID ="lblBid_by" runat ="server" Text ="Bid_by"></asp:Label>  </td>
             <td>   <asp:DropDownList ID ="ddlBidder" runat ="server" ></asp:DropDownList>
            </td>
        </tr>--%>

        <tr>
            <td><asp:Label ID = "lblBid_Cost" runat ="server" Text ="Bid_Cost: "></asp:Label></td>
            <td><asp:TextBox ID ="txtBid_Cost" runat ="server" Width ="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBid_Cost" runat="server" ControlToValidate ="txtBid_Cost" 
                ErrorMessage="Please Enter BiddingCost" ValidationGroup ="b1" ForeColor="Red">*</asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="rfvBid_Cost1" runat="server" ErrorMessage="BiddingCost must be numeric values"
                ControlToValidate="txtBid_Cost" ValidationExpression="^[0-9]+$" ValidationGroup ="b1" ForeColor ="Red">*</asp:RegularExpressionValidator>
         
            </td>
        </tr>

      <%--  <tr>
            <td><asp:Label ID ="lblBid_Date" runat ="server" Text="Bid_Date:"></asp:Label></td>
            <td><%--<asp:TextBox ID ="txtBid_Date" runat ="server" ></asp:TextBox>
                <asp:Label ID="Label1" runat="server"></asp:Label>     
                <asp:RequiredFieldValidator ID="rfvBid_Date" runat="server"  ControlToValidate ="txtBid_Date"
                ErrorMessage="Please Select BiddingDate" ValidationGroup ="b1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
 --%>
     <%--   <tr>
            <td>
                <asp:Label ID ="lblDescription" runat ="server" Text ="Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID ="txtDesc" runat ="server" TextMode ="MultiLine" ></asp:TextBox>
            </td>
        </tr>--%>

      <%--  <tr>
            <td>
                <asp:Label ID ="lblStatus" runat ="server" Text ="Status"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID ="ddlStatus" runat ="server" ></asp:DropDownList>
            </td>
        </tr>--%>

        <tr>
            <td align="center" colspan="2">
               <asp:Button ID ="btnAddBid" runat ="server" Text ="Submit" 
                    onclick="btnAddBid_Click" CausesValidation ="true" ValidationGroup ="b1"  Width ="100px"/>
                <asp:Button ID ="btnCancelBid" runat ="server" Text ="Clear" 
                    onclick="btnCancelBid_Click" Width ="100px" />
            </td>
        </tr>

    </table>
    <asp:ValidationSummary ID="vsBidding" runat="server" ShowMessageBox ="true" 
                    ShowSummary ="false" ValidationGroup ="b1" ForeColor="Red"/>
    
            
            <%--<asp:GridView ID="grvBidding" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="BidId" 
            onrowcancelingedit="grvBidding_RowCancelingEdit" 
            onrowdeleting="grvBidding_RowDeleting" onrowediting="grvBidding_RowEditing" 
            onrowupdating="grvBidding_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="CompanyName">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# bind("CompanyName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Bid_Cost">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("Bid_Cost") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Bid_Cost") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Bid_Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("Bid_Date") %>'></asp:TextBox>
                            <asp:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TextBox2">
                            </asp:CalendarExtender>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# bind("Bid_Date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <EditItemTemplate>
                            <asp:Button ID="Button2" runat="server" CommandName="update" Text="Update" />
                            <asp:Button ID="Button3" runat="server" CommandName="cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CommandName="edit" Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button4" runat="server" CommandName="delete" Text="Delete" onclientclick = "return confirm('Are you sure want to delete the current record?')"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>--%>
    </div>
   
 </div>
 </center> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdvertisement" Runat="Server">
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

