<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flight Availability Status.aspx.cs" Inherits="AirlinesReservationSystem.Query_Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 129px;
        }
        .auto-style2 {
            width: 250px;
        }
        .auto-style3 {
            width: 129px;
            height: 41px;
        }
        .auto-style4 {
            width: 250px;
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="formhead">Flight Availability Status</td>

        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="Lblfnum" runat="server" Text="Flight Number"></asp:Label>
            </td>
           <td class="auto-style2">
               
               <asp:TextBox ID="Txtfnum" runat="server" Width="162px"></asp:TextBox>
               
            &nbsp;<br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtfnum" ErrorMessage="Requried !!" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="Lblcls" runat="server" Text="Class"></asp:Label>
            </td>
           <td class="auto-style2">
               
               <asp:RadioButton ID="Rbtnexe" runat="server" Text="Executive" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="Rbtnb" runat="server" Text="Business" />
               
               <br />
               
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="Lbldoj" runat="server" Text="Date Of Journey"></asp:Label>
            </td>
           <td id="Rbtnbusi" class="auto-style2" title="Business">
                
               <asp:TextBox ID="Txtdoj" runat="server" Width="165px"></asp:TextBox>
                
            &nbsp;<br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtdoj" ErrorMessage="Requried !!" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
           <td class="auto-style3"></td>
           <td class="auto-style4">
               <asp:Button ID="Btncs" runat="server" Text="Check Status" />
            </td>
        </tr>
        <tr>
           <td class="auto-style1"></td>
           <td class="auto-style2"></td>
        </tr>
        
    </table>
</asp:Content>
