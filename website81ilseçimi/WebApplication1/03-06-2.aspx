<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="03-06-2.aspx.cs" Inherits="WebApplication1._03_06_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="AccessDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="sehir" HeaderText="sehir" SortExpression="sehir" />
                    <asp:BoundField DataField="map" HeaderText="map" SortExpression="map" />
                </Columns>
            </asp:GridView>
            <br />
            ----------------<br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="AccessDataSource2">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="ilce" HeaderText="ilce" SortExpression="ilce" />
                    <asp:BoundField DataField="plaka" HeaderText="plaka" SortExpression="plaka" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/iller.accdb" SelectCommand="SELECT * FROM [iller]"></asp:AccessDataSource>
            <br />
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/iller.accdb" SelectCommand="SELECT * FROM [ilceler] WHERE ([plaka] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="plaka" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
