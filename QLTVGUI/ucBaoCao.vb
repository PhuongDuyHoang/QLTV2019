Public Class ucBaoCao
    Private Sub btnBaoCaoSachMuon_Click(sender As Object, e As EventArgs) Handles btnBaoCaoSachMuon.Click
        Me.Controls.Clear()
        Dim ucBaoCaoSachMuon As New ucBaoCaoSachMuon
        Me.Controls.Add(ucBaoCaoSachMuon)
        ucBaoCaoSachMuon.BringToFront()
    End Sub

    Private Sub btnBaoCaoSachTre_Click(sender As Object, e As EventArgs) Handles btnBaoCaoSachTre.Click
        Me.Controls.Clear()
        Dim ucBaoCaoSachTre As New ucBaoCaoSachTre
        Me.Controls.Add(ucBaoCaoSachTre)
        ucBaoCaoSachTre.BringToFront()
    End Sub
End Class
