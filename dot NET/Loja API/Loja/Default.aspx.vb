Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btGerar_Click(sender As Object, e As EventArgs)
        Dim idTextBox As TextBox = FormView1.FindControl("IdTextBox")
        idTextBox.Text = Guid.NewGuid().ToString("D")
    End Sub
End Class