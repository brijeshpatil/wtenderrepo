<%@ page title="" language="C#" masterpagefile="~/MasterPage/Admin.master" autoeventwireup="true" inherits="Admin_ManageCompany, App_Web_qxecay11" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
<center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
 
  <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Manage Company</font></h3>
       </center>
<br />
<br />
    <asp:Label ID="Label18" runat="server"></asp:Label>
    <br />
    <br />
    <asp:DetailsView ID="CompanyDetail" runat="server" Height="600px" Width="400px"  
        AutoGenerateRows="False" AllowPaging="True" DataKeyNames="ProfileId" 
        onmodechanging="CompanyDetail_ModeChanging" 
        onpageindexchanging="CompanyDetail_PageIndexChanging" 
        onitemdeleting="CompanyDetail_ItemDeleting" 
        onitemupdating="CompanyDetail_ItemUpdating" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">

        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <Fields>
            <asp:TemplateField HeaderText="CompanyName">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("CompanyName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# bind("CompanyName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FirstName">
                <EditItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("FirstName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LastName">
                <EditItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# bind("LastName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <EditItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# bind("Gender") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# bind("Gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <EditItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# bind("Address") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State">
                <EditItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# bind("StateName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# bind("StateName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
                <EditItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# bind("CityName") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" Text='<%# bind("CityName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobileno">
                <EditItemTemplate>
                    <asp:Label ID="Label17" runat="server" Text='<%# bind("Mobileno") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label16" runat="server" Text='<%# bind("Mobileno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image">
                <EditItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="100px" 
                        ImageUrl='<%# bind("Image") %>' Width="100px" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" 
                        ImageUrl='<%# bind("Image") %>' Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EmailId">
                <EditItemTemplate>
                    <asp:Label ID="Label20" runat="server" Text='<%# bind("EmailId") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label19" runat="server" Text='<%# bind("EmailId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
          <%--  <asp:TemplateField HeaderText="HintQuestion">
                <EditItemTemplate>
                    <asp:Label ID="Label22" runat="server" Text='<%# bind("HintQuestion") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label21" runat="server" Text='<%# bind("HintQuestion") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="HintAnswer">
                <EditItemTemplate>
                    <asp:Label ID="Label24" runat="server" Text='<%# bind("HintAnswer") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label23" runat="server" Text='<%# bind("HintAnswer") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="Type">
                <EditItemTemplate>
                    <asp:Label ID="Label26" runat="server" Text='<%# bind("Type") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label25" runat="server" Text='<%# bind("Type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IsBlock">
                <EditItemTemplate>
                    <asp:CheckBox ID="chkIsBlock" runat="server" Text="IsBlock" 
                        Checked='<%# bind("IsBlock") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# bind("IsBlock") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit" ShowHeader="False" >
                <EditItemTemplate>
                 <div align="center">                  
                 <asp:Button ID="Button3" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:Button ID="Button4" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel" />
                        </div>
                </EditItemTemplate>
                <ItemTemplate>
                 <div align="center">
                    <asp:Button ID="Button2" runat="server" CausesValidation="False"  
                        CommandName="Edit" Text="Edit"/>
                        </div> 
                </ItemTemplate>
            </asp:TemplateField>
          <%--  <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete"  onclientclick = "return confirm('Are you sure want to delete the current record?')"/>
                </ItemTemplate>
            </asp:TemplateField>--%>
        </Fields>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:DetailsView>
    
    </div>
    </center>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
<asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>