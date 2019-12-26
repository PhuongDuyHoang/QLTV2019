Imports QLTVDTO
Imports QLTVBus
Imports Utility
Imports System.Drawing

''' <summary>
''' Giao diện thay đổi danh sách các quy định, thêm / xoá / sửa thể loại sách.
''' </summary>
Public Class ucThayDoiQuyDinh
    Dim tsBus As New ThamSoBus()
    Dim tlBus As New TheLoaiBUS()
    Dim tlsBus As New TheLoaiSachBUS()
    Dim result As New Result()
    Dim thamso As New ThamSoDTO
    Dim dstheloai As New List(Of TheLoaiDTO)


    Private Sub ucThayDoiQuyDinh_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Label1.ForeColor = Color.FromArgb(89, 94, 241)
        ' lấy danh sách quy định
        result = tsBus.selectALL(thamso)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách quy định không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        ' lấy danh sách thể loại
        result = tlBus.selectAll(dstheloai)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách thể loại không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        dstheloai.RemoveAt(0)

        ' thêm thể loại vào datagrid
        For Each i As TheLoaiDTO In dstheloai
            Dim s As String()
            s = New String() {i.MaTheLoai, i.TenTheLoai}
            dgDSTheLoai.Rows.Add(s)
        Next
        dgDSTheLoai.Columns("MaTheLoai").ReadOnly = True

        ' lấy tự động mã thể loại mới của datagrid
        Dim mx = 1
        For i As Integer = 0 To dgDSTheLoai.Rows.Count - 2
            Dim t = Convert.ToDecimal((dgDSTheLoai.Item(0, i).Value).Substring(2))
            If (mx < t) Then
                mx = t
            End If
        Next
        dgDSTheLoai.Item(0, dgDSTheLoai.Rows.Count - 1).Value = "TL" + (mx + 1).ToString

        ' truyền dữ liệu vào GUI
        nudTuoiToiThieu.Value = thamso.TuoiToiThieu
        nudTuoiToiDa.Value = thamso.TuoiToiDa
        nudThoiHanThe.Value = thamso.HanSuDung
        nudKhoangCachNam.Value = thamso.NamXuatBanToiThieu
        nudSachToiDa.Value = thamso.SoLuongSachMuonToiDa
        nudThoiGianToiDa.Value = thamso.ThoiGianMuonToiDa

    End Sub

    Private Sub btnLuuThayDoi_Click(sender As Object, e As EventArgs) Handles btnLuuThayDoi.Click
        Dim thamso As New ThamSoDTO
        Dim theloai As New TheLoaiDTO

        ' Thay doi tham so
        thamso.TuoiToiThieu = Convert.ToInt32(nudTuoiToiThieu.Value)
        thamso.TuoiToiDa = Convert.ToInt32(nudTuoiToiDa.Value)
        thamso.HanSuDung = Convert.ToInt32(nudThoiHanThe.Value)
        thamso.NamXuatBanToiThieu = Convert.ToInt32(nudKhoangCachNam.Value)
        thamso.SoLuongSachMuonToiDa = Convert.ToInt32(nudSachToiDa.Value)
        thamso.ThoiGianMuonToiDa = Convert.ToInt32(nudThoiGianToiDa.Value)

        result = tsBus.update(thamso)

        If (result.FlagResult = False) Then
            MessageBox.Show("Cập nhật quy định không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Return
        End If

        ' Thay doi danh sach the loai

        '' Tìm và xoá các TheLoaiSach có matheloai bị xoá đi trong dgDSTheLoai
        '' Vòng lặp tìm các matheloai đã bị xoá đi so với danh sách ban đầu
        For Each i As TheLoaiDTO In dstheloai
            Dim foundAt As New Integer()
            foundAt = -1
            For j As Integer = 0 To dgDSTheLoai.Rows.Count - 2
                If (dgDSTheLoai.Item(0, j).Value = i.MaTheLoai) Then
                    foundAt = j
                    If (dgDSTheLoai.Item(1, foundAt).Value <> i.TenTheLoai) Then ' Tìm thấy -> kiểm tra tên thể loại có thay đổi và cập nhật
                        result = tlBus.updateByMaTheLoai(i.MaTheLoai, dgDSTheLoai.Item(1, foundAt).Value)
                        If (result.FlagResult = False) Then
                            MessageBox.Show("Lỗi xảy ra khi cập nhật tên thể loại có mã " + i.MaTheLoai + ".
Cập nhật quy định thất bại!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
                            Return
                        End If
                    End If
                    Exit For
                End If
            Next

            If (foundAt = -1) Then ' Không tìm thấy -> Xoá hết các chi tiết thể loại có liên quan, sau đó xoá matheloai ở tblTheLoai luôn
                Console.WriteLine(i.MaTheLoai)
                result = tlsBus.deleteAllByMaTheLoai(i.MaTheLoai)
                If (result.FlagResult = False) Then
                    MessageBox.Show("Lỗi xảy ra khi xoá các chi tiết thể loại có mã " + i.MaTheLoai + ".
Cập nhật quy định thất bại!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
                    Return
                End If
                result = tlBus.deleteByMaTheLoai(i.MaTheLoai)
                If (result.FlagResult = False) Then
                    MessageBox.Show("Lỗi xảy ra khi xoá thể loại có mã " + i.MaTheLoai + ".
Cập nhật quy định thất bại!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
                    Return
                End If
            End If
        Next

        '' Thêm các thể loại mới
        '' Vòng lặp duyệt trong datagrid xem matheloai nào là mới và insert vào db
        For i As Integer = 0 To dgDSTheLoai.Rows.Count - 2
            Dim isfound As New Boolean()
            isfound = False
            For Each j As TheLoaiDTO In dstheloai
                If (dgDSTheLoai.Item(0, i).Value = j.MaTheLoai) Then
                    isfound = True ' Mã thể loại cũ
                    Exit For
                End If
            Next

            If (isfound = False) Then ' Mã thể loại mới
                result = tlBus.insert(New TheLoaiDTO(dgDSTheLoai.Item(0, i).Value, dgDSTheLoai.Item(1, i).Value))
                If (result.FlagResult = False) Then
                    MessageBox.Show("Lỗi xảy ra khi thêm thể loại có mã " + dgDSTheLoai.Item(0, i).Value + ".
Cập nhật quy định thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                    Return
                End If
            End If
        Next

        MessageBox.Show("Cập nhật quy định thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information)

        ' Gọi về ucThuVien
        Dim parent = New ucThayDoiQuyDinh
        parent = sender.Parent
        Dim grandpar = New FlowLayoutPanel
        grandpar = parent.Parent
        grandpar.Controls.Clear()
        Dim grgrpar = New frmHome
        grgrpar = grandpar.Parent
        grgrpar.btnThayDoiQuyDinh.selected = False
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
        ' Gọi về ucThuVien
        Dim parent = New ucThayDoiQuyDinh
        parent = sender.Parent
        Dim grandpar = New FlowLayoutPanel
        grandpar = parent.Parent
        grandpar.Controls.Clear()
        Dim grgrpar = New frmHome
        grgrpar = grandpar.Parent
        grgrpar.btnThayDoiQuyDinh.selected = False
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

    ' Hàm này dùng để điền số thứ tự tự động trong datagrid
    Private Sub dgDSTheLoai_RowPostPaint(sender As Object, e As DataGridViewRowPostPaintEventArgs) Handles dgDSTheLoai.RowPostPaint
        Using b As SolidBrush = New SolidBrush(dgDSTheLoai.RowHeadersDefaultCellStyle.ForeColor)
            e.Graphics.DrawString((e.RowIndex + 1).ToString(), dgDSTheLoai.DefaultCellStyle.Font, b, e.RowBounds.Location.X + 15, e.RowBounds.Location.Y + 2)
        End Using
    End Sub

    ' Hàm này có chức năng sinh giá trị matheloai mới cho datagrid khi một hàng mới được tạo
    Private Sub dgDSTheLoai_RowEnter(sender As Object, e As DataGridViewCellEventArgs) Handles dgDSTheLoai.RowEnter
        Dim mx = 1
        For i As Integer = 0 To dgDSTheLoai.Rows.Count - 2
            Dim t = Convert.ToDecimal((dgDSTheLoai.Item(0, i).Value).Substring(2))
            If (mx < t) Then
                mx = t
            End If
        Next
        dgDSTheLoai.Item(0, dgDSTheLoai.Rows.Count - 1).Value = "TL" + (mx + 1).ToString
    End Sub

    ' Hàm này có chức năng thông báo nhắc nhở khi người dùng muốn xoá một hàng trong datagrid
    Private Sub dgDSTheLoai_UserDeletingRow(sender As Object, e As DataGridViewRowCancelEventArgs) Handles dgDSTheLoai.UserDeletingRow
        If dgDSTheLoai.Rows.Count = 2 Then
            e.Cancel = MessageBox.Show("Danh sách thể loại không được trống!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning)
        Else
            e.Cancel = MessageBox.Show("Xoá thể loại gây ảnh hưởng tới các chi tiết thể loại sách có liên quan. Tiếp tục?", "Cảnh báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) <> DialogResult.OK
        End If
    End Sub

    ' Các hàm sau đây có chức năng thay đổi sang màu đỏ cho các vùng được focus tới
    ' Thay đổi thuộc tính Enabled cho nút Lưu
    Private Sub nudTuoiToiThieu_Enter(sender As Object, e As EventArgs) Handles nudTuoiToiThieu.Enter
        Label2.ForeColor = Drawing.Color.Red
        btnLuuThayDoi.Enabled = True
    End Sub

    Private Sub nudTuoiToiDa_Enter(sender As Object, e As EventArgs) Handles nudTuoiToiDa.Enter
        Label3.ForeColor = Drawing.Color.Red
        btnLuuThayDoi.Enabled = True

    End Sub

    Private Sub nudThoiHanThe_Enter(sender As Object, e As EventArgs) Handles nudThoiHanThe.Enter
        Label4.ForeColor = Drawing.Color.Red
        btnLuuThayDoi.Enabled = True
    End Sub

    Private Sub nudKhoangCachNam_Enter(sender As Object, e As EventArgs) Handles nudKhoangCachNam.Enter
        Label5.ForeColor = Drawing.Color.Red
        btnLuuThayDoi.Enabled = True
    End Sub

    Private Sub dgDSTheLoai_Enter(sender As Object, e As EventArgs) Handles dgDSTheLoai.Enter
        Label6.ForeColor = Drawing.Color.Red
        btnLuuThayDoi.Enabled = True
    End Sub

    Private Sub nudSachToiDa_Enter(sender As Object, e As EventArgs) Handles nudSachToiDa.Enter
        Label7.ForeColor = Drawing.Color.Red
        btnLuuThayDoi.Enabled = True
    End Sub

    Private Sub nudThoiGianToiDa_Enter(sender As Object, e As EventArgs) Handles nudThoiGianToiDa.Enter
        Label8.ForeColor = Drawing.Color.Red
        btnLuuThayDoi.Enabled = True
    End Sub
End Class
