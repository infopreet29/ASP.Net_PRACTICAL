Imports System.Data
Imports System.Data.SqlClient

Partial Class Registration
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=" & HttpContext.Current.Request.MapPath(HttpContext.Current.Request.ApplicationPath) & "\DB\SEM5_B.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim cmd As New SqlCommand
        Dim query As String
        query = "insert into LoginMst values(@FullName,@Address,@MobileNo,@LoginID,@LoginPass,@UserAge)"
        cmd.CommandText = query
        cmd.Parameters.AddWithValue("@FullName", txtfullName.Text)
        cmd.Parameters.AddWithValue("@Address", txtAddr.Text)
        cmd.Parameters.AddWithValue("@MobileNo", txtmobile.Text)
        cmd.Parameters.AddWithValue("@LoginID", txtusername.Text)
        cmd.Parameters.AddWithValue("@LoginPass", txtPass.Text)
        cmd.Parameters.AddWithValue("@UserAge", Val(txtage.Text))
        cmd.Connection = cn
        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()
        cmd.Dispose()
        ClearData()
        MsgBox("Done Successfully")
    End Sub
    Private Sub ClearData()
        txtfullName.Text = "" : txtAddr.Text = "" : txtmobile.Text = "" : txtusername.Text = "" : txtPass.Text = ""
    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        ClearData()
    End Sub

End Class
