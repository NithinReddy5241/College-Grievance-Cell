<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="College_Grievance_Cell.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:Label ID="Label1" runat="server" ClientIDMode="Predictable" Font-Bold="True" Font-Size="XX-Large" Text="Welcome To College Grievance Cell"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF6699" Height="202px" Width="369px">
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentLogin.aspx">&gt; Login as Student</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HODLogin.aspx">&gt; Login as HOD</asp:HyperLink>
                <br />
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AdminLogin.aspx">&gt; Login as Admin</asp:HyperLink>
            </asp:Panel>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
