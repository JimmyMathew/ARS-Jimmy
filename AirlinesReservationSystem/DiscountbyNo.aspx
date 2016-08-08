<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DiscountbyNo.aspx.cs" Inherits="AirlinesReservationSystem.DiscountbyNo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 46px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" width="300" border="0" cellpadding="10" cellspacing="0" class="formborders">
        <tr>
                    <td colspan="3" class="formhead">DISCOUNT</td>

        </tr>
        <tr>
            <td class="auto-style1" >Select Email</td>
               <td class="auto-style1"> <asp:DropDownList ID="dropEmail" runat="server">
                </asp:DropDownList>
                &nbsp;&nbsp;<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropEmail" ErrorMessage="Required!!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </td>
          
           
        </tr>
        <tr>
           <td > No of times flown:</td>
           <td>    <asp:Label ID="lblflown" runat="server" Text="Label"></asp:Label>
            &nbsp;
               <asp:Button ID="btnGet" runat="server" OnClick="btnGet_Click" Text="Get" />
            </td>
           
        </tr>
                <tr>
           <td >Discount</td>
           <td>    
               <asp:DropDownList ID="drpDiscount" runat="server" style="width: 40px">
                   <asp:ListItem Value="5"></asp:ListItem>
                   <asp:ListItem Value="10"></asp:ListItem>
                   <asp:ListItem Value="15"></asp:ListItem>
               </asp:DropDownList>
            &nbsp;&nbsp;
               <asp:Label ID="Label1" runat="server" Text="%"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDiscount" runat="server" Text="Add Discount" OnClick="btnDiscount_Click" />
            </td>
            
        </tr>
         <tr>
            <td class="auto-style1" ></td>
               <td class="auto-style1">
                            <asp:Label ID="lblResponse" runat="server" BackColor="#333300" ForeColor="#FFCC00" Text="Discount has been Granted!!" Visible="False"></asp:Label>
                            </td>
          
           
        </tr>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
