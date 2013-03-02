﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestSendEmail.aspx.cs" Inherits="TestSendEmail" %>

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
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="OrgId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="OrgId" HeaderText="OrgId" InsertVisible="False" 
                    ReadOnly="True" SortExpression="OrgId" />
                <asp:BoundField DataField="OrgName" HeaderText="OrgName" 
                    SortExpression="OrgName" />
            </Columns>
        </asp:GridView>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:test %>" 
        SelectCommand="SELECT * FROM [Organization]"></asp:SqlDataSource>
    </form>
</body>
</html>
