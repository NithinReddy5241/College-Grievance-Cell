<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GStudent.aspx.cs" Inherits="College_Grievance_Cell.Grievance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 551px;
            border: 7px solid #000000;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            width: 257px;
        }
        .auto-style4 {
            height: 31px;
            width: 257px;
        }
        .auto-style5 {
            width: 257px;
            height: 53px;
        }
        .auto-style6 {
            height: 53px;
        }
    </style>
</head>
<body>
    <script type="text/javascript">
        function GrievanceType(x, y) {
            if (y.value == "--select--") y.IsValid = false;
            else y.IsValid = true;
        }
    </script>
    <script type="text/javascript">
        function BranchType(x, y) {
            if (y.value != "--select--") y.IsValid = false;
            else y.IsValid = true;
        }
    </script>
    <span >
    <form id="form1" runat="server">
        
        <br />
        <br />
        <br />
        <br />
        
        <table  align="center"cellspacing="10" class="auto-style1">
            <tr>
                <td align="right"class="auto-style3">
                    Complaint&nbsp; ID :&nbsp; </td>
                <td>
                    <asp:TextBox ID="TextBoxCId" runat="server" Enabled="False" Height="18px" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right"class="auto-style3"><span >
                    <asp:Label ID="Label1" runat="server" Text="Select Grievance Type :  "></asp:Label>
                    </span>
                </td>
                <td><span >
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="169px">
                        <asp:ListItem>--select--</asp:ListItem>
                        <asp:ListItem>Faculty </asp:ListItem>
                        <asp:ListItem>LAB</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Washroom</asp:ListItem>
                        <asp:ListItem>Exam Dept</asp:ListItem>
                        <asp:ListItem>Fee Details </asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="GrievanceType" ControlToValidate="DropDownList1" ErrorMessage="Select Grievance type"></asp:CustomValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style5"><span >
                    <asp:Label ID="Label2" runat="server" Text="Select Branch :    "></asp:Label>
                    </span>
                    &nbsp;
                    </td>
                <td class="auto-style6"><span >
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="169px">
                        <asp:ListItem>--select--</asp:ListItem>
                        <asp:ListItem>AI &amp; ML</asp:ListItem>
                        <asp:ListItem>Civil</asp:ListItem>
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>ECE</asp:ListItem>
                        <asp:ListItem>EEE</asp:ListItem>
                        <asp:ListItem>Mech</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="BranchType" ControlToValidate="DropDownList2"
                        ErrorMessage="CustomValidator"></asp:CustomValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td  align="right"class="auto-style3"><span >
                    <asp:Label ID="Label3" runat="server" Text="Date :    "></asp:Label>
                    </span>
                </td>
                <td><span >
                    <asp:TextBox ID="TextBoxD" runat="server" Enabled="False" Height="18px" Width="130px"></asp:TextBox>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Description : </td>
                <td><span >
                    <asp:TextBox ID="TextBoxDescription" runat="server" Height="105px" TextMode="MultiLine" Width="236px"></asp:TextBox>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" align="right">
                    <span>
                    <asp:Button ID="ButtonClear" runat="server" Text="Clear" Width="67px" OnClick="ButtonClear_Click" />
                    </span>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" Width="67px" OnClick="ButtonSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><span ><asp:Label ID="LabelDisplay" runat="server"></asp:Label></span>
                </td>
                <td><span >
                    <asp:Button ID="ButtonNew" runat="server" Text="New Complaint" Width="104px" Height="27px" OnClick="ButtonNew_Click" />
                    </span>
                </td>
            </tr>
            
        </table>
    </form></span>
</body>
</html>
