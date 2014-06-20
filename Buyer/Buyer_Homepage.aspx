<%@ page title="" language="C#" masterpagefile="~/MasterPage/Buyer.master" autoeventwireup="true" inherits="Buyer_Buyer_Homepage, App_Web_j2telni5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBuyer" Runat="Server">
 <%--<asp:Label ID ="lblBuyer" runat ="server" Text ="Label" Font-Size="XX-Large"></asp:Label><br />--%>
   <%-- <asp:HyperLink ID ="h1" runat ="server" Text ="Bid on tender"></asp:HyperLink>--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdvertisement" Runat="Server">
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

