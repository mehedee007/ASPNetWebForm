<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TraineeInfo.aspx.cs" Inherits="ASP_NET_Mehedee.pages.TraineeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 148px;
        }
        .auto-style2 {
            text-align: center;
            color: #000099;
        }
        .auto-style3 {
            width: 148px;
            height: 26px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style9 {
            height: 26px;
            width: 266px;
        }
        .auto-style10 {
            width: 113px;
            height: 26px;
        }
        .auto-style11 {
            width: 113px;
        }
        .auto-style12 {
            width: 266px;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
            width: 417px;
        }
        .auto-style15 {
            width: 417px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <table class="auto-style7">
                <tr>
                    <td class="auto-style2" colspan="4">
                        <h1><strong>Trainee Information</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" colspan="4"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Trainee Name</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtTraineeName" runat="server" Height="36px" Width="98%" required=""></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11" rowspan="5">
                        <asp:GridView ID="gVTrainee" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TraineeID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="213px" Width="501px" OnSelectedIndexChanged="gVTrainee_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="TraineeID" HeaderText="TraineeID" InsertVisible="False" ReadOnly="True" SortExpression="TraineeID" />
                                <asp:BoundField DataField="TraineeName" HeaderText="TraineeName" SortExpression="TraineeName" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                                <asp:BoundField DataField="ContactAddress" HeaderText="ContactAddress" SortExpression="ContactAddress" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspDB %>" SelectCommand="SELECT * FROM [Trainee]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Gender</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtGender" runat="server" Height="36px" Width="98%"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Email Address</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtEmail" runat="server" Height="36px" Width="98%"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Contact Address</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtContact" runat="server" Height="36px" Width="100%"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Button ID="btnAddTrainee" runat="server" BackColor="#3366FF" BorderColor="Yellow" BorderStyle="Groove" BorderWidth="3px" Font-Bold="True" Font-Italic="False" ForeColor="#CCFFFF" Height="39px" OnClick="btnAddTrainee_Click" Text="Add" Width="87px" />
                        <asp:Button ID="btnUpdate" runat="server" BackColor="#33CC33" BorderColor="Yellow" BorderStyle="Groove" BorderWidth="3px" Font-Bold="True" Height="39px" Text="Update" Width="87px" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Button ID="btnDelete" runat="server" BackColor="Red" BorderColor="Yellow" BorderStyle="Groove" BorderWidth="3px" Font-Bold="True" Height="39px" Text="Delete" Width="87px" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnShow" runat="server" BackColor="Lime" BorderColor="Yellow" BorderStyle="Groove" BorderWidth="3px" Font-Bold="True" Height="39px" Text="Show" Width="87px" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Trainee Id for Updated/Delete</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtTraineeIdUpdate" runat="server" Height="36px" Width="100%"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblTraineeId" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
