Imports Microsoft.VisualBasic
Imports System
Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub btnServer_Click(ByVal sender As Object, ByVal e As EventArgs)
		popup.ShowOnPageLoad = False
		Dim startUpScript As String = String.Format("ShowInfo('Server', '{0}');", textBox.Text)
		Page.ClientScript.RegisterStartupScript(Me.GetType(), "ANY_KEY", startUpScript, True)
	End Sub
End Class
