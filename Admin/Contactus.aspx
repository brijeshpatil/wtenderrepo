<%@ page title="" language="C#" masterpagefile="~/MasterPage/Admin.master" autoeventwireup="true" inherits="Admin_Contactus, App_Web_qxecay11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
          <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Contact Us</font></h3>
       </center>
       <br />
<br />
     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.9399220352366!2d72.557192!3d23.025977999999977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e84f00c5098fb%3A0x91f327bbe27803ab!2sTops+Technologies!5e0!3m2!1sen!2s!4v1402831434607" width="500" height="450" frameborder="0" style="border:0"></iframe> 
  <br />
  <br />
  <br />
  <h3>
 Ahmedabad Office (C G Road)<br />

Located at<br />

903 Samedh Complex,<br />
Next to Associated Petrol Pump,<br />
C G Road, Ahmedabad.<br />
Phone: 99747 55006<br />
Email:info@tops-int.com<br />
  </h3>
  </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
<asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>