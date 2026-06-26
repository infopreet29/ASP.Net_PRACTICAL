
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnSum_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSum.Click
        txtresult.Text = Val(txtno1.Text) + Val(txtno2.Text)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'MsgBox(IsPostBack)
    End Sub

    Protected Sub btnminus_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnminus.Click
        txtresult.Text = Val(txtno1.Text) - Val(txtno2.Text)
    End Sub

    Protected Sub btnmul_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnmul.Click
        txtresult.Text = Val(txtno1.Text) * Val(txtno2.Text)
    End Sub
End Class
