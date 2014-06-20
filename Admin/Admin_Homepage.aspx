<%@ page title="" language="C#" masterpagefile="~/MasterPage/Admin.master" autoeventwireup="true" inherits="Admin_Admin_Homepage, App_Web_qxecay11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">

 <%--<asp:Label ID ="lblAdmin" runat ="server" Text ="Label" Font-Size="XX-Large"></asp:Label>--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
<asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>
