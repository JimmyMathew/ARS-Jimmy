<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cancel Reservation.aspx.cs" Inherits="AirlinesReservationSystem.Cancel_Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 134px;
            height: 70px;
        }
        .auto-style2 {
            width: 134px;
            height: 41px;
        }
        .auto-style3 {
            height: 41px;
            width: 196px;
        }
        .auto-style4 {
            font-size: 16px;
            color: rgb(0,0,0);
            font-weight: bold;
            background-color: #ffcc33;
            height: 49px;
        }
        .auto-style5 {
            width: 134px;
            height: 56px;
        }
        .auto-style6 {
            height: 56px;
            width: 196px;
        }
        .auto-style7 {
            height: 70px;
            width: 196px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" width="300" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="auto-style4">Cancel Reservation</td>

        </tr>
        <tr>
           <td class="auto-style5">
               <asp:Label ID="Lblticketnum" runat="server" Text="Ticket Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
           <td class="auto-style6">
               
               <asp:TextBox ID="Txttnum" runat="server" Width="185px"></asp:TextBox>
               
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txttnum" ErrorMessage="Requried !!" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style2"></td>
           <td class="auto-style3">
               
               &nbsp;</td>
        </tr>
        <tr>
           <td class="auto-style1"></td>
           <td class="auto-style7">
                
               <asp:Button ID="Btncr" runat="server" Text="Cancel Reservation" OnClick="Btncr_Click" />
                
            </td>
        </tr>
        
    </table>
</asp:Content>

