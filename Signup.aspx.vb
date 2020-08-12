Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException


Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim cmdInsert As New SqlCommand
        Dim dr As SqlDataReader

        con.ConnectionString = "Data Source=BCREMIT-011;Initial Catalog=Users;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "SELECT * FROM accounts WHERE email = '" & email.Text & "' "
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            MsgBox("Email has already taken. Please use other Email.", MsgBoxStyle.Critical)
            email.Text = ""
            con.Close()
        Else
            con.Close()
            con.Open()

            cmdInsert.Connection = con
            cmdInsert.CommandText = "INSERT INTO accounts (fname,lname,email,password) VALUES('" & fname.Text & "','" & lname.Text & "','" & email.Text & "','" & psw.Text & "')"
            cmdInsert.ExecuteNonQuery()

            MsgBox("You are Registered! Please Log-in", MsgBoxStyle.Information, "Success")
            Response.Redirect("Login.aspx")
            con.Close()

        End If

    End Sub
End Class