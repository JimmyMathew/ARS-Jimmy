<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AffinityReport.aspx.cs" Inherits="AirlinesReservationSystem.AffinityReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <table align="center" width="300" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="formhead">Heading</td>

        </tr>
        <tr>
           <td>
               <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
               </asp:DropDownList>
            </td>
           <td>
               
               &nbsp;</td>
        </tr>
        <tr>
           <td>
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="FareCollected" />
            </td>
           <td>
               
               <asp:Label ID="lblFare" runat="server" Text="Label"></asp:Label>
               
            </td>
        </tr>
        <tr>
           <td>
               <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Totaltimesflown" />
            </td>
           <td>
                
               <asp:Label ID="lblNo" runat="server" Text="Label"></asp:Label>
                
            </td>
        </tr>
        <tr>
           <td></td>
           <td></td>
        </tr>
        <tr>
           <td></td>
           <td></td>
        </tr>
        
    </table>
   
   

</asp:Content>
