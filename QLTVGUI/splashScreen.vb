Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports QLTVBus
Imports Utility

Public Class splashScreen

    Public SqlConn As New SqlConnection With {.ConnectionString = ConfigurationManager.AppSettings("ConnectionString")}
    Dim tkBus As New TaiKhoanBus
    Dim result As New Result

    Public Function checkConnection() As Boolean
        Try
            SqlConn.Open()
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function

    Private Sub splashScreen_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        pnDangNhap.Width = 0
        tbMatKhauMoi.Visible = False
        tbNhapLaiMatKhauMoi.Visible = False
        btnOK.Visible = False
        lbTrangThaiMK.Text = ""
        lbTroVe.Visible = False
        tbMaDangNhap.Focus()

        Timer1.Interval = 1
        Timer1.Start()
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If progressBar.Value < 100 Then
            progressBar.Value += 1
        Else
            Timer1.Stop()

            If checkConnection() = True Then
                pnDangNhap.Width = 307
                pnLogo.Location = New Drawing.Point(155, 138)
                lbStatus.Text = "Kết nối thành công!"
                Timer2.Interval = 1000
                Timer2.Start()
                progressBar.Visible = False

            Else
                MessageBox.Show("Kết nối thất bại! Vui lòng kiểm tra lại cài đặt cơ sở dữ liệu.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                Close()
            End If
        End If
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        lbStatus.Visible = False
    End Sub

    Private Sub btnDocGia_Click(sender As Object, e As EventArgs) Handles btnDocGia.Click
        Me.Hide()
        Dim home As New frmHome
        home.Show()
        home.btnLapTheDocGia.Enabled = False
        home.dot1.Visible = False
        home.btnTiepNhanSachMoi.Enabled = False
        home.dot2.Visible = False
        home.btnChoMuonSach.Enabled = False
        home.dot4.Visible = False
        home.btnNhanTraSach.Enabled = False
        home.dot5.Visible = False
        home.btnLapBaoCao.Enabled = False
        home.dot6.Visible = False
        home.btnThayDoiQuyDinh.Enabled = False
        home.dot7.Visible = False
        datTenCheDo(home)
    End Sub

    Private Sub lbThoat_MouseHover(sender As Object, e As EventArgs) Handles lbThoat.MouseHover
        lbThoat.ForeColor = Drawing.Color.FromArgb(CType(CType(45, Byte), Integer), CType(CType(180, Byte), Integer), CType(CType(211, Byte), Integer))
    End Sub

    Private Sub lbThoat_MouseLeave(sender As Object, e As EventArgs) Handles lbThoat.MouseLeave
        lbThoat.ForeColor = Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer))
    End Sub

    Private Sub lbThoat_Click(sender As Object, e As EventArgs) Handles lbThoat.Click
        Application.Exit()
    End Sub

    Private Sub tbMaDangNhap_MouseClick(sender As Object, e As MouseEventArgs) Handles tbMaDangNhap.MouseClick
        lbStatus.Visible = False
    End Sub

    Private Sub lbDoiMatKhau_MouseHover(sender As Object, e As EventArgs) Handles lbDoiMatKhau.MouseHover
        lbDoiMatKhau.ForeColor = Drawing.Color.FromArgb(CType(CType(45, Byte), Integer), CType(CType(180, Byte), Integer), CType(CType(211, Byte), Integer))
    End Sub

    Private Sub lbDoiMatKhau_MouseLeave(sender As Object, e As EventArgs) Handles lbDoiMatKhau.MouseLeave
        lbDoiMatKhau.ForeColor = Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer))
    End Sub

    Private Sub lbTroVe_MouseHover(sender As Object, e As EventArgs) Handles lbTroVe.MouseHover
        lbTroVe.ForeColor = Drawing.Color.FromArgb(CType(CType(45, Byte), Integer), CType(CType(180, Byte), Integer), CType(CType(211, Byte), Integer))
    End Sub

    Private Sub lbTroVe_MouseLeave(sender As Object, e As EventArgs) Handles lbTroVe.MouseLeave
        lbTroVe.ForeColor = Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer))
    End Sub

    Private Sub lbTroVe_Click(sender As Object, e As EventArgs) Handles lbTroVe.Click
        btnDocGia.Visible = True
        btnDangNhap.Visible = True
        lbDoiMatKhau.Visible = True

        tbMatKhauMoi.Visible = False
        tbNhapLaiMatKhauMoi.Visible = False
        btnOK.Visible = False
        lbTroVe.Visible = False

        tbMaDangNhap.Text = ""
        tbMatKhau.Text = ""
        tbMatKhauMoi.Text = ""
        tbNhapLaiMatKhauMoi.Text = ""
        lbTrangThaiMK.Text = ""
    End Sub

    Private Sub lbDoiMatKhau_Click(sender As Object, e As EventArgs) Handles lbDoiMatKhau.Click
        btnDocGia.Visible = False
        btnDangNhap.Visible = False
        lbDoiMatKhau.Visible = False

        tbMatKhauMoi.Visible = True
        tbNhapLaiMatKhauMoi.Visible = True
        btnOK.Visible = True
        lbTroVe.Visible = True

        tbMaDangNhap.Text = ""
        tbMatKhau.Text = ""
        tbMatKhauMoi.Text = ""
        tbNhapLaiMatKhauMoi.Text = ""
        lbTrangThaiMK.Text = ""
    End Sub

    Private Sub btnDangNhap_Click(sender As Object, e As EventArgs) Handles btnDangNhap.Click
        If tbMaDangNhap.Text.Length = 0 Then
            lbTrangThaiMK.Text = "Mã đăng nhập không hợp lệ!"
            Return
        End If

        If tbMatKhau.Text.Length = 0 Then
            lbTrangThaiMK.Text = "Nhập mật khẩu!"
            Return
        End If

        Dim ok As New Boolean
        ok = False
        Dim type As New Integer
        type = 0

        result = tkBus.kiemTra(tbMaDangNhap.Text, tbMatKhau.Text, ok, type)
        If result.FlagResult = False Then
            MessageBox.Show("Lỗi truy xuất dữ liệu!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            tbMaDangNhap.Focus()
            Return
        End If

        If ok = True Then ' mat khau dung
            If type = 1 Then ' admin
                Me.Hide()
                Dim home As New frmHome
                home.Show()
                datTenCheDo(home)
            Else ' thu thu
                Me.Hide()
                Dim home As New frmHome
                home.Show()
                home.btnThayDoiQuyDinh.Enabled = False
                home.dot7.Visible = False
                datTenCheDo(home)
            End If
        Else
            lbTrangThaiMK.Text = "Mã đăng nhập hoặc mật khẩu không đúng!"
        End If

    End Sub

    Private Sub btnOK_Click(sender As Object, e As EventArgs) Handles btnOK.Click
        If tbMaDangNhap.Text.Length = 0 Then
            lbTrangThaiMK.Text = "Nhập mã đăng nhập!"
            Return
        End If

        If tbMatKhau.Text.Length = 0 Then
            lbTrangThaiMK.Text = "Nhập mật khẩu!"
            Return
        End If

        If tbMatKhauMoi.Text.Length = 0 Then
            lbTrangThaiMK.Text = "Nhập mật khẩu mới!"
            Return
        End If

        If tbNhapLaiMatKhauMoi.Text.Length = 0 Then
            lbTrangThaiMK.Text = "Xác nhận mật khẩu mới!"
            Return
        End If

        If tbMatKhauMoi.Text <> tbNhapLaiMatKhauMoi.Text Then
            lbTrangThaiMK.Text = "Mật khẩu nhập lại không khớp!"
            Return
        End If


        Dim ok As New Boolean
        ok = False
        Dim type As New Integer
        type = 0

        result = tkBus.kiemTra(tbMaDangNhap.Text, tbMatKhau.Text, ok, type)
        If result.FlagResult = False Then
            MessageBox.Show("Lỗi truy xuất dữ liệu!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            tbMaDangNhap.Focus()
            Return
        End If

        If ok = True Then ' mat khau dung
            ok = True
            result = tkBus.update(tbMaDangNhap.Text, tbMatKhauMoi.Text, ok)
            If result.FlagResult = False Then
                MessageBox.Show("Lỗi truy xuất dữ liệu!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                tbMaDangNhap.Focus()
                Return
            End If

            If ok = True Then
                lbTrangThaiMK.Text = "Đổi mật khẩu thành công!"
            Else
                lbTrangThaiMK.Text = "Đổi mật khẩu thất bại!"
            End If
        Else
            lbTrangThaiMK.Text = "Mã đăng nhập hoặc mật khẩu không đúng!"
        End If

        tbMaDangNhap.Text = ""
        tbMatKhau.Text = ""
        tbMatKhauMoi.Text = ""
        tbNhapLaiMatKhauMoi.Text = ""
    End Sub

    Private Sub datTenCheDo(ByRef home As frmHome)
        If home.btnLapTheDocGia.Enabled = False Then
            home.lbTrangThai.Text = "Quyền truy cập: Độc Giả"
        ElseIf home.btnThayDoiQuyDinh.Enabled = False Then
            home.lbTrangThai.Text = "Quyền truy cập: Nhân Viên"
        Else
            home.lbTrangThai.Text = "Quyền truy cập: ADMIN"
        End If
    End Sub

    Private Sub tbMatKhau_MouseHover(sender As Object, e As EventArgs) Handles tbMatKhau.MouseHover
        Dim ToolTip1 As ToolTip = New ToolTip()
        ToolTip1.SetToolTip(Me.tbMatKhau, "Nhập mật khẩu")
    End Sub

    Private Sub tbMatKhauMoi_MouseHover(sender As Object, e As EventArgs) Handles tbMatKhauMoi.MouseHover
        Dim ToolTip1 As ToolTip = New ToolTip()
        ToolTip1.SetToolTip(Me.tbMatKhauMoi, "Nhập mật khẩu mới")
    End Sub

    Private Sub tbNhapLaiMatKhauMoi_MouseHover(sender As Object, e As EventArgs) Handles tbNhapLaiMatKhauMoi.MouseHover
        Dim ToolTip1 As ToolTip = New ToolTip()
        ToolTip1.SetToolTip(Me.tbNhapLaiMatKhauMoi, "Xác nhận mật khẩu mới")
    End Sub


End Class
