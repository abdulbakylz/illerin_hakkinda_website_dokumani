<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="27-05.aspx.cs" Inherits="WebApplication1._27_05" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 363px;
        }
        .auto-style3 {
            width: 240px;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/iller.accdb" SelectCommand="SELECT * FROM [iller] ORDER BY [sehir]"></asp:AccessDataSource>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="135px" AutoPostBack="True" DataSourceID="AccessDataSource1" DataTextField="sehir" DataValueField="id" Height="30px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
                    </td>
                    <td class="auto-style3">
            <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
            <asp:Image ID="Image1" runat="server" Height="297px" ImageUrl="~/il/00.jpg" Width="475px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="AccessDataSource2">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="ilce" HeaderText="ilce" SortExpression="ilce" />
                </Columns>
            </asp:GridView>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="AccessDataSource1" RepeatColumns="10">
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    sehir:
                    <asp:Label ID="sehirLabel" runat="server" Text='<%# Eval("sehir") %>' />
                    <br />
                    map:
                    <asp:Label ID="mapLabel" runat="server" Text='<%# Eval("map") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            ----------------------<br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="AccessDataSource2" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="ilce" HeaderText="ilce" SortExpression="ilce" />
                    <asp:BoundField DataField="plaka" HeaderText="plaka" SortExpression="plaka" />
                </Fields>
            </asp:DetailsView>
            <br />
            --------------------------------<br />
            <br />
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="id" DataSourceID="AccessDataSource2">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    ilce:
                    <asp:TextBox ID="ilceTextBox" runat="server" Text='<%# Bind("ilce") %>' />
                    <br />
                    plaka:
                    <asp:TextBox ID="plakaTextBox" runat="server" Text='<%# Bind("plaka") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ilce:
                    <asp:TextBox ID="ilceTextBox" runat="server" Text='<%# Bind("ilce") %>' />
                    <br />
                    plaka:
                    <asp:TextBox ID="plakaTextBox" runat="server" Text='<%# Bind("plaka") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Ekle" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    ilce:
                    <asp:Label ID="ilceLabel" runat="server" Text='<%# Bind("ilce") %>' />
                    <br />
                    plaka:
                    <asp:Label ID="plakaLabel" runat="server" Text='<%# Bind("plaka") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/iller.accdb" SelectCommand="SELECT * FROM [ilceler] WHERE ([plaka] = ?) ORDER BY [ilce]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="plaka" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:AccessDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
