<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="AirlinesReservationSystem.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 134px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" width="300" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="2" class="formhead">Change Password</td>

        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblNewPwd" runat="server" Text="New Password"></asp:Label>
            </td>
           <td>
               
               <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
               
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Required !!" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style1">
               <asp:Label ID="lblCPwd" runat="server" Text="Confirm Password"></asp:Label>
            </td>
           <td>
               
               <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password"></asp:TextBox>
               
               <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtNewPwd" ControlToValidate="txtCPwd" ErrorMessage="Mis Match Password" ForeColor="Red"></asp:CompareValidator>
               
            </td>
        </tr>
        <tr>
           <td class="auto-style1"></td>
           <td>
                
               <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                
            </td>
        </tr>
       
        
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
