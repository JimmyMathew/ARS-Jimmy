<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmReservation.aspx.cs" Inherits="AirlinesReservationSystem.ConfirmReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 162px;
        }
    .auto-style2 {
        width: 230px;
    }
        .auto-style3 {
            font-size: 16px;
            color: rgb(0,0,0);
            font-weight: bold;
            background-color: #ffcc33;
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="auto-style3">Confirm Reservation</td>

        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblTicketNO" runat="server" Text="Ticket Number"></asp:Label>
            </td>
           <td class="auto-style2">
               
               <asp:DropDownList ID="DropDownLTicketNumber" runat="server" AutoPostBack="True" Height="16px" Width="103px">
               </asp:DropDownList>
               
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTicketNo" ErrorMessage="Required !!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style1"></td>
           <td class="auto-style2"></td>
        </tr>
        <tr>
           <td class="auto-style1"></td>
           <td class="auto-style2">
                
               <asp:Button ID="btnConfirm" runat="server" Text="Confirm Reservation" OnClick="btnConfirm_Click" />
                
            </td>
        </tr>
         <tr>
           <td class="auto-style1"></td>
           <td class="auto-style2">
                
              
               <asp:Label ID="lblResponse" runat="server" BackColor="#333300" ForeColor="#FF9933" Text="Reservation has been confirmed!!" Visible="False"></asp:Label>
                
              
            </td>
        </tr>
        
       
        
    </table>

</asp:Content>

