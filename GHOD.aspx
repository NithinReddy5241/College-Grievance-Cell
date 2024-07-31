<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GHOD.aspx.cs" Inherits="College_Grievance_Cell.GHOD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="166px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>ComplaintId</HeaderTemplate>
                        <ItemTemplate>
                           <asp:Label ID="Label1"  runat="server" Text='<%#Eval("ComplaintId") %>' />
                        </ItemTemplate></asp:TemplateField>
                       <asp:TemplateField> <HeaderTemplate>Department</HeaderTemplate>
                        <ItemTemplate><%#Eval("Department") %></ItemTemplate></asp:TemplateField>
                       <asp:TemplateField> <HeaderTemplate>ComplaintType</HeaderTemplate>
                        <ItemTemplate><%#Eval("ComplaintType") %></ItemTemplate></asp:TemplateField>
                       <asp:TemplateField> <HeaderTemplate>Date</HeaderTemplate>
                        <ItemTemplate><%#Eval("Date") %></ItemTemplate></asp:TemplateField>
                      <asp:TemplateField>  <HeaderTemplate>Description</HeaderTemplate>
                        <ItemTemplate><%#Eval("Description") %></ItemTemplate></asp:TemplateField>
                      <asp:TemplateField>  <HeaderTemplate>status</HeaderTemplate>
                        <ItemTemplate><%#Eval("status") %></ItemTemplate>
                    </asp:TemplateField><asp:TemplateField>
                        <HeaderTemplate>Change Status</HeaderTemplate>
                        <ItemTemplate>
                            <%--<asp:CheckBox runat="server" ID="CheckOne" OnCheckedChanged="GridView1_SelectedIndexChanged" AutoPostBack="True" />--%>
                        </ItemTemplate>
                                        </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <br />
            Change Status to :&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Completed" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
