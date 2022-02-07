<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterReunion.Master" AutoEventWireup="true" CodeBehind="ReunionHome.aspx.cs" Inherits="ASP_NET_Mehedee.pages.ReunionHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="border:solid 1px #20307C; padding:10px; width:100%;">
        <h3> IsDB-BISEW IT Student Association Reunion Program</h3>
        <div><img src="../Images/Image.jpeg" style="text-align: center; width: 40%; height:40%;"; /></div>
        <p>Welcome to our website. Today is <%= DateTime.Now.ToString("dddd, dd MMMM yyyy") %> <a href="ReunionRegistraion.aspx" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:20px;">Click Here For Registration</a></p>
        <p>
            <b> Event Name : </b> Reunion Program<br />
            <b> Event Address : </b> New Vision Information Technology (NVIT), 110 CDA Avenue, Nasirabad, (Opposite CTG Shopping Complex) Chittagong- 4000<br />
            <b> Event Date : </b> Friday, 02 October 2021<br />
            <b> Event Start Time : </b> Start from 02:00 PM onwards<br /><br />
            <b> Please feel free to call me on (+8801747 193 694) or contact by (abc@gmail.com), if you require any further information. </b>
        </p>
        <p>Please click on the link below to tell us that you will join us in this wonderful event.<p />
        <a href="ReunionRegistraion.aspx" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:20px;">Click Here For Registration</a>
    </div>
</asp:Content> 
