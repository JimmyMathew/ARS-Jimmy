<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="AirlinesReservationSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" width="300" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="formhead">DELETE USER</td>

        </tr>
        <tr>
           <td>
               <asp:Label ID="lblSelectUser" runat="server" Text="SelectUser"></asp:Label>
            </td>
           <td>
               
               <asp:DropDownList ID="dropShow" runat="server">
               </asp:DropDownList>
               
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ShowUsers" ErrorMessage="Required!!" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
               
            </td>
        </tr>
       <tr>
           <td colspan="2"><center>
               <asp:Button ID="btnDelete" runat="server" Height="39px" Text="Delete User" Width="130px" OnClick="btnDelete_Click" />
               </center></td>
       </tr>
        <tr>
           <td colspan="2"><center>
               <asp:Label ID="lblMessage" runat="server" Text="User has been deleted successfully" Visible="False" BackColor="#333300" ForeColor="#FF9933"></asp:Label>
           </td>
       </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
