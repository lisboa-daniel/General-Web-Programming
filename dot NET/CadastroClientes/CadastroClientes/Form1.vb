Public Class Form1
    Private Sub ClientesBindingNavigatorSaveItem_Click(sender As Object, e As EventArgs)
        Me.Validate()
        Me.ClientesBindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.DsClientes)

    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: esta linha de código carrega dados na tabela 'DsClientes.Clientes'. Você pode movê-la ou removê-la conforme necessário.
        Me.OdaClientes.Fill(Me.DsClientes.Clientes)
        ClientesBindingSource.Sort = "Código ASC"
        rdbNome.Checked = True


    End Sub

    Private Sub btnPrimeiro_Click(sender As Object, e As EventArgs) Handles btnPrimeiro.Click
        ClientesBindingSource.MoveFirst()

    End Sub

    Private Sub btnAnterior_Click(sender As Object, e As EventArgs) Handles btnAnterior.Click
        ClientesBindingSource.MovePrevious()
    End Sub

    Private Sub btnProximo_Click(sender As Object, e As EventArgs) Handles btnProximo.Click
        ClientesBindingSource.MoveNext()
    End Sub

    Private Sub btnUltimo_Click(sender As Object, e As EventArgs) Handles btnUltimo.Click
        ClientesBindingSource.MoveLast()

    End Sub

    Private Sub Desbloquear()
        txtNome.ReadOnly = False
        txtEnd.ReadOnly = False
        txtTel.ReadOnly = False
        txtNasc.ReadOnly = False
        rdbCod.Checked = False
        rdbNome.Checked = False
    End Sub

    Private Sub Bloquear()
        txtNome.ReadOnly = True
        txtEnd.ReadOnly = True
        txtTel.ReadOnly = True
        txtNasc.ReadOnly = True
        rdbCod.Checked = False
        rdbNome.Checked = False
    End Sub

    Private Sub btnEdit_Click(sender As Object, e As EventArgs) Handles btnEdit.Click
        Desbloquear()
    End Sub

    Private Sub ClientesBindingSource_PositionChanged(sender As Object, e As EventArgs) Handles ClientesBindingSource.PositionChanged
        lblREG.Text = ClientesBindingSource.Position + 1
        lblTOT.Text = ClientesBindingSource.Count
    End Sub

    Private Sub btnSair_Click(sender As Object, e As EventArgs) Handles btnSair.Click
        End
    End Sub

    Private Sub btnSalvar_Click(sender As Object, e As EventArgs) Handles btnSalvar.Click
        ClientesBindingSource.EndEdit()
        OdaClientes.Update(DsClientes)
        Bloquear()
        OdaClientes.Fill(DsClientes.Clientes)
    End Sub

    Private Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        ClientesBindingSource.CancelEdit()
        Bloquear()
    End Sub

    Private Sub btnExcluir_Click(sender As Object, e As EventArgs) Handles btnExcluir.Click
        ClientesBindingSource.RemoveCurrent()
    End Sub

    Private Sub btnIncluir_Click(sender As Object, e As EventArgs) Handles btnIncluir.Click
        ClientesBindingSource.AddNew()
        Desbloquear()
    End Sub

    Private Sub rdbCod_CheckedChanged(sender As Object, e As EventArgs) Handles rdbCod.CheckedChanged
        txtCod.ReadOnly = Not rdbCod.Checked
    End Sub

    Private Sub rdbNome_CheckedChanged(sender As Object, e As EventArgs) Handles rdbNome.CheckedChanged
        txtNome.ReadOnly = Not rdbNome.Checked
    End Sub

    Private Sub btnConsulta_Click(sender As Object, e As EventArgs) Handles btnConsulta.Click

        If (rdbCod.Checked) Then
            OdaClientes.FillByCod(DsClientes.Clientes, Convert.ToInt32(txtCod.Text))

        End If

        If (rdbNome.Checked) Then
            OdaClientes.FillByNome(DsClientes.Clientes, txtNome.Text)
        End If

    End Sub
End Class
