<%@ page title="" language="C#" masterpagefile="~/MasterPage/Buyer.master" autoeventwireup="true" inherits="Buyer_BuyerProfile, App_Web_j2telni5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBuyer" Runat="Server">
<center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
<center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Profile</font></h3>
       </center>
       <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>

    <br />
<div>
  <asp:FormView ID="frmBuyerProfile" runat="server" 
        onitemupdating="frmBuyerProfile_ItemUpdating" DataKeyNames="ProfileId" 
        onitemcommand="frmBuyerProfile_ItemCommand" 
        onpageindexchanging="frmBuyerProfile_PageIndexChanging" 
        onmodechanging="frmBuyerProfile_ModeChanging" ForeColor="Black" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4">
 
    <HeaderTemplate >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</HeaderTemplate>

    <ItemTemplate >
        <table style="width: 400px; height: 700px; color: #000000;"  CellPadding="2">
            <tr>
                <td>
                    CompanyName:
                </td>
                <td>
                    <asp:Label ID ="lblCompanyName" runat ="server" 
                        Text='<%# bind("CompanyName") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    FirstName:
                </td>
                <td>
                    <asp:Label ID ="lblFname" runat ="server" Text='<%# bind("FirstName") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    LastName:
                </td>
                <td>
                    <asp:Label ID ="lblLname" runat ="server" Text='<%# bind("LastName") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    Gender
                </td>
                <td>
                    <asp:Label ID ="lblGender" runat ="server" Text='<%# bind("Gender") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    Address:
                </td>
                <td>
                    <asp:Label ID ="lblAddress" runat ="server" Text='<%# bind("Address") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    State:
                </td>
                <td>
                    <asp:Label ID ="lblState" runat ="server" Text='<%# bind("StateName") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    City:
                </td>
                <td>
                    <asp:Label ID ="lblCity" runat ="server" Text='<%# bind("CityName") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    MobileNo:
                </td>
                <td>
                    <asp:Label ID ="lblMobileno" runat ="server" Text='<%# bind("Mobileno") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    Image:
                </td>
                <td>
                    <asp:Image ID ="imgUser" runat ="server" Height="100px" 
                        ImageUrl='<%# bind("Image") %>' Width="100px" /> 
                    <%--<asp:Label ID ="lblImage" runat ="server" Text='<%# bind("Image") %>'></asp:Label>--%>
                </td>
            </tr>
              <tr>
                <td>
                    EmailId:
                </td>
                <td>
                    <asp:Label ID ="lblEmailId" runat ="server" Text='<%# bind("EmailId") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    HintQuestion:
                </td>
                <td>
                    <asp:Label ID ="lblHQ" runat ="server" Text='<%# bind("HintQuestion") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    HintAnswer:
                </td>
                <td>
                    <asp:Label ID ="lblHA" runat ="server" Text='<%# bind("HintAnswer") %>'></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    Type:
                </td>
                <td>
                    <asp:Label ID ="lblType" runat ="server" Text='<%# bind("Type") %>'></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td align ="center" colspan ="2">
                <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="edit" Width ="100px" />
                </td>
            </tr>
        </table>
    </ItemTemplate>

    <EditItemTemplate >
       <table   CellPadding="4" 
            style=" width: 400px; height: 700px;color: #000000;">
            <tr>
                <td>
                    CompanyName:
                </td>
                <td>
                 <asp:TextBox ID ="txtCompanyName" runat ="server" 
                        Text='<%# bind("CompanyName") %>' ></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    FirstName:
                </td>
                <td>
                   <asp:TextBox ID ="txtFname" runat ="server" Text='<%# bind("FirstName") %>' ></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    LastName:
                </td>
                <td>
                    <asp:TextBox ID ="txtLname" runat ="server" Text='<%# bind("LastName") %>' ></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    Gender
                </td>
                <td>
                   <asp:RadioButtonList ID ="rblGender" runat ="server" 
                    RepeatDirection="Horizontal" >
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Address:
                </td>
                <td>
                   <asp:TextBox ID ="txtAddress" runat="server" TextMode ="MultiLine" 
                        Text='<%# bind("Address") %>' ></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    State:
                </td>
                <td>
                    <asp:DropDownList ID ="ddlState" runat ="server" 
                        onselectedindexchanged="ddlState_SelectedIndexChanged" 
                        AutoPostBack="True" ></asp:DropDownList>
                </td>
            </tr>
              <tr>
                <td>
                    City:
                </td>
                <td>
                    <asp:DropDownList ID ="ddlCity" runat ="server" AutoPostBack="True" ></asp:DropDownList>
                </td>
            </tr>
              <tr>
                <td>
                    MobileNo:
                </td>
                <td>
                   <asp:TextBox ID ="txtMobileno" runat ="server" Text='<%# bind("Mobileno") %>' ></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    Image:
                </td>
                <td>
                  <asp:Image ID ="imgUser1" runat ="server" Height="100px" 
                        ImageUrl='<%# bind("Image") %>' Width="100px" /> 
                   <%-- <asp:TextBox ID ="txtImage" runat ="server" Text ='<%# bind("Image") %>'></asp:TextBox>--%>
                    <asp:FileUpload ID ="fuImage" runat ="server" />
                </td>
            </tr>
              <tr>
                <td>
                    EmailId:
                </td>
                <td>
                 <asp:Label ID ="lblEmailId" runat ="server" Text='<%# bind("EmailId") %>'></asp:Label>
                  <%--  <asp:TextBox ID ="txtEmailId" runat ="server" Text='<%# bind("EmailId") %>' ></asp:TextBox>--%>
                </td>
            </tr>
              <tr>
                <td>
                    HintQuestion:
                </td>
                <td>
                   <asp:DropDownList ID ="ddlHQ" runat ="server" >
                     <asp:ListItem>Select Question</asp:ListItem>
                     <asp:ListItem>What is your Birth Place</asp:ListItem>
                   </asp:DropDownList>
                </td>
            </tr>
              <tr>
                <td>
                    HintAnswer:
                </td>
                <td>
                    <asp:TextBox ID ="txtHA" runat ="server" Text='<%# bind("HintAnswer") %>' ></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    Type:
                </td>
                <td>
                 <asp:Label ID ="lblType" runat ="server" Text='<%# bind("Type") %>'></asp:Label>
                 <%--   <asp:RadioButtonList ID ="rbtnUserType" runat ="server" 
                    RepeatDirection="Horizontal" >
                <asp:ListItem>Company</asp:ListItem>
                <asp:ListItem>Buyer</asp:ListItem>
            
            </asp:RadioButtonList>--%>
                </td>
            </tr>
            
            <tr>
                <td align ="center" colspan ="2">
                    <asp:Button ID ="btnUpdate" runat ="server" Text ="Update" CommandName ="update"  Width ="100px"/>
                    <asp:Button ID ="btnCancel" runat ="server" Text ="Cancel" CommandName ="cancel" Width ="100px" />
                </td>
            </tr>
        </table>
    </EditItemTemplate>
   
    </asp:FormView>
    </div>
    </div>
    </center> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdvertisement" Runat="Server">
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

