<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="College_Grievance_Cell.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 82px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" class="auto-style1">
            <div align="center">
                <asp:Label ID="Label1" runat="server" ClientIDMode="Predictable" Font-Bold="True" Font-Size="XX-Large" Text="Student Login"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Panel ID="Panel1" runat="server" Height="255px" Width="483px">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Roll Number"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxR" runat="server" Height="16px" Width="115px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxP" runat="server" Height="16px" Width="115px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" />
                </asp:Panel>
                <br />
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
