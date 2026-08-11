
Partial Class Test
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ck As HttpCookie = Request.Cookies("Data")
        If ck IsNot Nothing Then
            lblData.Text = "Cookies Value : " & ck.Values.Item("name").ToString
        Else
            lblData.Text = "Cookies Not Set"
        End If

    End Sub
End Class
