<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add Flights.aspx.cs" Inherits="AirlinesReservationSystem.Add_Flights" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 175px;
        }
        .auto-style2 {
            width: 175px;
            height: 38px;
        }
        .auto-style3 {
            height: 38px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" width="300" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="formhead">Add Flights</td>

        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="Lblfnum" runat="server" Text="Flight Number"></asp:Label>
            </td>
           <td>
               
               <asp:TextBox ID="Txtfnum" runat="server" Width="159px"></asp:TextBox>
               
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtfnum" ErrorMessage="Requried !!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="Lbldt" runat="server" Text="Departure Time"></asp:Label>
            </td>
           <td>
               
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtdeptime" ErrorMessage="Required !!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
               
               <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="Lblat" runat="server" Text="Arrival Time"></asp:Label>
            </td>
           <td>
                
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtarrtime" ErrorMessage="Required !!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                
               <asp:Calendar ID="Calendar3" runat="server"></asp:Calendar>
                
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               Class</td>
           <td>
               <asp:DropDownList ID="DropClass" runat="server" Height="30px"  Width="153px">
                   <asp:ListItem Value="Executive"></asp:ListItem>
                   <asp:ListItem Value="Business"></asp:ListItem>
               </asp:DropDownList>
            </td>
        </tr>
        <tr>
           <td class="auto-style2">
               Fare</td>
           <td class="auto-style3">
               <asp:TextBox ID="txtFare" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
        
          <tr>
           <td>
               &nbsp;<asp:Label ID="Lbldoj0" runat="server" Text="Date Of Journey"></asp:Label>
               &nbsp;</td>
           <td>
               <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
              </td>
        </tr>      
         <tr>
           <td>
               <asp:Label ID="lblDest" runat="server" Text="Destination"></asp:Label>
             </td>
           <td>
               <asp:TextBox ID="txtDest" runat="server"></asp:TextBox>
             </td>
        </tr>
         <tr>
           <td class="auto-style4">
               <asp:Label ID="lblOrigin" runat="server" Text="Origin"></asp:Label>
             </td>
           <td class="auto-style4">
               <asp:TextBox ID="txtOrigin" runat="server"></asp:TextBox>
             </td>
        </tr>
          <tr>
            <td class="auto-style5">
                <asp:Label ID="lblSeats" runat="server" Text="Seats"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="txtSeats" runat="server"></asp:TextBox>
              </td>
        </tr>
         <tr>
           <td></td>
           <td>
               <asp:Button ID="Btnsubmit" runat="server" Text="Submit" Width="78px" style="height: 26px" OnClick="Btnsubmit_Click1" />
             </td>
        </tr>
      
         <tr>
           <td>&nbsp;</td>
           <td>
               <asp:Label ID="LblResult" runat="server" BackColor="#333300" ForeColor="#FFCC00" Text="New Flight has been added!!" Visible="False"></asp:Label>
             </td>
        </tr>
      
         </table>
</asp:Content>
