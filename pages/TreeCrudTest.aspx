<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeCrudTest.aspx.cs" Inherits="ASP_NET_Mehedee.pages.TreeCrudTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            color: #00CC00;
        }
        .auto-style3 {
            height: 33px;
        }
        .auto-style4 {
            width: 170px;
        }
        .auto-style5 {
            height: 33px;
            width: 170px;
        }
        .auto-style6 {
            width: 170px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4">
                    <h1><strong>Tree for Life</strong></h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Tree Name : </td>
                <td>
                    <asp:TextBox ID="txtTreeName" runat="server" Height="33px" Width="80%"></asp:TextBox>
                </td>
                <td rowspan="11">
                    <asp:GridView ID="grdViewTree" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="355px" OnSelectedIndexChanged="grdViewTree_SelectedIndexChanged" Width="643px" DataKeyNames="SerialNo">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" InsertVisible="False" ReadOnly="True" SortExpression="SerialNo"></asp:BoundField>
                            <asp:BoundField DataField="TreeName" HeaderText="TreeName" SortExpression="TreeName"></asp:BoundField>
                            <asp:BoundField DataField="TreeType" HeaderText="TreeType" SortExpression="TreeType"></asp:BoundField>
                            <asp:BoundField DataField="Accessories" HeaderText="Accessories" SortExpression="Accessories"></asp:BoundField>
                            <asp:BoundField DataField="TreeRegister" HeaderText="TreeRegister" SortExpression="TreeRegister"></asp:BoundField>
                            <asp:BoundField DataField="Refundable" HeaderText="Refundable" SortExpression="Refundable"></asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspDB %>" SelectCommand="SELECT * FROM [TreeRegister]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Type : </td>
                <td>
                    <asp:DropDownList ID="ddlTreeType" runat="server" Width="80%">
                        <asp:ListItem>Flower</asp:ListItem>
                        <asp:ListItem>Fruit</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Accessories: </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                        <asp:ListItem>Tob</asp:ListItem>
                        <asp:ListItem>Water Machine</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Tree Register Date : </td>
                <td>
                    <asp:TextBox ID="txtTreeRegisterDate" runat="server" Height="33px" TextMode="Date" Width="80%"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Tree Image : </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Refundable : </td>
                <td>
                    <asp:RadioButtonList ID="radBtnListRefundable" runat="server" OnSelectedIndexChanged="radBtnListRefundable_SelectedIndexChanged">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style3">
                    <asp:Button ID="btnTreeRegister" runat="server" BackColor="#009933" Font-Bold="True" Font-Italic="True" OnClick="btnTreeRegister_Click" style="height: 29px" Text="Tree Register" Width="122px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#66FF33" Font-Bold="True" OnClick="Button2_Click" Text="Update Info" Width="122px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDeleteTree" runat="server" BackColor="#99CC00" Font-Bold="True" OnClick="btnDeleteTree_Click" Text="Delete Tree" Width="122px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
