<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ticket Status.aspx.cs" Inherits="AirlinesReservationSystem.Ticket_Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 165px;
        }
        .auto-style2 {
            font-size: 16px;
            color: rgb(0,0,0);
            font-weight: bold;
            background-color: #ffcc33;
            height: 45px;
        }
        .auto-style3 {
            width: 165px;
            height: 54px;
        }
        .auto-style4 {
            height: 54px;
        }
        .auto-style5 {
            width: 165px;
            height: 92px;
        }
        .auto-style6 {
            height: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" width="300" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="auto-style2">Ticket Status</td>

        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="Lbltnum" runat="server" Text="Ticket Number"></asp:Label>
            </td>
           <td>
               
               <asp:TextBox ID="Txttnum" runat="server" Width="170px"></asp:TextBox>
               
               <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txttnum" ErrorMessage="Requried !!" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style3"></td>
           <td class="auto-style4">
               
            </td>
        </tr>
        <tr>
           <td class="auto-style5"></td>
           <td class="auto-style6">
                
               <asp:Button ID="Btncs" runat="server" Text="Check Status" />
                
            </td>
        
        
    </table>
</asp:Content>
