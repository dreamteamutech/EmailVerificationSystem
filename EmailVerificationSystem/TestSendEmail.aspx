<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestSendEmail.aspx.cs" Inherits="TestSendEmail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 72px;
        }
        .style3
        {
            width: 72px;
            font-weight: bold;
            color: #00CC00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 150px; width: 307px">
    
        <table class="style1">
            <tr>
                <td class="style3">
    
        To:</td>
                <td>
                    <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
        Subject:
        </td>
                <td>
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
        Body:
        </td>
                <td>
        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" style="margin-bottom: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
        <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="Send" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
        <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
    
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    <br />
    <asp:Button ID="btnSelectAll" runat="server"
        Text="Select All" onclick="btnSelectAll_Click" />
&nbsp;<asp:Button ID="btnDeselectAll" runat="server" Text="Deselect All" 
        Width="87px" onclick="btnDeselectAll_Click" />
    <asp:GridView ID="Customers" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" AllowPaging="True">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="EmailSelector" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="BranchName" HeaderText="BranchName" 
                SortExpression="BranchName" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="SendList" runat="server" Text="Send" onclick="SendList_Click" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DreamToolConnectionString %>" 
        SelectCommand="SELECT * FROM [View_CustomerBranchEmail] ORDER BY [Lname], [Fname]">
    </asp:SqlDataSource>
    </form>
</body>
</html>
