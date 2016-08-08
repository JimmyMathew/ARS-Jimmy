<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="AirlinesReservationSystem.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<title>ARS</title>--%>
        <link href="Styles/Site.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 2px solid #cccccc;
            background-color: #FFFFFF;
        }
        .style2
        {
            width: 427px;
        }
        .style3
        {
            width: 427px;
            text-align: right;
        }
        .style4
        {
            width: 100%;
            border: 2px solid #cccccc;
            background-color: #ffcc33;
        }
        .style5
        {
            color: #070606;
            font-size: 1.8em;
        }
        .style6
        {
            width: 872px;
        }
        .auto-style1 {
            width: 590px;
        }
        .auto-style2 {
            width: 590px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1>
            &nbsp;</h1>
        <br />
        <table cellpadding="2" class="style4">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <h1 class="style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Airline reservation system</h1>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table align="center" cellpadding="2" class="style1">
            <tr>
                <td class="auto-style1">
                    <h1>
                    </h1>
                </td>
                <td class="style6">
                    <h1>
                        &nbsp;Login Page</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="style6">
                    Please Enter Your Login Credentials</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="lblError" runat="server" Text="Error" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Username:</td>
                <td class="style6">
                    
                    &nbsp;&nbsp;
                    
                    <asp:TextBox ID="txtUserName" runat="server" Width="165px"></asp:TextBox>
                    
                &nbsp;<asp:RequiredFieldValidator ID="UserName" runat="server" BackColor="White" ControlToValidate="txtUserName" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Password:</td>
                <td class="style6">
                    
                    &nbsp;&nbsp;
                    
                    <asp:TextBox ID="txtPassword" runat="server" Width="162px" TextMode="Password"></asp:TextBox>
                    
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Role:</td>
                <td class="style6">
&nbsp;
                    <asp:DropDownList ID="dropType" runat="server" Height="16px" Width="162px">
                        <asp:ListItem Value="Administrator"></asp:ListItem>
                        <asp:ListItem Value="Manager"></asp:ListItem>
                        <asp:ListItem Value="Bearer"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;<asp:Button ID="btnLogin" runat="server" CssClass="button-ars" Text="Login" OnClick="btnLogin_Click" />
                    &nbsp;&nbsp;
&nbsp;<asp:Button ID="btnClear" runat="server" CssClass="button-ars" Text="Clear" OnClick="btnClear_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
