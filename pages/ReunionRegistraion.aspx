<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterReunion.Master" AutoEventWireup="true" CodeBehind="ReunionRegistraion.aspx.cs" Inherits="ASP_NET_Mehedee.pages.ReunionRegistraion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxFullName" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxFullName" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Email Address"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxEmail" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBoxEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBoxEmail" ErrorMessage="Email address not valid." ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Round No."></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxRoundNo" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBoxRoundNo" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxPhoneNumber" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBoxPhoneNumber" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label5" runat="server" Text="Message"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxMessage" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><asp:CheckBox ID="cBoxAgree" runat="server" Text="Yes, I am Agree." /></td>
                    <td><asp:Label ID="rtnMessage" runat="server"></asp:Label>&nbsp;&nbsp; <asp:Label ID="emailSendSuccess" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><asp:Button ID="btnSave" runat="server" Text="Submit Information" OnClick="btnSave_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </div>
</asp:Content>
