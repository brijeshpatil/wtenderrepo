<%@ page title="" language="C#" masterpagefile="~/MasterPage/Admin.master" autoeventwireup="true" inherits="Admin_State, App_Web_qxecay11" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
  <center >
<div style="background-color: #FFFFD9;height:900px;width:500px;">
<br />
<br />
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
  <center> <h3><font size="5px" 
                  style="background-color: #FFFFCC; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: capitalize; text-decoration: underline blink; font-family: 'Times New Roman', Times, serif;">Manage State</font></h3>
       </center>
<br />
<br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate >
     <asp:Label ID="Label2" runat="server"></asp:Label>
     <br />
     <br />
  <table style="color: Black;">

        <tr>
            <td><asp:Label ID ="lblState" runat ="server" Text ="Enter The State Name:" ></asp:Label></td>
            <td><asp:TextBox ID ="txtState" runat ="server" Width ="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate ="txtState" 
                ErrorMessage="Please Enter State" ValidationGroup ="s1" ForeColor="Red">*</asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="rfvState1" runat="server" ErrorMessage="StateName must be alphabetic words."
                ControlToValidate="txtState" ValidationExpression="^[a-zA-Z]+$" ForeColor ="Red" ValidationGroup ="s1">*</asp:RegularExpressionValidator>
            
            </td>
        </tr>

        <tr>
        <td></td>
            <td><asp:Button ID ="btnState" runat ="server" 
                    Text ="Add" onclick="btnState_Click" CausesValidation ="true" ValidationGroup ="s1" Width ="100px" /></td>
        </tr>
       
    </table>
     <asp:ValidationSummary ID="vsState" runat="server" ShowMessageBox ="true" 
                    ShowSummary ="false" ValidationGroup ="s1" ForeColor="Red"/>
                    <br />
                    <br />
    <asp:GridView ID="grvState" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="StateId" 
            onrowcancelingedit="grvState_RowCancelingEdit" 
            onrowdeleting="grvState_RowDeleting" onrowediting="grvState_RowEditing" 
            onrowupdating="grvState_RowUpdating" AllowPaging="True" 
           onpageindexchanging="grvState_PageIndexChanging" PageSize="5" Height ="300px" Width ="500px">
    <Columns>
        <asp:TemplateField HeaderText="StateName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("StateName") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# bind("StateName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowEditButton="True" />
        <asp:TemplateField>
        <ItemTemplate >
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
</ContentTemplate> 
</asp:UpdatePanel> 
    </div>
   </center> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID ="cphAdvertisement" runat ="server" >
<asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement.xml" />
</asp:Content>