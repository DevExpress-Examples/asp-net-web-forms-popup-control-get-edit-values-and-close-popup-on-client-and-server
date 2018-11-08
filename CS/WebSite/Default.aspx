﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
    Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script type="text/javascript">
    function OnBtnShowPopupClick() {
        popup.Show();
    }
    function OnBtnClientClick(s, e) {
         popup.Hide();
         ShowInfo('Client', textBox.GetText());
    }
    function ShowInfo(closedBy, returnValue) {
        alert('Closed By: ' + closedBy + '\nReturn Value: ' + returnValue);
    }
    </script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input id="btnShowPopup" type="button" onclick="OnBtnShowPopupClick();" value="Show Popup" />
            <dx:ASPxPopupControl ID="popup" runat="server" ClientInstanceName="popup">
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server">
                        <dx:ASPxTextBox ID="textBox" runat="server" Width="170px" ClientInstanceName="textBox">
                        </dx:ASPxTextBox>
                        <table>
                            <tr>
                                <td>
                                    <dx:ASPxButton ID="btnClient" runat="server" Text="Client" AutoPostBack="False" ClientInstanceName="btnClient">
                                        <ClientSideEvents Click="OnBtnClientClick" />
                                    </dx:ASPxButton>
                                </td>
                                <td>
                                    <dx:ASPxButton ID="btnServer" runat="server" Text="Server" OnClick="btnServer_Click">
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxPopupControl>
        </div>
    </form>
</body>
</html>
