<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayTicket.aspx.cs" Inherits="AirlinesReservationSystem.DisplayTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 223px;
        }
        .auto-style3 {
            width: 269px;
        }
    </style>
     <script type="text/javascript">
         function PrintDoc() {
             var toPrint = document.getElementById('printarea');
             var popupWin = window.open('', '_blank', 'width=595,height=842,location=no,left=200px');
             popupWin.document.open();
             popupWin.document.write('<html><title>::AirLine Reservation System::</title><link rel="stylesheet" type="text/css" href="print.css" /></head><body onload="window.print()">')
             popupWin.document.write(toPrint.innerHTML);
             popupWin.document.write('</html>');
             popupWin.document.close();
         }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtTicNum" runat="server" OnTextChanged="txtTicNum_TextChanged"></asp:TextBox>
               
               &nbsp;&nbsp;
               
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Ticket" />
     <br />
     <br />
     <div id="printarea">
 <div id="content-input">
    <table align="center" width="300" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="formhead">ARS Ticket Generation</td>

        </tr>
     
        
        <tr>
           <td class="auto-style3">
               <asp:Label ID="lblFlightNo" runat="server" Text="Flight Number"></asp:Label>
            </td>
           <td class="auto-style2">
               
               <asp:Label ID="lblDFlightNo" runat="server" Visible="False"></asp:Label>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style3">
               Ticket Number</td>
           <td class="auto-style2">
               
               <asp:Label ID="lblTicket" runat="server" Text="lblTicketNO" Visible="False"></asp:Label>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style3">
               <asp:Label ID="lblPno" runat="server" Text="Passenger Name"></asp:Label>
            </td>
           <td class="auto-style2">
                
               <asp:Label ID="lblDPassName" runat="server" Visible="False"></asp:Label>
                
            </td>
        </tr>
        <tr>
           <td class="auto-style3">
               Date of Journey</td>
           <td class="auto-style2">
               <asp:Label ID="lblDDoj" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
           <td class="auto-style3">
               Destination</td>
           <td class="auto-style2">
               <asp:Label ID="lblDestination" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
           <td class="auto-style3">
               Seats</td>
           <td class="auto-style2">
               <asp:Label ID="lblSeats" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
           <td class="auto-style3">
               Fare</td>
           <td class="auto-style2">
               <asp:Label ID="lblFare" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
           <td class="auto-style3">
               Discount</td>
           <td class="auto-style2">
               <asp:Label ID="lblDiscount" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;</td>
        </tr>
        <tr>
           <td class="auto-style3">
               Total</td>
           <td class="auto-style2">
               <asp:Label ID="lblTotal" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
           <td class="auto-style3">
               <asp:Label ID="lblBoarding" runat="server" Text="Boarding "></asp:Label>
            </td>
           <td class="auto-style2">
               <asp:Label ID="lblDBorardOrigin" runat="server" Visible="False"></asp:Label>
&nbsp;
               </td>
        </tr>
        <tr>
           <td class="auto-style3">
               Boarding Time</td>
           <td class="auto-style2">
               <asp:Label ID="lblDBoardDateTime" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
     </table></div></div>
      
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
             <input type="button" value="Print" id="button-search" class="button" onclick="PrintDoc()"/>
&nbsp; 
        

</asp:Content>

