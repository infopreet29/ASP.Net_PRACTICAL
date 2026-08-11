
Partial Class Query_String
    Inherits System.Web.UI.Page

    Protected Sub btnNextPage_QS_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNextPage_QS.Click
        'Response.Redirect("QueryStringprint.aspx?name=prashant&mobile=9898750588&city=surat")

        Response.Redirect("QueryStringprint.aspx?name=" & txtName.Text & "&mobile=" & _
                          txtmobile.Text & "&city=" & txtCity.Text)
        'Will be work in any domain
        'Response.Redirect("http://www.apple.com")
    End Sub

    Protected Sub btnServerTrans_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnServerTrans.Click
        Server.Transfer("QueryStringprint.aspx?name=" & txtName.Text & "&mobile=" & _
        txtmobile.Text & "&city=" & txtCity.Text & "")

        'only work in current domain
        'Server.Transfer("http://www.apple.com")
    End Sub
End Class
