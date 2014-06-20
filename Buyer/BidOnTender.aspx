<%@ page title="" language="C#" masterpagefile="~/MasterPage/Buyer.master" autoeventwireup="true" inherits="Buyer_BidOnTender, App_Web_j2telni5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBuyer" Runat="Server">
  <div style="width: 520px; background-color: #FFFFD9;height:900px;">
  <br />
  <br />
         <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">TenderDetails</font></h3>
       </center>
         <br />
         <br />
          <asp:DataList ID="TenderDetails" runat="server" RepeatColumns="1" 
             onitemcommand="TenderDetails_ItemCommand" DataKeyField="TenderId" 
             onitemdatabound="TenderDetails_ItemDataBound">

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
                 <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument = '<%# bind("TenderId") %>' CommandName ="as" ImageUrl="~/images/bid.jpg"/>
                     <asp:Label ID="lblBid" runat="server" Text=""></asp:Label>
                   <%--  <asp:LinkButton ID="btnbid" runat="server" CommandName="as" CommandArgument='<%# bind("TenderId") %>'>Bid on Tender</asp:LinkButton>--%></center>
           </div></center> 
             </ItemTemplate>
        </asp:DataList>
        <div style="position: relative; z-index: auto; top: -112px; left: 0px; font-size: medium;">
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

