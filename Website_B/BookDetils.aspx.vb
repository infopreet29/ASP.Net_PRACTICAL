Imports System.Data
Imports System.Data.SqlClient

Partial Class BookDetils
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\College\ASP.NET\2026\Website_B\DB\TEST_DB_26_B.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True"

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim cn As New SqlConnection(constr)
        Dim cmd As New SqlCommand
        cmd.CommandText = "insert into BookMst values(@Bookid,@Btitle,@publisher,@authors,@price)"
        cmd.Parameters.AddWithValue("@Bookid", Val(txtbookno.Text))
        cmd.Parameters.AddWithValue("@Btitle", txttitle.Text)
        cmd.Parameters.AddWithValue("@publisher", txtpublisher.Text)
        cmd.Parameters.AddWithValue("@price", Val(txtprice.Text))
        cmd.Parameters.AddWithValue("@authors", txtauthors.Text)
        cmd.Connection = cn
        cn.Open()
        cmd.ExecuteNonQuery()   'it is for insert, update, delete
        cn.Close() : cmd.Dispose()
        MsgBox("Record Save Successfully")
        Call btnClear_Click(sender, e)
        FillData()
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        txtauthors.Text = ""
        txtbookno.Text = ""
        txtprice.Text = ""
        txtpublisher.Text = ""
        txttitle.Text = ""
    End Sub

    Private Sub FillData()
        Dim cn As New SqlConnection(constr)
        Dim cmd As New SqlCommand
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        cmd.CommandText = "Select * from BookMst"
        cmd.Connection = cn
        da.SelectCommand = cmd
        cn.Open()
        da.Fill(ds)
        cn.Close() : da.Dispose() : cmd.Dispose() : cn.Dispose()
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            FillData()
        End If
    End Sub
End Class
