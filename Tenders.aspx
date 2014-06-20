<%@ page title="" language="C#" masterpagefile="~/MasterPage/MainMasterPage.master" autoeventwireup="true" inherits="Tenders, App_Web_r0l5cs0s" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
<center >
        <div style=" width: 520px; background-color: #FFFFD9;height:900px;">
        <br />
        <br />
           <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Tenders</font></h3>
       </center>
       <br />
       <br />
            <asp:DataList ID="TenderList" runat="server" RepeatColumns="1">
                <ItemTemplate >
                    <table border ="2" style="color: #330099; font-size: small; background-color: #FFFFFF;" cellpadding="2">
                        <tr>
                            <td>TenderCode:</td>
                            <td><asp:Label ID ="lblTenderCode" runat ="server" 
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
                            <td>Image:</td>
                            <td><asp:Image ID ="img1" runat ="server" Height ="100px" Width ="100px" 
                                    ImageUrl='<%# bind("Image") %>'/></td>
                        </tr>
                        <%--<tr>
                            <td>Description:</td>
                            <td><asp:Label ID ="lblDesc" runat ="server" Text='<%# bind("Description") %>' ></asp:Label></td>
                        </tr>--%>
                        <tr>
                            <td>Minimum_Cost:</td>
                            <td><asp:Label ID ="lblMCost" runat ="server" Text='<%# bind("Minimum_Cost") %>' ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>CompanyName:</td>
                            <td><asp:Label ID ="lblCompanyName" runat ="server" 
                                    Text='<%# bind("CompanyName") %>' ></asp:Label></td>
                        </tr>
                    <%--    <tr>
                            <td>Category:</td>
                            <td><asp:Label ID ="lblCategory" runat ="server" 
                                    Text='<%# bind("CategoryName") %>' ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>SubCategory:</td>
                            <td><asp:Label ID ="lblSubCategory" runat ="server" 
                                    Text='<%# bind("SubCategoryName") %>' ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>State:</td>
                            <td><asp:Label ID ="lblState" runat ="server" Text='<%# bind("StateName") %>' ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>City:</td>
                            <td><asp:Label ID ="lblCity" runat ="server" Text='<%# bind("CityName") %>' ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>StartingDate:</td>
                            <td><asp:Label ID ="lblSDate" runat ="server" Text='<%# bind("StartingDate") %>' ></asp:Label></td>
                        </tr>
                        <tr>
                            <td>EndingDate:</td>
                            <td><asp:Label ID ="lblEndingDate" runat ="server" 
                                    Text='<%# bind("EndingDate") %>' ></asp:Label></td>
                        </tr>--%>
                        <tr>
                            <td colspan ="2" align ="center">
                                <asp:HyperLink ID="btnDetails" runat="server" NavigateUrl ="~/Home.aspx">Login to View Tender Details</asp:HyperLink>
                          </td> 
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <br />
            <br />
            <div style="font-size: medium">
               &nbsp;
           <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Medium" ForeColor ="Maroon" ></asp:Label>
           <br />
           <br />
           <br />
            &nbsp;&nbsp;  &nbsp;&nbsp;<asp:LinkButton ID="lbtnPrevious" runat="server" onclick="lbtnPrevious_Click">Previous</asp:LinkButton>
             &nbsp;&nbsp; &nbsp;&nbsp;<asp:LinkButton ID="lbtnFirst" runat="server" onclick="lbtnFirst_Click">First</asp:LinkButton>
             &nbsp;&nbsp; &nbsp;&nbsp;<asp:LinkButton ID="lbtnNext" runat="server" onclick="lbtnNext_Click">Next</asp:LinkButton>
           &nbsp;&nbsp; &nbsp;&nbsp;  <asp:LinkButton ID="lbtnLast" runat="server" onclick="lbtnLast_Click">Last</asp:LinkButton>
        &nbsp;
        </div>
        </div>
       </center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

