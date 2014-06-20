<%@ page title="" language="C#" masterpagefile="~/MasterPage/User.master" autoeventwireup="true" inherits="Company_BiddingStatus, App_Web_r3obomnm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphbody" Runat="Server">
  <div style="width: 520px; background-color: #FFFFD9;">
  <br />
  <br />
         <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">TenderDetails</font></h3>
       </center>
         <br />
         <br />
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
      </asp:ToolkitScriptManager>

          <asp:DataList ID="TenderDetails" runat="server" RepeatColumns="1" 
             DataKeyField="TenderId" onitemcommand="TenderDetails_ItemCommand">

        <ItemTemplate >
          <div style="width: 265px; height: 250px; font-size: medium; color: #330099;">
            <table cellpadding="3" cellspacing="3">
                 <tr>
                    
                    <td><asp:Image ID ="img1" runat ="server" Height="100px" 
                            ImageUrl='<%# bind("Image") %>' Width="100px" /></td>
                </tr>

                <tr>
                    <td>TenderCode:</td>
                    <td><asp:Label ID ="lblTencerCode" runat ="server" 
                            Text='<%# bind("TenderCode") %>' ></asp:Label></td>
                </tr>

                 <tr>
                    <td>Title:</td>
                    <td><asp:Label ID ="lblTitle" runat ="server" Text='<%# bind("Title") %>' ></asp:Label></td>
                </tr>

                 <tr>
                    <td>UploadDate:</td>
                    <td><asp:Label ID ="lblUploadDate" runat ="server" 
                            Text='<%# bind("UploadDate") %>' ></asp:Label></td>
                </tr>

                   <tr>
                    <td>CompanyName:</td>
                    <td><asp:Label ID ="lblCompanyName" runat ="server" 
                            Text='<%# bind("CompanyName") %>' ></asp:Label></td>
                </tr>

                  <tr>
                    <td>Description:</td>
                    <td><asp:Label ID ="lblDesc" runat ="server" Text='<%# bind("Description") %>' ></asp:Label></td>
                </tr>

                 <tr>
                    <td>Minimum_Cost:</td>
                    <td><asp:Label ID ="lblMCost" runat ="server" Text='<%# bind("Minimum_Cost") %>' ></asp:Label></td>
                </tr>

            </table>
        </div>
        <div style="z-index: auto; position: relative; top: -249px; left: 256px; width: 261px; height: 250px;font-size: medium; color: #330099;">
            <table style="width: 238px; margin-left: 21px" cellpadding="3" cellspacing="3">
               <tr style="width: 100px; height: 100px">
                    <td></td>
                    <td></td>
               </tr>
                    <tr>
                        <td>
                            Category:</td>
                        <td>
                            <asp:Label ID="lblCategory" runat="server" Text='<%# bind("CategoryName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            SubCategory:</td>
                        <td>
                            <asp:Label ID="lblSubCategory" runat="server" 
                                Text='<%# bind("SubCategoryName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            State:</td>
                        <td>
                            <asp:Label ID="lblState" runat="server" Text='<%# bind("StateName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            City:</td>
                        <td>
                            <asp:Label ID="lblCity" runat="server" Text='<%# bind("CityName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            StartingDate:</td>
                        <td>
                            <asp:Label ID="lblSD" runat="server" Text='<%# bind("StartingDate") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            EndingDate:</td>
                        <td>
                            <asp:Label ID="lblED" runat="server" Text='<%# bind("EndingDate") %>'></asp:Label>
                        </td>
                    </tr>
                    <%--  <tr>
                            <td colspan ="2" align ="center">
                               
                          </td> 
                 </tr>  --%>
               

            </table>
             </div>
         <center> 
             <div style="position: relative; z-index: auto; top: -164px; left: 137px; font-size: medium;">
                 <center> 
                     <asp:LinkButton ID="btnbid" runat="server" CommandName="asn" 
                         CommandArgument='<%# bind("TenderId") %>'>Show Bid</asp:LinkButton></center>
           </div></center> 
             </ItemTemplate>
        </asp:DataList>
          <center >
        <div style="position: relative; z-index: auto; top: -150px; left: -5px; height: auto; width: auto; overflow:auto">
         
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate >          
              <asp:GridView ID="grvBidder" runat="server" AutoGenerateColumns="False" 
                AllowPaging="True" PageSize="5" BackColor="White" BorderColor="#CC9966" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BidId" 
                onrowcommand="grvBidder_RowCommand" ondatabound="grvBidder_DataBound1" 
                onpageindexchanging="grvBidder_PageIndexChanging" >
                <Columns>
                    <asp:BoundField HeaderText="CompanyName" DataField="CompanyName" />
                    <asp:BoundField HeaderText="FIrstName" DataField="FirstName" />
                    <asp:BoundField HeaderText="LastName" DataField="LastName" />
                    <asp:BoundField HeaderText="Bid_Cost" DataField="Bid_Cost" />
                    <asp:BoundField HeaderText="Bid_Date" DataField="Bid_Date" />
                    <asp:TemplateField HeaderText="BidStatus">
                        <ItemTemplate>
                            <asp:LinkButton ID="lbtnStatus" runat="server" Text='<%# bind("Status") %>' 
                            CommandArgument='<%# bind("BidId") %>' CommandName ="as"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Send Mail">
                        <ItemTemplate>
                            <asp:Button ID="btnMail" runat="server" Text="Send Mail"  CommandName ="sm" CommandArgument='<%#Eval("BidId")+","+Eval("TenderId") %>' Visible="false"/>
                            <asp:Label ID="lblMail" runat="server" Text="" Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    No Records Found...
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
            
            </ContentTemplate>
            </asp:UpdatePanel>

        </div>
        </center>
        <div style="position: relative; z-index: auto; font-size: medium;">
         <center><asp:Label ID="lblmsg" runat="server" Text="Label" Font-Size="Medium" ForeColor ="Maroon" ></asp:Label>
           <br />
           <br />
            &nbsp;&nbsp;  &nbsp;&nbsp;<asp:LinkButton ID="lbtnPrevious" runat="server" onclick="lbtnPrevious_Click">Previous</asp:LinkButton>
             &nbsp;&nbsp; &nbsp;&nbsp;<asp:LinkButton ID="lbtnFirst" runat="server" onclick="lbtnFirst_Click">First</asp:LinkButton>
             &nbsp;&nbsp; &nbsp;&nbsp;<asp:LinkButton ID="lbtnNext" runat="server" onclick="lbtnNext_Click">Next</asp:LinkButton>
           &nbsp;&nbsp; &nbsp;&nbsp;  <asp:LinkButton ID="lbtnLast" runat="server" onclick="lbtnLast_Click">Last</asp:LinkButton>
        &nbsp;</center>
        </div>
    </div>
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdvertisement" Runat="Server">
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

