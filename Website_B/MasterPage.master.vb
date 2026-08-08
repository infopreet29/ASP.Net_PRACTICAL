
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbl_user.Text = "<h4 style='margin-left:90%;'>Welcome " + Session("user") + "  </h4>"
    End Sub
End Class

