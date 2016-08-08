<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateReservation.aspx.cs" Inherits="AirlinesReservationSystem.CreateReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 165px;
        }
        .auto-style2 {
            width: 276px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="formhead">Create Reservation</td>

        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblFlightNumber" runat="server" Text="Flight Number"></asp:Label>
            </td>
           <td class="auto-style2">
               
               <asp:DropDownList ID="DropDownFlightNo" runat="server" AutoPostBack="True" Width="112px">
               </asp:DropDownList>
               
               <%--<asp:RequiredFieldValidator ID="RfvFNo" runat="server" ControlToValidate="txtFlightNo" ErrorMessage="Required !!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblClass" runat="server" Text="Class"></asp:Label>
            </td>
           <td class="auto-style2">
               
&nbsp;<asp:DropDownList ID="DrpDownClass" runat="server" Height="20px" Width="117px">
                   <asp:ListItem Value="Business"></asp:ListItem>
                   <asp:ListItem Value="Executive"></asp:ListItem>
                   <asp:ListItem></asp:ListItem>
               </asp:DropDownList>
               
               <%--<asp:CustomValidator ID="cusVclass" runat="server" ErrorMessage="Select Class" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>--%>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblDoJourney" runat="server" Text="Date of Journey"></asp:Label>
            </td>
           <td class="auto-style2">
                
               <asp:Calendar ID="CalendarDOJ" runat="server" Height="172px" Width="236px"></asp:Calendar>
               <%--<asp:RequiredFieldValidator ID="RfvJourney" runat="server" ControlToValidate="txtDoJ" ErrorMessage="Required !!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblCustName" runat="server" Text="Customer Name"></asp:Label>
            </td>
           <td class="auto-style2">
               <asp:TextBox ID="txtCusName" runat="server"></asp:TextBox>
               <%--<asp:RequiredFieldValidator ID="rfvCusName" runat="server" ControlToValidate="txtCusName" ErrorMessage="Required !!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="Label1" runat="server" Text="Email ID"></asp:Label>
              </td>
           <td class="auto-style2">
               <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
               </td>
        </tr>
         <tr>
           <td class="auto-style1">
              
               <asp:Label ID="LblSeats" runat="server" Text="Seats"></asp:Label>
              
            </td>
           <td class="auto-style2">
              
               <asp:TextBox ID="txtSeats" runat="server"></asp:TextBox>
              
            </td>
        </tr>
       
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblTicketNo" runat="server" Text="Ticket Number"></asp:Label>
            </td>
           <td class="auto-style2">
               <asp:TextBox ID="txtTicketNo" runat="server"></asp:TextBox>
            </td>
        </tr>
       <tr>
           <td class="auto-style1">
               <asp:Label ID="lblOrigin" runat="server" Text="Flight Origin"></asp:Label>
           </td>
           <td class="auto-style2">
               <asp:TextBox ID="txtFlghtOrigin" runat="server"></asp:TextBox>
           </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblDestination" runat="server" Text="Flight Destination"></asp:Label>
            </td>
           <td class="auto-style2">
               <asp:TextBox ID="txtFlightDestination" runat="server"></asp:TextBox>
            </td>
        </tr> 
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblDepTime" runat="server" Text="Departure Time"></asp:Label>
            </td>
           <td class="auto-style2">
               <asp:TextBox ID="txtDepTime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
           <td class="auto-style1"></td>
           <td class="auto-style2">
               <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
            </td>
        </tr>
           <tr>
           <td class="auto-style1"></td>
           <td class="auto-style2">
               
               <asp:Label ID="lblResponse" runat="server" BackColor="#333300" ForeColor="#FFCC00" Text="Reservation has been completed successfully!!" Visible="False"></asp:Label>
               
            </td>
        </tr>
        
    
    </table>

</asp:Content>

 