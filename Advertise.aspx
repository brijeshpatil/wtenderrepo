<%@ page title="" language="C#" masterpagefile="~/MasterPage/Home.master" autoeventwireup="true" inherits="Advertise, App_Web_r0l5cs0s" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LocalScripts" Runat="Server">

<table  border ="5">
    <tr>
       <td>Upload_Add:</td> 
       <td>  
           <asp:FileUpload ID="FileUpload1" runat="server" /></td>
    </tr>
    <tr>
        <td>NavigateUrl:</td>
        <td> 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
    </tr>
    <tr>
        <td>AlternateText:</td>
        <td> 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Impression:</td>
        <td> 
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Keyword:</td>
        <td> 
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td colspan ="2" align ="center">  
            <asp:Button ID="Button1" runat="server" Text="Add" /></td>
    </tr>

</table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLogin" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>


