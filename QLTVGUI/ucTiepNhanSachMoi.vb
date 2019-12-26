Imports QLTVDTO
Imports QLTVBus
Imports Utility
Imports System.Drawing

Public Class ucTiepNhanSachMoi
    Private sachbus As New SachBUS()
    Private theloaibus As New TheLoaiBUS()
    Private theloaisachbus As New TheLoaiSachBUS()
    Private tacgiabus As New TacGiaBUS()
    Private tacgiasachbus As New TacGiaSachBUS()
    Private nhaxbbus As New NhaXuatBanBUS()
    Private listtheloai As New List(Of TheLoaiDTO)
    Private listtacgia As New List(Of TacGiaDTO)
    Private listnhaxb As New List(Of NhaXuatBanDTO)
    Private result As New Result()

    Private Sub ucTiepNhanSachMoi_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Label1.ForeColor = Color.FromArgb(89, 94, 241)
        tbTenSach.Focus()
        dtpNgayNhap.Value = Today

        ' lay ma sach tu dong
        Dim nextMaSach = "0"
        result = sachbus.get_masach(nextMaSach)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy tự động mã số sách thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Me.Dispose()
            Return
        End If
        lbMaSach.Text = nextMaSach

        ' Lay danh sach the loai

        result = theloaibus.selectAll(listtheloai)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách thể loại thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        listtheloai.RemoveAt(0)
        cbTheLoai.DataSource = New BindingSource(listtheloai, String.Empty)
        cbTheLoai.DisplayMember = "tentheloai"
        cbTheLoai.ValueMember = "matheloai"
        cbTheLoai.Text = ""

        ' Lay danh sach tac gia

        result = tacgiabus.selectAll(listtacgia)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách tác giả thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        listtacgia.RemoveAt(0)
        cbTacGia.DataSource = New BindingSource(listtacgia, String.Empty)
        cbTacGia.DisplayMember = "tentacgia"
        cbTacGia.ValueMember = "matacgia"
        cbTacGia.Text = ""

        ' Lay danh sach nha xuat ban

        result = nhaxbbus.selectAll(listnhaxb)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách nhà xuất bản thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        listnhaxb.RemoveAt(0)
        cbNhaXuatBan.DataSource = New BindingSource(listnhaxb, String.Empty)
        cbNhaXuatBan.DisplayMember = "tennhaxuatban"
        cbNhaXuatBan.ValueMember = "manhaxuatban"
        cbNhaXuatBan.Text = ""

        nudNamXuatBan.Value = Today.Year

    End Sub

    Private Sub btAddTheLoai_Click(sender As Object, e As EventArgs) Handles btAddTheLoai.Click
        If cbTheLoai.SelectedIndex > -1 Then
            If (clbDSTheLoai.Items.Contains(cbTheLoai.SelectedText) = False) Then
                clbDSTheLoai.Items.Add(cbTheLoai.SelectedText, True)
            End If
        End If
    End Sub

    Private Sub cbTheLoai_KeyDown(sender As Object, e As KeyEventArgs) Handles cbTheLoai.KeyDown
        If (e.KeyCode = Keys.Enter) Then
            If cbTheLoai.SelectedIndex > -1 Then
                If (clbDSTheLoai.Items.Contains(cbTheLoai.SelectedText) = False) Then
                    clbDSTheLoai.Items.Add(cbTheLoai.SelectedText, True)
                End If
            End If
        End If
    End Sub

    Private Sub btnAddTacGia_Click(sender As Object, e As EventArgs) Handles btnAddTacGia.Click
        If cbTacGia.SelectedIndex > -1 Then
            If (clbDSTacGia.Items.Contains(cbTacGia.SelectedText) = False) Then
                clbDSTacGia.Items.Add(cbTacGia.SelectedText, True)
            End If
        End If
    End Sub

    Private Sub cbTacGia_KeyDown(sender As Object, e As KeyEventArgs) Handles cbTacGia.KeyDown
        If (e.KeyCode = Keys.Enter) Then
            If cbTacGia.SelectedIndex > -1 Then
                If (clbDSTacGia.Items.Contains(cbTacGia.SelectedText) = False) Then
                    clbDSTacGia.Items.Add(cbTacGia.SelectedText, True)
                End If
            End If
        End If
    End Sub

    Private Function LuuSach() As Result
        Dim sach As New SachDTO

        '1. Mapping data from GUI control
        sach.MaSach = lbMaSach.Text
        sach.TenSach = tbTenSach.Text
        sach.MaNhaXuatBan = cbNhaXuatBan.SelectedValue.ToString()
        sach.NgayNhap = dtpNgayNhap.Value
        sach.TriGia = Convert.ToDecimal(tbTriGia.Text)
        sach.NamXuatBan = nudNamXuatBan.Value
        sach.MaDocGiaMuon = String.Empty
        sach.MaTrangThai = 1

        '2. Business .....
        If sachbus.isValidName(sach) = False Then
            MessageBox.Show("Tên sách không hợp lệ!")
            tbTenSach.Focus()
            Return New Result(False)
        End If

        If sachbus.isExpired(sach) = False Then
            MessageBox.Show("Năm xuất bản bị quá hạn!")
            nudNamXuatBan.Focus()
            Return New Result(False)
        End If

        If clbDSTheLoai.CheckedItems.Count = 0 Then
            MessageBox.Show("Thể loại không được trống!")
            Return New Result(False)
        End If

        If clbDSTacGia.CheckedItems.Count = 0 Then
            MessageBox.Show("Tác giả không được trống!")
            Return New Result(False)
        End If

        '3. Insert to DB
        '' Them tblSach
        result = sachbus.insert(sach)
        If (result.FlagResult = False) Then
            MessageBox.Show("Thêm thông tin sách thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return New Result(False)
        End If

        '' Them tblTheLoaiSach
        For i As Integer = 0 To clbDSTheLoai.CheckedItems.Count - 1
            Dim theloaisach As New TheLoaiSachDTO()
            ' lay thong tin ma sach
            theloaisach.MaSach = sach.MaSach
            ' lay thong tin ma the loai
            For Each j As TheLoaiDTO In listtheloai
                If j.TenTheLoai = clbDSTheLoai.CheckedItems(i) Then
                    theloaisach.MaTheLoai = j.MaTheLoai
                    Console.WriteLine(theloaisach.MaTheLoai)
                    Exit For
                End If
            Next

            ' luu thong tin vao tblTheLoaiSach
            '' tao ma the loai sach
            Dim matls = "0"
            result = theloaisachbus.build_matls(matls)
            If (result.FlagResult = False) Then
                MessageBox.Show("Tạo mã cho chi tiết thể loại sách thất bại!
Mã sách: " + theloaisach.MaSach + "
Mã thể loại: " + theloaisach.MaTheLoai, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
                System.Console.WriteLine(result.SystemMessage)
                Return New Result(False)
            End If

            theloaisach.MaTheLoaiSach = matls
            '' luu thong tin
            result = theloaisachbus.insert(theloaisach)
            If (result.FlagResult = False) Then
                MessageBox.Show("Lưu thông tin cho chi tiết thể loại sách thất bại!
Mã sách: " + theloaisach.MaSach + "
Mã thể loại: " + theloaisach.MaTheLoai, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
                System.Console.WriteLine(result.SystemMessage)
                Return New Result(False)
            End If
        Next

        '' Them tblTacGiaSach
        For i As Integer = 0 To clbDSTacGia.CheckedItems.Count - 1
            Dim tacgiasach As New TacGiaSachDTO()
            ' lay thong tin ma sach
            tacgiasach.MaSach = sach.MaSach
            ' lay thong tin ma tac gia
            For Each j As TacGiaDTO In listtacgia
                If j.TenTacGia = clbDSTacGia.CheckedItems(i) Then
                    tacgiasach.MaTacGia = j.MaTacGia
                    Console.WriteLine(tacgiasach.MaTacGia)
                    Exit For
                End If
            Next

            ' luu thong tin vao tblTacGiaSach
            '' tao ma tac gia sach
            Dim matgs = "0"
            result = tacgiasachbus.build_matgs(matgs)
            If (result.FlagResult = False) Then
                MessageBox.Show("Tạo mã cho chi tiết tác giả sách thất bại!
Mã sách: " + tacgiasach.MaSach + "
Mã tác giả: " + tacgiasach.MaTacGia, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                System.Console.WriteLine(result.SystemMessage)
                Return New Result(False)
            End If

            tacgiasach.MaTacGiaSach = matgs
            '' luu thong tin
            result = tacgiasachbus.insert(tacgiasach)
            If (result.FlagResult = False) Then
                MessageBox.Show("Lưu thông tin cho chi tiết tác giả sách thất bại!
Mã sách: " + tacgiasach.MaSach + "
Mã tác giả: " + tacgiasach.MaTacGia, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                System.Console.WriteLine(result.SystemMessage)
                Return New Result(False)
            End If
        Next


        ' Thanh cong
        MessageBox.Show("Thêm sách thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information)

        Return New Result(True)
    End Function

    Private Sub btnLuuVaThoat_Click(sender As Object, e As EventArgs) Handles btnLuuVaThoat.Click

        result = LuuSach()

        If result.FlagResult = True Then
            Dim parent = New ucTiepNhanSachMoi
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
        End If
    End Sub

    Private Sub btnLuu_Click(sender As Object, e As EventArgs) Handles btnLuu.Click

        result = LuuSach()

        If result.FlagResult = True Then
            ' lay ma sach moi tu dong
            Dim nextMaSach = "0"
            result = sachbus.get_masach(nextMaSach)
            If (result.FlagResult = False) Then
                MessageBox.Show("Lấy tự động mã số sách thất bại!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
                System.Console.WriteLine(result.SystemMessage)
                Me.Dispose()
                Return
            End If

            lbMaSach.Text = nextMaSach

            tbTenSach.Text = ""
            cbTheLoai.SelectedIndex = 0
            cbTheLoai.Text = ""
            clbDSTheLoai.Items.Clear()
            cbTacGia.SelectedIndex = 0
            cbTacGia.Text = ""
            clbDSTacGia.Items.Clear()
            cbNhaXuatBan.SelectedIndex = 0
            cbNhaXuatBan.Text = ""
            nudNamXuatBan.Value = Today.Year
            dtpNgayNhap.Value = Today
            tbTriGia.Text = "0"
            tbTenSach.Focus()
        End If
    End Sub

    Private Sub btnThoat_Click(sender As Object, e As EventArgs) Handles btnThoat.Click
        Dim parent = New ucTiepNhanSachMoi
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
