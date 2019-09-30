<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="XML_inimene_Konstantinov.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inimeste leht</title>
</head>
<body>
    <h1>XML ja XSLT funktsioonide kasutamine</h1>
    <form id="form1" runat="server">
        <div>
<%--            <asp:Xml ID="xml1" runat="server" DocumentSource="~/Inimesed.xml" TransformSource="~/forInimesed.xslt"/>--%>
<%--            <asp:xml id="xml2" runat="server" documentsource="~/autod.xml" transformsource="~/forautod.xslt" />--%>
<%--            <asp:xml id="xml3" runat="server" documentsource="~/pc.xml" transformsource="~/forpc.xslt" />--%>
            <asp:xml id="xml4" runat="server" documentsource="~/sugupuu.xml" transformsource="~/forsugupuu.xslt" />
        </div>
    </form>
</body>
</html>
