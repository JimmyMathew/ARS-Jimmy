<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DiscountbyAmount.aspx.cs" Inherits="AirlinesReservationSystem.DiscountbyAmount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<table align="center" width="300" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="formhead">Heading</td>

        </tr>
        <tr>
           <td>Select EmailID</td>
           <td>
               
               <asp:DropDownList ID="dropEmail" runat="server">
               </asp:DropDownList>
               
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropEmail" ErrorMessage="Required!!" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
           <td>Amount</td>
           <td>
               
               <asp:Label ID="lblAmount" runat="server" Text="Label"></asp:Label>
               
            </td>
        </tr>
        <tr>
           <td>
               <asp:Button ID="BtnDiscount" runat="server" Text="Discount" />
            </td>
           <td>
                
               <asp:Label ID="lblDiscount" runat="server" Text="Label"></asp:Label>
                
            </td>
        </tr>
     
        
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
