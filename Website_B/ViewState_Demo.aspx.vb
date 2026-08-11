Imports System.Data
Partial Class ViewState_Demo
    Inherits System.Web.UI.Page
    Dim ds As New DataSet

    'Store Data in ViewState
    Protected Sub btnStoreData_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnStoreData.Click
        ViewState("name") = txtname.Text
        ViewState("mobile") = txtmobile.Text
        ViewState("Emp") = ds
        txtname.Text = ""
        txtmobile.Text = ""
    End Sub
    'Retrive Data from ViewState
    Protected Sub btnviewstate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnviewstate.Click
        lblname.Text = ViewState("name").ToString
        lblmobile.Text = ViewState("mobile").ToString
        ds = CType(ViewState("Emp"), DataSet)

    End Sub
    'To store data in hidden field
    Protected Sub btnsetHdnValue_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsetHdnValue.Click
        hdn1.Value = txtname.Text
    End Sub
    'To access/read data from hidden field
    Protected Sub btnShowHdnValue_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnShowHdnValue.Click
        lblname.Text = hdn1.Value
    End Sub
    Protected Sub btnCookies_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCookies.Click
        'SET COOKIE VALUE
        Dim ck As New HttpCookie("Data")
        ck.Values("name") = txtname.Text
        ck.Values("mobile") = txtmobile.Text
        ck.Expires = DateTime.Now.AddMinutes(1)
        Response.Cookies.Add(ck)
    End Sub
    'Delete Cookies
    Protected Sub btnDeleteCookies_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDeleteCookies.Click
        Response.Cookies("Data").Expires = DateTime.Now.AddDays(-1)
    End Sub
End Class










