<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10-05.aspx.cs" Inherits="WebApplication1._10_05" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 314px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/iller.accdb" SelectCommand="SELECT iller.id, iller.sehir, ilceler.ilce, ilceler.plaka FROM (ilceler INNER JOIN iller ON ilceler.plaka = iller.id) WHERE (ilceler.plaka = ?) ORDER BY iller.sehir">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="?" SessionField="v1" />
                </SelectParameters>
            </asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
