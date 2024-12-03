<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="03-06-1.aspx.cs" Inherits="WebApplication1._03_06_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/iller.accdb" SelectCommand="SELECT * FROM [ilceler] WHERE ([plaka] = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="plaka" QueryStringField="v1" Type="Int32" />
                </SelectParameters>
            </asp:AccessDataSource>
            <br />
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/iller.accdb" SelectCommand="SELECT * FROM [ilceler] WHERE ([plaka] = ?)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="plaka" SessionField="v1" Type="Int32" />
                </SelectParameters>
            </asp:AccessDataSource>
            <br />
            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="AccessDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ilceLabel" runat="server" Text='<%# Eval("ilce") %>' />
                        </td>
                        <td>
                            <asp:Label ID="plakaLabel" runat="server" Text='<%# Eval("plaka") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Güncelleştir" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="İptal" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ilceTextBox" runat="server" Text='<%# Bind("ilce") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="plakaTextBox" runat="server" Text='<%# Bind("plaka") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>Hiçbir veri döndürülmedi.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Ekle" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Temizle" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="ilceTextBox" runat="server" Text='<%# Bind("ilce") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="plakaTextBox" runat="server" Text='<%# Bind("plaka") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ilceLabel" runat="server" Text='<%# Eval("ilce") %>' />
                        </td>
                        <td>
                            <asp:Label ID="plakaLabel" runat="server" Text='<%# Eval("plaka") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">id</th>
                                        <th runat="server">ilce</th>
                                        <th runat="server">plaka</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ilceLabel" runat="server" Text='<%# Eval("ilce") %>' />
                        </td>
                        <td>
                            <asp:Label ID="plakaLabel" runat="server" Text='<%# Eval("plaka") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id,ilce,plaka" DataSourceID="AccessDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="ilce" HeaderText="ilce" SortExpression="ilce" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="348px" ImageUrl="~/il/00.jpg" Width="699px" />
        </div>
    </form>
</body>
</html>
