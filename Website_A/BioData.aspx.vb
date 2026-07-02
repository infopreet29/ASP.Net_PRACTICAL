
Partial Class Biodata
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim strData As String
        strData = "NAME : " & txtname.Text & "</BR>"
        strData = strData & "MOBILE : " & txtmobile.Text & "</BR>"
        strData = strData & "QUALIFICATION : " & cmbQualication.Text & "</BR>"
        strData = strData & "ADDRESS : " & txtaddr.Text & "</BR>"
        strData = strData & "CITY : " & cmbCity.Text & "</BR>"
        strData = strData & "STATE : " & cmbState.Text & "</BR>"
        If rdomale.Checked = True Then
            strData = strData & "GENDERR : MALE </BR>"
        ElseIf rdoFemale.Checked = True Then
            strData = strData & "GENDERR : FEMALE </BR>"
        End If
        strData = strData & "HOBBIES : "
        If chkMusic.Checked = True Then
            strData = strData & "MUSIC "
        End If
        If chkRead.Checked = True Then
            strData = strData & "READING "
        End If
        If chkTravel.Checked = True Then
            strData = strData & "TRAVELLING "
        End If
        lblData.Text = strData
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            cmbState.Items.Add("GUJARAT")
            cmbState.Items.Add("MAHARASHTRA")
            cmbState.Items.Add("RAJASTHAN")
            cmbState.Items.Add("DELHI")
        End If
    End Sub
End Class
