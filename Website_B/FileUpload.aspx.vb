
Partial Class FileUpload
    Inherits System.Web.UI.Page

    Protected Sub btnupload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupload.Click
        Dim strSavePath As String

        strSavePath = Server.MapPath("~/IMG")
        MsgBox(strSavePath)
        If FileUpload1.FileName <> "" Then
            'MsgBox(FileUpload1.FileName)
            strSavePath = strSavePath & "\" & FileUpload1.FileName
            FileUpload1.SaveAs(strSavePath)

            ' imgPic.ImageUrl = "~/IMG/" & FileUpload1.FileName

        End If
    End Sub
End Class
