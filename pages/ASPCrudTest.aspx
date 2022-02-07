<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPCrudTest.aspx.cs" Inherits="ASP_NET_Mehedee.pages.ASPCrudTest" EnableViewState="true" ViewStateMode="Enabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap-grid.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 68px;
        }
        .auto-style3 {
            color: #CC3300;
            background-color: #66CCFF;
            
        }
        .auto-style4 {
            text-align: right;
            width: 436px;
        }
        .auto-style5 {
            width: 404px;
        }
        .auto-style6 {
            text-align: right;
            width: 436px;
            height: 26px;
        }
        .auto-style7 {
            width: 404px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 258px;
        }
        .auto-style11 {
            margin-top: 31px;
            margin-right: 0px;
        }
        .auto-style12 {
            text-align: right;
            width: 436px;
            height: 23px;
        }
        .auto-style13 {
            width: 404px;
            height: 23px;
        }
        .auto-style14 {
            height: 23px;
        }
        .auto-style15 {
            text-align: right;
            width: 436px;
            height: 48px;
        }
        .auto-style16 {
            width: 404px;
            height: 48px;
        }
        .auto-style17 {
            height: 48px;
        }
        .auto-style18 {
            text-decoration: underline;
        }
        .auto-style19 {
            text-align: right;
            width: 436px;
            height: 32px;
        }
        .auto-style20 {
            width: 404px;
            height: 32px;
        }
        .auto-style21 {
            height: 32px;
        }
        .auto-style22 {
            text-align: left;
            width: 436px;
        }
        .auto-style23 {
            width: 15px;
        }
        .auto-style25 {
            width: 146px;
        }
        .auto-style27 {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4">
                        <h1 class="auto-style3"><span class="auto-style18">Student Information</span>&nbsp;
                            <asp:Label ID="lblSelectId" runat="server" Font-Bold="False" Font-Size="Small" Text="ID : " Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="txtSelectId" runat="server" Height="22px" Visible="False" Width="75px"></asp:TextBox>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Name :&nbsp;&nbsp; </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtStudentName" runat="server" Height="37px" Width="90%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqValName" runat="server" ControlToValidate="txtStudentName" ErrorMessage="! Name is required" Font-Bold="False" ForeColor="#990000" SetFocusOnError="True">Name is Required!</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9" rowspan="12">
                        <asp:GridView ID="gVStudentInfo" PageSize="5" runat="server" CssClass="auto-style11" Height="478px" Width="3%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="RegistraionNo" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gVStudentInfo_SelectedIndexChanged" EmptyDataText="Not Available" OnPreRender="gVStudentInfo_PreRender">
                            <AlternatingRowStyle BackColor="Green" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="RegistraionNo" HeaderText="RegistraionNo" InsertVisible="False" ReadOnly="True" SortExpression="RegistraionNo" ItemStyle-CssClass="col-xl-2" >
                                
<ItemStyle CssClass="col-xl-2"></ItemStyle>
                                </asp:BoundField>
                                
                                <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName, RegistraionNo" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender"  SortExpression="Gender"/>
                                <asp:BoundField DataField="University" HeaderText="University" SortExpression="University" />
                                <asp:BoundField DataField="StudentEmail" HeaderText="StudentEmail" SortExpression="StudentEmail" />
                                <asp:BoundField DataField="GraduationDate" HeaderText="GraduationDate" SortExpression="GraduationDate" DataFormatString="{0:dd/MM/yyyy}"/>
                                <asp:BoundField DataField="StudentImagePath" HeaderText="StudentImagePath" SortExpression="StudentImagePath" NullDisplayText="Not Available" />
                                <asp:TemplateField HeaderText="DepartmentID" SortExpression="DepartmentID">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TexBox1" runat="server" Text='<%# Bind("DepartmentID") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmentID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ButtonType="Button" HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                                <asp:BoundField DataField="University" HeaderText="Bound University" SortExpression="University" />
                            </Columns>
                            <EditRowStyle BackColor="Gray" />
                            <EmptyDataRowStyle BackColor="Red" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="Blue" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="Azure" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" BackColor="LightGreen" />
                            <SelectedRowStyle BackColor="Yellow" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                            <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Current" FirstPageImageUrl="~/Images/Image.jpeg" PreviousPageText="Before" Position="Top" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspDB %>" SelectCommand="SELECT * FROM [StudentRegistration]" InsertCommand="INSERT INTO [StudentRegistration] ([StudentName], [Gender], [University], [StudentEmail], [GraduationDate], [StudentImagePath], [DepartmentID]) VALUES (@StudentName, @Gender, @University, @StudentEmail, @GraduationDate, @StudentImagePath, @DepartmentID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [StudentRegistration] WHERE [RegistraionNo] = @original_RegistraionNo AND [StudentName] = @original_StudentName AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND [University] = @original_University AND (([StudentEmail] = @original_StudentEmail) OR ([StudentEmail] IS NULL AND @original_StudentEmail IS NULL)) AND (([GraduationDate] = @original_GraduationDate) OR ([GraduationDate] IS NULL AND @original_GraduationDate IS NULL)) AND (([StudentImagePath] = @original_StudentImagePath) OR ([StudentImagePath] IS NULL AND @original_StudentImagePath IS NULL)) AND (([DepartmentID] = @original_DepartmentID) OR ([DepartmentID] IS NULL AND @original_DepartmentID IS NULL))" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [StudentRegistration] SET [StudentName] = @StudentName, [Gender] = @Gender, [University] = @University, [StudentEmail] = @StudentEmail, [GraduationDate] = @GraduationDate, [StudentImagePath] = @StudentImagePath, [DepartmentID] = @DepartmentID WHERE [RegistraionNo] = @original_RegistraionNo AND [StudentName] = @original_StudentName AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND [University] = @original_University AND (([StudentEmail] = @original_StudentEmail) OR ([StudentEmail] IS NULL AND @original_StudentEmail IS NULL)) AND (([GraduationDate] = @original_GraduationDate) OR ([GraduationDate] IS NULL AND @original_GraduationDate IS NULL)) AND (([StudentImagePath] = @original_StudentImagePath) OR ([StudentImagePath] IS NULL AND @original_StudentImagePath IS NULL)) AND (([DepartmentID] = @original_DepartmentID) OR ([DepartmentID] IS NULL AND @original_DepartmentID IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_RegistraionNo" Type="Int32" />
                                <asp:Parameter Name="original_StudentName" Type="String" />
                                <asp:Parameter Name="original_Gender" Type="String" />
                                <asp:Parameter Name="original_University" Type="String" />
                                <asp:Parameter Name="original_StudentEmail" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_GraduationDate" />
                                <asp:Parameter Name="original_StudentImagePath" Type="String" />
                                <asp:Parameter Name="original_DepartmentID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="StudentName" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="University" Type="String" />
                                <asp:Parameter Name="StudentEmail" Type="String" />
                                <asp:Parameter DbType="Date" Name="GraduationDate" />
                                <asp:Parameter Name="StudentImagePath" Type="String" />
                                <asp:Parameter Name="DepartmentID" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="StudentName" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="University" Type="String" />
                                <asp:Parameter Name="StudentEmail" Type="String" />
                                <asp:Parameter DbType="Date" Name="GraduationDate" />
                                <asp:Parameter Name="StudentImagePath" Type="String" />
                                <asp:Parameter Name="DepartmentID" Type="Int32" />
                                <asp:Parameter Name="original_RegistraionNo" Type="Int32" />
                                <asp:Parameter Name="original_StudentName" Type="String" />
                                <asp:Parameter Name="original_Gender" Type="String" />
                                <asp:Parameter Name="original_University" Type="String" />
                                <asp:Parameter Name="original_StudentEmail" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_GraduationDate" />
                                <asp:Parameter Name="original_StudentImagePath" Type="String" />
                                <asp:Parameter Name="original_DepartmentID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">Gender :&nbsp;&nbsp; </td>
                    <td class="auto-style20">
                        <asp:RadioButtonList ID="radBtnGender" runat="server" OnSelectedIndexChanged="radBtnGender_SelectedIndexChanged" RepeatDirection="Horizontal" Width="80%">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style21"></td>
                </tr>
                <tr>
                    <td class="auto-style4">University :&nbsp;&nbsp; </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlUniversity" runat="server" Width="90%">
                            <asp:ListItem Selected="True" Value="None">Select University</asp:ListItem>
                            <asp:ListItem>Univesity Of Chittagong</asp:ListItem>
                            <asp:ListItem>Dhaka University</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rvUniversity" runat="server" ControlToValidate="ddlUniversity" ErrorMessage="! University is not valid" Font-Bold="False" ForeColor="#990000" SetFocusOnError="True" Display="Dynamic" InitialValue="None">Choose a Valid University</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Department :&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlDepartments" runat="server" DataSourceID="SqlDataSource2" DataTextField="Department" DataValueField="DepartmentID" Width="90%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspDB %>" SelectCommand="SELECT [Department], [DepartmentID] FROM [Departments]" CacheDuration="60"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="rvDepartment" runat="server" ControlToValidate="ddlDepartments" ErrorMessage="! Department is not valid" Font-Bold="False" ForeColor="#990000" SetFocusOnError="True" Display="Dynamic" InitialValue="None">Choose a Valid Department</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style6">User Name :&nbsp;&nbsp; </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtUserName" runat="server" Height="23px" Width="90%" OnTextChanged="txtUserName_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style12">Email :&nbsp;&nbsp; </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtEmail" runat="server" Height="37px" Width="90%"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regExpValEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="! Needs a valid email address" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True">Invalid Mail. i.e. abc@email.com</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style14"><strong>
                        <asp:Button ID="btnUpdate" runat="server" BackColor="#333300" Font-Bold="True" ForeColor="#FFFFCC" Text="Update Info" Width="143px" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" BackColor="#CC0000" Font-Bold="True" ForeColor="#66FFCC" Text="Delete Account" Width="143px" OnClick="btnDelete_Click" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">Graduation Date :&nbsp; </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDateTest" runat="server" Height="37px" TextMode="Date" Width="90%"></asp:TextBox>
                        <asp:RangeValidator ID="rvGraduationDate" runat="server" ControlToValidate="txtDateTest" ErrorMessage="Date must be within the range." MinimumValue="01/01/2014" SetFocusOnError="True" Type="Date" ForeColor="Red">Date Range Must Be Between 2014-Today</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">Student Image :&nbsp;&nbsp; </td>
                    <td class="auto-style16">
                        <asp:FileUpload ID="fuStudentImage" runat="server" />
                    </td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style4">Password :&nbsp;&nbsp; </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassword" runat="server" Height="37px" TextMode="Password" ToolTip="Password must have at least 6 characters." Width="90%"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Confirm Password :&nbsp;&nbsp; </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPassword0" runat="server" Height="37px" TextMode="Password" ToolTip="Passwords have to match." Width="90%"></asp:TextBox>
                        <asp:CompareValidator ID="comValPass" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword0" ErrorMessage="! Password Must Match" ForeColor="#990000" ToolTip="Write Your Pssword Again" SetFocusOnError="True">Password did not match!</asp:CompareValidator>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#99CCFF" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="Red" HeaderText="Warning" ShowMessageBox="True" />
                    </td>
                    <td class="auto-style5"><strong>
                        <asp:Button ID="btnCreateAccount" runat="server" BackColor="#33CC33" Font-Bold="True" Text="Create Account" Width="143px" OnClick="btnCreateAccount_Click" />
                        <asp:Button ID="btnPreviewInfo" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="#FFFFCC" Text="Preview Info" Width="143px" />
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblMessage" runat="server" Visible="False" ForeColor="#33CC33"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="col-xl-6" DataKeyField="DepartmentID" DataSourceID="SqlDataSource2" GridLines="Both">
                            <AlternatingItemTemplate>
                                000
                            </AlternatingItemTemplate>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <FooterTemplate>
                                @mehedee
                            </FooterTemplate>
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <HeaderTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style25">Department Name</td>
                                        <td class="auto-style27">Department ID</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style27">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style27">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style27">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style27">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </HeaderTemplate>
                            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <ItemTemplate>
                                &nbsp;<table class="auto-style1">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department", "{0}") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DepartmentIDLabel" runat="server" Text='<%# Eval("DepartmentID", "{0}") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <br />
<br />
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SeparatorTemplate>
                                Hello
                            </SeparatorTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
