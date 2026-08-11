
Partial Class QueryStringprint
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'How to Access Querystring Parameters value
        lblname.Text = Request.QueryString("Name").ToString
        lblmobile.Text = Request.QueryString("mobile").ToString
        lblcity.Text = Request.QueryString("CITY").ToString
    End Sub
End Class
