Imports System.Data
Imports System.Data.SqlClient

Partial Class Employee
    Inherits System.Web.UI.Page
    Dim ConStr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=" & HttpContext.Current.Request.MapPath(HttpContext.Current.Request.ApplicationPath) & "\DB\SEM5_B.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True"
    Private Sub FillData()
        Dim cn As New SqlConnection(ConStr)
        Dim cmd As New SqlCommand
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter
        cmd.CommandText = "SELECT * FROM EMPMST"
        cmd.Connection = cn
        cn.Open()
        da.SelectCommand = cmd
        da.Fill(ds)
        cn.Close()
        grd.DataSource = ds.Tables(0)
        grd.DataBind()
        da.Dispose() : cmd.Dispose() : cn.Dispose() : ds.Dispose()
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim cn As New SqlConnection(ConStr)
        Dim cmd As New SqlCommand
        cmd.CommandText = "insert into empmst values(@empno,@ename,@mobile,@salary)"
        cmd.Parameters.AddWithValue("@empno", Val(txtempno.Text))
        cmd.Parameters.AddWithValue("@ename", txtname.Text)
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text)
        cmd.Parameters.AddWithValue("@salary", Val(txtsalary.Text))
        cmd.Connection = cn
        cn.Open()
        cmd.ExecuteNonQuery()   'FOR DATA INSERT
        cmd.Dispose()
        cn.Close()
        cn.Dispose()
        MsgBox("Record Save Successfully")
        Call btnClear_Click(sender, e)
        FillData()
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        txtempno.Text = ""
        txtmobile.Text = ""
        txtname.Text = ""
        txtsalary.Text = ""
        txtget.Text = ""
    End Sub

    Protected Sub btnGet_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGet.Click
        Dim cn As New SqlConnection(ConStr)
        Dim cmd As New SqlCommand
        Dim dr As SqlDataReader
        cmd.CommandText = "SELECT * FROM EMPMST WHERE EMPNO = " & Val(txtempno.Text) & ""
        cmd.Connection = cn
        cn.Open()
        dr = cmd.ExecuteReader
        If dr.HasRows = True Then
            dr.Read()
            txtget.Text = dr.Item("empno").ToString
            txtname.Text = dr.Item("EName").ToString
            txtmobile.Text = dr.Item("Mobile").ToString
            txtsalary.Text = dr.Item("salary").ToString
            dr.Close() : cmd.Dispose() : cn.Close() : cn.Dispose()
        Else
            MsgBox("No Record Found")
            dr.Close() : cmd.Dispose() : cn.Dispose()
            Call btnClear_Click(sender, e)
        End If
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        Dim cn As New SqlConnection(ConStr)
        Dim cmd As New SqlCommand
        cmd.CommandText = "update empmst set Ename=@ename, Mobile=@mobile, Salary=@salary Where EmpNo=@Empno"
        cmd.Parameters.AddWithValue("@empno", Val(txtget.Text))
        cmd.Parameters.AddWithValue("@ename", txtname.Text)
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text)
        cmd.Parameters.AddWithValue("@salary", Val(txtsalary.Text))
        cmd.Connection = cn
        cn.Open()
        cmd.ExecuteNonQuery()   'FOR DATA update
        cmd.Dispose()
        cn.Close()
        cn.Dispose()
        MsgBox("Record Update Successfully")
        Call btnClear_Click(sender, e)
        FillData()
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim cn As New SqlConnection(ConStr)
        Dim cmd As New SqlCommand
        If MsgBox("Are You sure?? want to delete !!", vbYesNo, vbDefaultButton2) = vbYes Then
            cmd.CommandText = "Delete from empmst Where EmpNo=@Empno"
            cmd.Parameters.AddWithValue("@empno", Val(txtget.Text))
            cmd.Connection = cn
            cn.Open()
            cmd.ExecuteNonQuery()   'FOR DATA update
            cmd.Dispose()
            cn.Close()
            cn.Dispose()
            MsgBox("Record Deleted Successfully")
            Call btnClear_Click(sender, e)
        Else
            cmd.Dispose()
            cn.Dispose()
        End If
        FillData()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            FillData()
        End If
    End Sub
End Class
