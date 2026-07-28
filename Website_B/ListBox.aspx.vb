Imports System.Data
Imports System.Data.SqlClient

Partial Class ListBox
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            FillData()
        End If
    End Sub
    Private Sub FillData()
        Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("MyDB").ToString)
        Dim cmd As New SqlCommand
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        cmd.CommandText = "SELECT ENAME,mobile FROM EMPMST ORDER BY ENAME"
        cmd.Connection = cn
        da.SelectCommand = cmd
        cn.Open()
        da.Fill(ds) 'Execute query in DB and fill records in dataset
        cn.Close()
        ListBox1.DataValueField = "ename"
        ListBox1.DataSource = ds.Tables(0)
        ListBox1.DataBind()
        da.Dispose() : cmd.Dispose() : cn.Dispose()
    End Sub
End Class
