Imports System.Windows.Forms

Public Class frmHome
    Private Sub frmHome_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        fpnZone.Controls.Clear()
        Dim ucThuVien As New ucThuVien
        fpnZone.Controls.Add(ucThuVien)
    End Sub

    Private Sub ibtnExit_Click(sender As Object, e As EventArgs) Handles ibtnExit.Click
        Dim result As Integer = MessageBox.Show("Bạn có muốn tắt ứng dụng quản lý thư viện?", "Thông báo", MessageBoxButtons.YesNo)
        If result = DialogResult.Yes Then
            Application.Exit()
        End If
    End Sub

    Private Sub ibtnMinimize_Click(sender As Object, e As EventArgs) Handles ibtnMinimize.Click
        Me.WindowState = FormWindowState.Minimized
    End Sub

    Private Sub btnLapTheDocGia_Click(sender As Object, e As EventArgs) Handles btnLapTheDocGia.Click
        fpnZone.Controls.Clear()
        Dim ucLapTheDocGia As New ucLapTheDocGia
        fpnZone.Controls.Add(ucLapTheDocGia)
    End Sub

    Private Sub btnTiepNhanSachMoi_Click(sender As Object, e As EventArgs) Handles btnTiepNhanSachMoi.Click
        fpnZone.Controls.Clear()
        Dim ucTiepNhanSachMoi As New ucTiepNhanSachMoi
        fpnZone.Controls.Add(ucTiepNhanSachMoi)
    End Sub

    Private Sub btnTraCuuSach_Click(sender As Object, e As EventArgs) Handles btnTraCuuSach.Click
        fpnZone.Controls.Clear()
        Dim ucTraCuuSach As New ucTraCuuSach
        fpnZone.Controls.Add(ucTraCuuSach)
    End Sub

    Private Sub btnChoMuonSach_Click(sender As Object, e As EventArgs) Handles btnChoMuonSach.Click
        fpnZone.Controls.Clear()
        Dim ucChoMuonSach As New ucChoMuonSach
        fpnZone.Controls.Add(ucChoMuonSach)
    End Sub

    Private Sub btnNhanTraSach_Click(sender As Object, e As EventArgs) Handles btnNhanTraSach.Click
        fpnZone.Controls.Clear()
        Dim ucNhanTraSach As New ucNhanTraSach
        fpnZone.Controls.Add(ucNhanTraSach)
    End Sub

    Private Sub btnLapBaoCao_Click(sender As Object, e As EventArgs) Handles btnLapBaoCao.Click
        fpnZone.Controls.Clear()
        Dim ucBaoCao As New ucBaoCao
        fpnZone.Controls.Add(ucBaoCao)
    End Sub

    Private Sub btnThayDoiQuyDinh_Click(sender As Object, e As EventArgs) Handles btnThayDoiQuyDinh.Click
        fpnZone.Controls.Clear()
        Dim ucThayDoiQuyDinh As New ucThayDoiQuyDinh
        fpnZone.Controls.Add(ucThayDoiQuyDinh)
    End Sub

    Private Sub btnLogo_Click(sender As Object, e As EventArgs) Handles btnLogo.Click
        fpnZone.Controls.Clear()
        Dim ucThuVien As New ucThuVien
        fpnZone.Controls.Add(ucThuVien)
        UnSelectedAll()
    End Sub

    Private Sub UnSelectedAll()
        btnLapTheDocGia.selected = False
        btnTiepNhanSachMoi.selected = False
        btnTraCuuSach.selected = False
        btnChoMuonSach.selected = False
        btnNhanTraSach.selected = False
        btnLapBaoCao.selected = False
        btnThayDoiQuyDinh.selected = False
    End Sub

    Private Sub lbThayDoi_MouseHover(sender As Object, e As EventArgs) Handles lbThayDoi.MouseHover
        lbThayDoi.ForeColor = Drawing.Color.FromArgb(CType(CType(220, Byte), Integer), CType(CType(20, Byte), Integer), CType(CType(60, Byte), Integer))
    End Sub

    Private Sub lbThayDoi_MouseLeave(sender As Object, e As EventArgs) Handles lbThayDoi.MouseLeave
        lbThayDoi.ForeColor = Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer), CType(CType(192, Byte), Integer))
    End Sub

    Private Sub lbThayDoi_Click(sender As Object, e As EventArgs) Handles lbThayDoi.Click
        Me.Hide()

        Dim splash As New splashScreen
        splash.Show()
    End Sub
End Class