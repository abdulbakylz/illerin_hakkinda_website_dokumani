<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="03-06.aspx.cs" Inherits="WebApplication1._03_06" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/iller.accdb" SelectCommand="SELECT * FROM [iller] ORDER BY [sehir]"></asp:AccessDataSource>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource1" DataTextField="sehir" DataValueField="id" Height="27px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="148px">
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
