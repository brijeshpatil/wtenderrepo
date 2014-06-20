<%@ page title="" language="C#" masterpagefile="~/MasterPage/User.master" autoeventwireup="true" inherits="Company_Company_Homepage, App_Web_r3obomnm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphbody" Runat="Server">
  <%-- <asp:Label ID ="lblCompany" runat ="server" Font-Size="XX-Large" ForeColor="Black"></asp:Label>--%>
   <asp:RadioButtonList ID ="rbl" runat ="server" RepeatDirection="Horizontal" 
        AutoPostBack="True" onselectedindexchanged="rbl_SelectedIndexChanged" >
       <asp:ListItem>Add Tender</asp:ListItem>
       <asp:ListItem>Select Bidder</asp:ListItem>
   
   </asp:RadioButtonList>
  <%-- <br /> 
   <asp:HyperLink ID ="hl1" runat ="server" Text ="AddTender" NavigateUrl="~/Company/Tender_Details.aspx" ></asp:HyperLink><br />
   <asp:HyperLink ID ="hl2" runat ="server" Text ="SelectBidder" NavigateUrl ="~/Company/BiddingStatus.aspx"></asp:HyperLink>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdvertisement" Runat="Server">
  <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

