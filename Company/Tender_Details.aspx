<%@ page title="" language="C#" masterpagefile="~/MasterPage/User.master" autoeventwireup="true" inherits="Company_Tender_Details, App_Web_r3obomnm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphbody" Runat="Server">
   <center >
<div style="background-color: #FFFFD9;height:1100px;width:500px;">
<br />
<br />
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
  <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Manage Tender</font></h3>
       </center>
   
   <br />
        <asp:Label ID="Label14" runat="server"></asp:Label>
      <br />
        <br />
        <table style="color:Black ;">
        <tr>
            <td>
                <asp:Label ID ="lblTenderCode" runat ="server" Text ="TenderCode:"></asp:Label></td>
              <td>  <asp:TextBox ID ="txtTenderCode" runat ="server" Width ="300px" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvTenderCode" runat="server" ControlToValidate ="txtTenderCode"
               ErrorMessage="Please Enter TenderCode" ValidationGroup ="t1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID ="lblTitle" runat ="server" Text ="Title:"></asp:Label></td>
              <td>  <asp:TextBox ID ="txtTitle" runat ="server" Width ="300px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate ="txtTitle"
                   ErrorMessage="Please Enter Title" ValidationGroup ="t1" ForeColor="Red">*</asp:RequiredFieldValidator>
             <%-- <asp:RegularExpressionValidator ID="rfvTitle1" runat="server" ErrorMessage="Title must be alphabetic words."
                ControlToValidate="txtTitle" ValidationExpression="^[a-zA-Z]+$" ForeColor ="Red" ValidationGroup ="u1">*</asp:RegularExpressionValidator>
            --%>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID ="lblUploadDate" runat ="server" Text ="UploadDate:"></asp:Label></td>
               <td> <asp:TextBox ID ="txtUploadDate" runat ="server" Width ="300px"></asp:TextBox>
                   <asp:CalendarExtender ID="txtUploadDate_CalendarExtender" runat="server" 
                       Enabled="True" TargetControlID="txtUploadDate">
                   </asp:CalendarExtender>
                   <asp:RequiredFieldValidator ID="rfvUploadDate" runat="server" ControlToValidate ="txtUploadDate"
                    ErrorMessage="Please Select UploadDate" ValidationGroup ="t1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID ="lblTenderImage" runat ="server"  Text ="Image:"></asp:Label></td>
              <td>  <asp:FileUpload ID ="fpImage" runat ="server" />
                  <asp:RequiredFieldValidator ID="rfvTenderImage" runat="server" ControlToValidate ="fpImage"
                   ErrorMessage="Please Select Image" ValidationGroup ="t1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID ="lblDesc" runat ="server" Text ="Description"></asp:Label></td>
             <td>   <asp:TextBox ID ="txtDesc" runat ="server" TextMode ="MultiLine" Width ="300px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvDesc" runat="server" ControlToValidate ="txtDesc"
                 ErrorMessage="Please Enter Description" ValidationGroup ="t1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID ="lblMinimumCost" runat ="server" Text ="Minimum_Cost:"></asp:Label></td>
            <td><asp:TextBox ID ="txtMinimumCost" runat ="server" Width ="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMinimumCost" runat="server"  ControlToValidate ="txtMinimumCost"
            ErrorMessage="Please Enter MinimumCost" ValidationGroup ="t1" ForeColor="Red">*</asp:RequiredFieldValidator></td>
        <asp:RegularExpressionValidator ID="rfvMinimumCost1" runat="server" ErrorMessage="MinimumCost must be numeric values"
                ControlToValidate="txtMinimumCost" ValidationExpression="^[0-9]+$" ValidationGroup ="t1" ForeColor ="Red">*</asp:RegularExpressionValidator>
           
        </tr>

        <tr>
            <td>
                <asp:Label ID ="lblUser" runat ="server" Text ="CompanyName:"></asp:Label></td>
             <td>   <asp:DropDownList ID ="ddlUser" runat ="server" Width ="305px"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate ="ddlUser"
                  ErrorMessage="Please Select Company:" InitialValue ="0" ValidationGroup ="t1" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID ="lblCategory" runat ="server" Text ="Category:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID ="ddlCategory" runat ="server" 
                    onselectedindexchanged="ddlCategory_SelectedIndexChanged" 
                    AutoPostBack="True"  Width ="305px"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate ="ddlCategory"
                ErrorMessage="Please Select Category" InitialValue ="0" ValidationGroup ="t1" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID ="lblSubCategory" runat ="server" Text ="SubCategory"></asp:Label></td>
             <td>   <asp:DropDownList ID ="ddlSubCategory" runat ="server" Width ="305px"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="rfvSubCategory" runat="server"  ControlToValidate ="ddlSubCategory"
                 ErrorMessage="Please Select SubCategory" InitialValue ="0" 
                     ValidationGroup ="t1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID ="lblState" runat ="server" Text ="State:"></asp:Label></td>
             <td>   
                 <asp:DropDownList ID ="ddlState" runat ="server" 
                     onselectedindexchanged="ddlState_SelectedIndexChanged" AutoPostBack="True" Width ="305px"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate ="ddlState"
                 ErrorMessage="Please Select State" InitialValue ="0" ValidationGroup ="t1" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                 <asp:Label ID ="lblCiy" runat ="server" Text ="City:"></asp:Label></td>
             <td>   <asp:DropDownList ID ="ddlCity" runat ="server" Width ="305px" ></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="rfvCity" runat="server"  ControlToValidate ="ddlCity"
                 ErrorMessage="Please Select City" InitialValue ="0" ValidationGroup ="t1" 
                     ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID ="lblStartDate" runat ="server" Text ="StartingDate:"></asp:Label></td>
            <td>    <asp:TextBox ID ="txtStartDate" runat ="server" Width ="300px"></asp:TextBox>
                <asp:CalendarExtender ID="txtStartDate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtStartDate">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="rfvStartDate" runat="server"  ControlToValidate ="txtStartDate"
                ErrorMessage="Please Enter StartingDate" ValidationGroup ="t1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID ="lblEndDate" runat ="server" Text ="EndingDate:"></asp:Label></td>
              <td>  <asp:TextBox ID ="txtEndDate" runat ="server" Width ="300px"></asp:TextBox>
                  <asp:CalendarExtender ID="txtEndDate_CalendarExtender" runat="server" 
                      Enabled="True" TargetControlID="txtEndDate">
                  </asp:CalendarExtender>
                  <asp:RequiredFieldValidator ID="rfvEndDate" runat="server" ControlToValidate ="txtEndDate"
                   ErrorMessage="Please Enter EndingDate" ValidationGroup ="t1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align ="center" colspan="2" >
            <asp:Button ID ="btnTender" runat ="server" Text ="Add" onclick="btnTender_Click"  CausesValidation ="true"  ValidationGroup ="t1" Width ="100px"/> 
            <asp:Button ID ="btnTender1" runat ="server" Text ="Clear" 
                    onclick="btnTender1_Click" Width ="100px" />
            </td>
        </tr>
    </table>
     <asp:ValidationSummary ID="vsTender" runat="server" ShowMessageBox ="true" 
                    ShowSummary ="false" ValidationGroup ="t1" ForeColor="Red"/>
    <br />
    <br />
  <div style ="width:100%;height:auto ;overflow:auto ;">

        <asp:GridView ID="grvTenderDetails" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="TenderId" 
            onrowediting="grvTenderDetails_RowEditing" 
            onrowcancelingedit="grvTenderDetails_RowCancelingEdit" 
            onrowdeleting="grvTenderDetails_RowDeleting" 
            onrowupdating="grvTenderDetails_RowUpdating" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            onselectedindexchanged="grvTenderDetails_SelectedIndexChanged" 
            onpageindexchanging="grvTenderDetails_PageIndexChanging" PageSize="5">
            <Columns>
                <asp:TemplateField HeaderText="TenderCode">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("TenderCode") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# bind("TenderCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("Title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# bind("Title") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UploadDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("UploadDate") %>'></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="TextBox3">
                        </asp:CalendarExtender>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# bind("UploadDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                      <%--  <asp:TextBox ID="TextBox4" runat="server" Text='<%# bind("Image") %>'></asp:TextBox>--%>
                        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# bind("Image") %>' />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100px" 
                            ImageUrl='<%# bind("Image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description ">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# bind("Description") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# bind("Description") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Minimum_Cost">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# bind("Minimum_Cost") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# bind("Minimum_Cost") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CompanyName">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# bind("CompanyName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                            style="height: 22px">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# bind("CategoryName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SubCategory">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# bind("SubCategoryName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# bind("StateName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# bind("CityName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="StartingDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# bind("StartingDate") %>'></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox7_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="TextBox7">
                        </asp:CalendarExtender>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# bind("StartingDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EndingDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# bind("EndingDate") %>'></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="TextBox8">
                        </asp:CalendarExtender>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# bind("EndingDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="BidStatus" HeaderText="BidStatus" />
                <asp:CommandField ShowEditButton="True" />
                   <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" ForeColor="#330099" OnClientClick="return confirm('Are you sure want to delete the current record?')">Delete</asp:LinkButton>
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
        </asp:GridView>
        
        </div> 
     
       
    </div>
    </center> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAdvertisement" Runat="Server">
 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>

