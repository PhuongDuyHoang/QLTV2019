Imports QLTVDTO
Imports QLTVBus
Imports Utility
Imports System.Drawing

Public Class ucLapTheDocGia
    Private dgBus As DocGiaBus
    Private ldgBus As LoaiDocGiaBus

    Private Sub ucLapTheDocGia_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Label1.ForeColor = Color.FromArgb(89, 94, 241)
        dtpNgayLapThe.Value = Today
        tbHoTen.Focus()

        dgBus = New DocGiaBus()
        Dim result As Result
        ldgBus = New LoaiDocGiaBus()

        ' Lay danh sach loai doc gia 
        Dim listLoaiDG = New List(Of LoaiDocGiaDTO)
        result = ldgBus.selectAll(listLoaiDG)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách loại độc giả không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        ' truyen vao combobox loaidocgia
        cbLoaiDocGia.DataSource = New BindingSource(listLoaiDG, String.Empty)
        cbLoaiDocGia.DisplayMember = "tenloaidocgia"
        cbLoaiDocGia.ValueMember = "maloaidocgia"

        ' Lay ma so doc gia tu dong
        Dim nextMaDG = "0"
        result = dgBus.buildMaDocGia(nextMaDG)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy tự động mã số độc giả không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Me.Dispose()
            Return
        End If

        lbMaDocGia.Text = nextMaDG

    End Sub

    Private Sub btnLuu_Click(sender As Object, e As EventArgs) Handles btnLuu.Click
        Dim docgia As DocGiaDTO
        docgia = New DocGiaDTO()

        '1. Mapping data from GUI control
        docgia.MaDocGia = lbMaDocGia.Text
        docgia.HoTen = tbHoTen.Text
        docgia.NgaySinh = dtpNgaySinh.Value
        docgia.DiaChi = tbDiaChi.Text
        docgia.Email = tbEmail.Text
        docgia.NgayLapThe = dtpNgayLapThe.Value
        docgia.MaLoaiDocGia = cbLoaiDocGia.SelectedValue.ToString()

        '2. Business .....
        If (dgBus.isValidName(docgia) = False) Then
            MessageBox.Show("Họ tên độc giả không hợp lệ!")
            tbHoTen.Focus()
            Return
        End If

        If (dgBus.isValidAge(docgia) = False) Then
            MessageBox.Show("Tuổi không hợp lệ!")
            dtpNgaySinh.Focus()
            Return
        End If

        If (dgBus.isValidAddress(docgia) = False) Then
            MessageBox.Show("Địa chỉ không được trống!")
            tbDiaChi.Focus()
            Return
        End If

        If (dgBus.isValidEmail(docgia) = False) Then
            MessageBox.Show("Email không hợp lệ!")
            tbEmail.Focus()
            Return
        End If

        If (dgBus.isValidDateAdded(docgia) = False) Then
            MessageBox.Show("Ngày lập thẻ không hợp lệ!")
            tbEmail.Focus()
            Return
        End If

        '3. Insert to DB
        Dim result As Result
        result = dgBus.insert(docgia)
        If (result.FlagResult = True) Then
            MessageBox.Show("Thêm độc giả thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information)

            ' Tao form them doc gia moi
            dgBus = New DocGiaBus()
            ldgBus = New LoaiDocGiaBus()

            ' Lay danh sach loai doc gia 
            Dim listLoaiDG = New List(Of LoaiDocGiaDTO)
            result = ldgBus.selectAll(listLoaiDG)
            If (result.FlagResult = False) Then
                MessageBox.Show("Lấy danh sách loại độc giả không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                System.Console.WriteLine(result.SystemMessage)
                Me.Dispose()
                Return
            End If
            cbLoaiDocGia.DataSource = New BindingSource(listLoaiDG, String.Empty)
            cbLoaiDocGia.DisplayMember = "tenloaidocgia"
            cbLoaiDocGia.ValueMember = "maloaidocgia"

            ' Lay ma so doc gia tu dong
            Dim nextMaDG = "0"
            result = dgBus.buildMaDocGia(nextMaDG)
            If (result.FlagResult = False) Then
                MessageBox.Show("Lấy tự động mã số độc giả không thành công!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
                System.Console.WriteLine(result.SystemMessage)
                Me.Dispose()
                Return
            End If

            ' Xoa thong tin cu
            lbMaDocGia.Text = nextMaDG
            tbHoTen.Text = String.Empty
            tbDiaChi.Text = String.Empty
            tbEmail.Text = String.Empty
            dtpNgaySinh.Value = New Date(2000, 1, 1, 0, 0, 0, 0)
            dtpNgayLapThe.Value = Today
            tbHoTen.Focus()

        Else
            MessageBox.Show("Thêm độc giả thất bại! Kiểm tra kết nối đến cơ sở dữ liệu.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
        End If
    End Sub

    Private Sub btnLuuVaThoat_Click(sender As Object, e As EventArgs) Handles btnLuuVaThoat.Click
        Dim docgia As DocGiaDTO
        docgia = New DocGiaDTO()

        '1. Mapping data from GUI control
        docgia.MaDocGia = lbMaDocGia.Text
        docgia.HoTen = tbHoTen.Text
        docgia.NgaySinh = dtpNgaySinh.Value
        docgia.DiaChi = tbDiaChi.Text
        docgia.Email = tbEmail.Text
        docgia.NgayLapThe = dtpNgayLapThe.Value
        docgia.MaLoaiDocGia = cbLoaiDocGia.SelectedValue.ToString()

        '2. Business .....
        If (dgBus.isValidName(docgia) = False) Then
            MessageBox.Show("Họ tên độc giả không hợp lệ!")
            tbHoTen.Focus()
            Return
        End If

        If (dgBus.isValidAge(docgia) = False) Then
            MessageBox.Show("Tuổi không hợp lệ!")
            dtpNgaySinh.Focus()
            Return
        End If

        If (dgBus.isValidAddress(docgia) = False) Then
            MessageBox.Show("Địa chỉ không được trống!")
            tbDiaChi.Focus()
            Return
        End If

        If (dgBus.isValidEmail(docgia) = False) Then
            MessageBox.Show("Email không hợp lệ!")
            tbEmail.Focus()
            Return
        End If

        If (dgBus.isValidDateAdded(docgia) = False) Then
            MessageBox.Show("Ngày lập thẻ không hợp lệ!")
            tbEmail.Focus()
            Return
        End If

        '3. Insert to DB
        Dim result As Result
        result = dgBus.insert(docgia)
        If (result.FlagResult = True) Then
            MessageBox.Show("Thêm độc giả thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information)
        Else
            MessageBox.Show("Thêm độc giả thất bại! Kiểm tra kết nối đến cơ sở dữ liệu.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
        End If

        ' clear fpnZone và gọi lại ucThuVien
        Dim parent = New ucLapTheDocGia
        parent = sender.Parent
        Dim grandpar = New FlowLayoutPanel
        grandpar = parent.Parent
        grandpar.Controls.Clear()
        Dim grgrpar = New frmHome
        grgrpar = grandpar.Parent
        grgrpar.btnLapTheDocGia.selected = False
        Dim ucThuVien As New ucThuVien
        grandpar.Controls.Add(ucThuVien)

        grgrpar.btnLapTheDocGia.selected = False
        grgrpar.btnTiepNhanSachMoi.selected = False
        grgrpar.btnTraCuuSach.selected = False
        grgrpar.btnChoMuonSach.selected = False
        grgrpar.btnNhanTraSach.selected = False
        grgrpar.btnLapBaoCao.selected = False
        grgrpar.btnThayDoiQuyDinh.selected = False
    End Sub

    Private Sub btnThoat_Click(sender As Object, e As EventArgs) Handles btnThoat.Click
        Dim parent = New ucLapTheDocGia
        parent = sender.Parent
        Dim grandpar = New FlowLayoutPanel
        grandpar = parent.Parent
        grandpar.Controls.Clear()
        Dim grgrpar = New frmHome
        grgrpar = grandpar.Parent
        grgrpar.btnLapTheDocGia.selected = False
        Dim ucThuVien As New ucThuVien
        grandpar.Controls.Add(ucThuVien)

        grgrpar.btnLapTheDocGia.selected = False
        grgrpar.btnTiepNhanSachMoi.selected = False
        grgrpar.btnTraCuuSach.selected = False
        grgrpar.btnChoMuonSach.selected = False
        grgrpar.btnNhanTraSach.selected = False
        grgrpar.btnLapBaoCao.selected = False
        grgrpar.btnThayDoiQuyDinh.selected = False
    End Sub

End Class
