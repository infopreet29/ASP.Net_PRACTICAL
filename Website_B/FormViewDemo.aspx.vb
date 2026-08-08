Imports System.Data
Imports System.Data.SqlClient
Partial Class FormViewDemo
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=" & HttpContext.Current.Request.MapPath(HttpContext.Current.Request.ApplicationPath) & "\DB\SEM5_B.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            FillData()
        End If
    End Sub
    Private Sub FillData()
        Dim cmd As New SqlCommand
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        cmd.CommandText = "Select * from Empmst order by empno"
        cmd.Connection = cn
        da.SelectCommand = cmd
        cn.Open()
        da.Fill(ds)
        cn.Close()
        FormView1.DataSource = ds.Tables(0)
        FormView1.DataBind()
        ds.Dispose() : da.Dispose() : cmd.Dispose()
    End Sub
    Protected Sub FormView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormView1.PageIndexChanging
        FormView1.PageIndex = e.NewPageIndex
        FillData()
    End Sub

End Class
