Imports System.Data
Imports System.Data.SqlClient
Partial Class LoginPage
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=" & HttpContext.Current.Request.MapPath(HttpContext.Current.Request.ApplicationPath) & "\DB\SEM5_B.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")

    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        'If Login1.UserName = "abc" And Login1.Password = "123" Then
        '    e.Authenticated = True
        '    Response.Redirect("Test.aspx")
        'Else
        '    e.Authenticated = False
        'End If

        Dim cmd As New SqlCommand
        Dim dr As SqlDataReader

        cmd.CommandText = "Select FullName from loginmst where loginid='" & _
            Login1.UserName & "' and loginpass='" & Login1.Password & "'"
        cmd.Connection = cn
        cn.Open()
        dr = cmd.ExecuteReader
        If dr.HasRows = True Then
            dr.Read()
            e.Authenticated = True
            Session("user") = dr.Item("FullName").ToString  'Login1.UserName   'Create a session
            Response.Redirect("test.aspx")
        Else
            e.Authenticated = False
        End If
        dr.Close()
        cmd.Dispose()
        cn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Session.Abandon()       'Session Destroy
            'Session.Clear()
            'Session.Remove("user")
            'Response.Cookies("Data").Expires = DateTime.Now.AddDays(-1)
        End If
    End Sub
End Class
