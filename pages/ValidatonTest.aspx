<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidatonTest.aspx.cs" Inherits="ASP_NET_Mehedee.pages.ValidatonTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 539px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Name :
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqFieldValName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name must be filled." ForeColor="#CC3300" SetFocusOnError="True">Name is required!</asp:RequiredFieldValidator>
        <br />
        <br />
        Email :
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email must be in valid format" ForeColor="#CC3300" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email. i.e. abx@email.com</asp:RegularExpressionValidator>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1">
        </asp:GridView>
        <br />
        Joining Date :<asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="Date must be within the range" ForeColor="#990000" MaximumValue="12/12/2021" MinimumValue="01/01/1971" SetFocusOnError="True" Type="Date">Date must be between 1971-2021 </asp:RangeValidator>
        <br />
        <br />
        Password : 
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />
        <br />Confirm Password :
        <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" ErrorMessage="Passwords must match" ForeColor="Maroon">Password did&#39;t match</asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="237px" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#33CC33" DisplayMode="List" />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
