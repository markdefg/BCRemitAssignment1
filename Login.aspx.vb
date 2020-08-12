Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        con.ConnectionString = "Data Source=BCREMIT-011;Initial Catalog=Users;Integrated Security=True"

        Dim objcon As SqlConnection = Nothing
        Dim objcmd As SqlCommand = Nothing

        objcon = New SqlConnection("Data Source=BCREMIT-011;Initial Catalog=Users;Integrated Security=True")
        objcon.Open()

        Dim stmt As String = "SELECT * FROM accounts WHERE email ='" & email.Text & "' AND password = '" & psw.Text & "'"
        objcmd = New SqlCommand(stmt, objcon)

        Dim reader As SqlDataReader = objcmd.ExecuteReader

        If reader.Read Then
            MsgBox("Login Successful!", MsgBoxStyle.Information, "Success")
            Response.Redirect("Dashboard.aspx")
        Else
            MsgBox("Email or password is incorrect", MsgBoxStyle.Information, "Critical")
        con.Close()
        End If

    End Sub
End Class






