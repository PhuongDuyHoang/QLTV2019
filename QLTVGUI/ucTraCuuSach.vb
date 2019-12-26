Imports QLTVDTO
Imports QLTVBus
Imports Utility
Imports System.Drawing
Imports System.IO
Imports iTextSharp.text
Imports iTextSharp.text.pdf

Public Class ucTraCuuSach
    Dim tlbus As New TheLoaiBUS
    Dim dstheloai As New List(Of TheLoaiDTO)
    Dim tgbus As New TacGiaBUS
    Dim dstacgia As New List(Of TacGiaDTO)
    Dim ttbus As New TrangThaiBUS
    Dim dstrangthai As New List(Of TrangThaiDTO)
    Dim sachbus As New SachBUS
    Dim tlsbus As New TheLoaiSachBUS
    Dim tgsbus As New TacGiaSachBUS
    Dim result As New Result

    Private Sub ucTraCuuSach_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Label1.ForeColor = Color.FromArgb(89, 94, 241)
        ' Lay danh sach the loai, tac gia, trang thai, nha xuat ban
        '' The loai
        result = tlbus.selectAll(dstheloai)
        If result.FlagResult = False Then
            MessageBox.Show("Lấy danh sách thể loại không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If
        dstheloai.ElementAt(0).TenTheLoai = "(Tất cả)"
        cbTheLoai.DataSource = New BindingSource(dstheloai, String.Empty)
        cbTheLoai.DisplayMember = "tentheloai"
        cbTheLoai.ValueMember = "matheloai"

        '' Tac gia
        result = tgbus.selectAll(dstacgia)
        If result.FlagResult = False Then
            MessageBox.Show("Lấy danh sách tác giả không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If
        dstacgia.ElementAt(0).TenTacGia = "(Tất cả)"
        cbTacGia.DataSource = New BindingSource(dstacgia, String.Empty)
        cbTacGia.DisplayMember = "tentacgia"
        cbTacGia.ValueMember = "matacgia"

        '' Tinh trang
        result = ttbus.selectAll(dstrangthai)
        If result.FlagResult = False Then
            MessageBox.Show("Lấy danh sách trạng thái không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If
        dstrangthai.ElementAt(0).TenTrangThai = "(Tất cả)"
        cbTinhTrang.DataSource = New BindingSource(dstrangthai, String.Empty)
        cbTinhTrang.DisplayMember = "tentrangthai"
        cbTinhTrang.ValueMember = "matrangthai"
    End Sub

    Private Sub btnTraCuu_Click(sender As Object, e As EventArgs) Handles btnTraCuu.Click
        dgDanhSachSach.Rows.Clear()

        Dim ketqua As New List(Of String)
        Dim timkiem As New List(Of String)


        ' lay tat ca cac ma sach
        result = sachbus.selectAll_MaSach("%", ketqua)
        If result.FlagResult = False Then
            MessageBox.Show("Lấy danh sách sách không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End If

        ' tim kiem theo ma sach
        If tbMaSach.Text.Length > 0 Then
            result = sachbus.selectAll_MaSach("%" + tbMaSach.Text + "%", timkiem)
            If result.FlagResult = False Then
                MessageBox.Show("Tìm kiếm theo mã sách không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Else
                findCommon(ketqua, timkiem) ' giao 2 list
            End If
        End If

        ' tim kiem theo ten sach
        If tbTenSach.Text.Length > 0 Then
            result = sachbus.selectAll_TenSach("%" + tbTenSach.Text + "%", timkiem)
            If result.FlagResult = False Then
                MessageBox.Show("Tìm kiếm theo tên sách không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Else
                findCommon(ketqua, timkiem)
            End If
        End If

        ' tim kiem theo the loai
        If cbTheLoai.SelectedIndex > 0 Then
            result = tlsbus.selectALL_MaTheLoai("%" + cbTheLoai.SelectedValue.ToString() + "%", timkiem)
            If result.FlagResult = False Then
                MessageBox.Show("Tìm kiếm theo thể loại không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Else
                findCommon(ketqua, timkiem)
            End If
        End If

        ' tim kiem theo tac gia
        If cbTacGia.SelectedIndex > 0 Then
            result = tgsbus.selectALL_MaTacGia("%" + cbTacGia.SelectedValue.ToString() + "%", timkiem)
            If result.FlagResult = False Then
                MessageBox.Show("Tìm kiếm theo tác giả không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Else
                findCommon(ketqua, timkiem)
            End If
        End If

        ' tim kiem theo trang thai
        If cbTinhTrang.SelectedIndex > 0 Then
            result = sachbus.selectAll_TrangThai("%" + cbTinhTrang.SelectedValue.ToString() + "%", timkiem)
            If result.FlagResult = False Then
                MessageBox.Show("Tìm kiếm theo trạng thái không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Else
                findCommon(ketqua, timkiem)
            End If
        End If

        If (ketqua.Count > 0) Then
            If ketqua.ElementAt(0) = "S0000000" Then
                ketqua.RemoveAt(0)
            End If
            If ketqua.Count > 0 Then
                showResult(ketqua)
            End If
        Else
            MessageBox.Show("Không tìm thấy kết quả nào thoả mãn!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If

    End Sub

    Private Sub findCommon(ketqua As List(Of String), timkiem As List(Of String))
        For i As Integer = ketqua.Count - 1 To 0 Step -1
            If timkiem.Contains(ketqua(i)) = False Then
                ketqua.RemoveAt(i)
            End If
        Next
    End Sub

    Private Sub showResult(ketqua As List(Of String))
        For i As Integer = 0 To ketqua.Count - 1
            Dim masach = ketqua.ElementAt(i)

            Dim tensach = ""
            result = sachbus.get_TenSach_ByMaSach(masach, tensach)
            If result.FlagResult = False Then
                MessageBox.Show("Tìm kiếm thông tin tên của mã sách " + masach + " không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If

            Dim trangthai = ""
            result = sachbus.get_TrangThai_ByMaSach(masach, trangthai)
            If result.FlagResult = False Then
                MessageBox.Show("Tìm kiếm thông tin trạng thái của mã sách " + masach + " không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If

            Dim listTheLoai As New List(Of String)
            Dim theloai = ""
            result = tlsbus.getTenTheLoai_ByMaSach(masach, listTheLoai)
            If result.FlagResult = False Then
                MessageBox.Show("Tìm kiếm thông tin thể loại của mã sách " + masach + " không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Else
                For j As Integer = 0 To listTheLoai.Count - 1
                    theloai = theloai + listTheLoai.ElementAt(j)
                    If j < listTheLoai.Count - 1 Then
                        theloai = theloai + ", "
                    End If
                Next
            End If

            Dim listTacGia As New List(Of String)
            Dim tacgia = ""
            result = tgsbus.get_TenTacGia_ByMaSach(masach, listTacGia)
            If result.FlagResult = False Then
                MessageBox.Show("Tìm kiếm thông tin tác giả của mã sách " + masach + " không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Else
                For j As Integer = 0 To listTacGia.Count - 1
                    tacgia = tacgia + listTacGia.ElementAt(j)
                    If j < listTacGia.Count - 1 Then
                        tacgia = tacgia + ", "
                    End If
                Next
            End If

            Dim s As String()
            s = New String() {masach, tensach, theloai, tacgia, trangthai}
            dgDanhSachSach.Rows.Add(s)
        Next

    End Sub

    Private Sub dgDanhSachSach_RowPostPaint(sender As Object, e As DataGridViewRowPostPaintEventArgs) Handles dgDanhSachSach.RowPostPaint
        Using b As SolidBrush = New SolidBrush(dgDanhSachSach.RowHeadersDefaultCellStyle.ForeColor)
            e.Graphics.DrawString((e.RowIndex + 1).ToString(), dgDanhSachSach.DefaultCellStyle.Font, b, e.RowBounds.Location.X + 10, e.RowBounds.Location.Y + 2)
        End Using
    End Sub

    Private Sub btnThoat_Click(sender As Object, e As EventArgs) Handles btnThoat.Click
        Dim parent As ucTraCuuSach
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

    Private Sub btnXuatKetQua_Click(sender As Object, e As EventArgs) Handles btnXuatKetQua.Click

        Try
            Dim path As String = "\tracuu.pdf"
            Dim myFont As String = "C:\Windows\Fonts\Calibri.ttf"

            ' open folder browser
            Using fbd As New FolderBrowserDialog()
                Dim rs As New DialogResult()
                rs = fbd.ShowDialog

                If rs = DialogResult.OK And Not String.IsNullOrWhiteSpace(fbd.SelectedPath) Then
                    path = fbd.SelectedPath.ToString() + path
                Else
                    Return
                End If
            End Using


            ' dinh dang file
            Dim doc As Document = New iTextSharp.text.Document(PageSize.LETTER, 30, 30, 50, 50)
            Dim wrtr As PdfWriter = PdfWriter.GetInstance(doc, New FileStream(path, FileMode.Create))

            ' mo file
            doc.Open()
            doc.NewPage()

            ' font chu, mau sac
            Dim bfR As BaseFont = BaseFont.CreateFont(myFont, BaseFont.IDENTITY_H, BaseFont.EMBEDDED)
            Dim clrBlack As BaseColor = New BaseColor(0, 0, 0)

            Dim fntTitle As iTextSharp.text.Font = New iTextSharp.text.Font(bfR, 16, iTextSharp.text.Font.BOLD, clrBlack)
            Dim fntHead As iTextSharp.text.Font = New iTextSharp.text.Font(bfR, 12, iTextSharp.text.Font.BOLD, clrBlack)
            Dim fntHead2 As iTextSharp.text.Font = New iTextSharp.text.Font(bfR, 12, iTextSharp.text.Font.ITALIC, clrBlack)
            Dim fntNormal As iTextSharp.text.Font = New iTextSharp.text.Font(bfR, 12, iTextSharp.text.Font.NORMAL, clrBlack)

            ' title
            Dim title As New Paragraph(New Chunk("KẾT QUẢ TRA CỨU SÁCH", fntTitle))
            title.Alignment = Element.ALIGN_CENTER
            title.SpacingAfter = 50.0F
            doc.Add(title)

            ' thong so
            Dim properties As New Paragraph("Thông số tìm kiếm:", fntHead)
            properties.SpacingAfter = 10.0F
            doc.Add(properties)

            Dim s As String = Nothing

            '' ma sach
            s = "- Mã sách: "
            If tbMaSach.Text.Length > 0 Then
                s += "'" + tbMaSach.Text + "'"
            Else
                s += "(Tất cả)"
            End If

            doc.Add(New Paragraph(s, fntNormal))

            '' ten sach 
            s = "- Tên sách: "
            If tbTenSach.Text.Length > 0 Then
                s += "'" + tbTenSach.Text + "'"
            Else
                s += "(Tất cả)"
            End If

            doc.Add(New Paragraph(s, fntNormal))

            '' tac gia
            s = "- Tác giả: "
            If cbTacGia.SelectedIndex > 0 Then
                s += "'" + cbTacGia.Text + "'"
            Else
                s += "(Tất cả)"
            End If

            doc.Add(New Paragraph(s, fntNormal))

            '' the loai
            s = "- Thể loại: "
            If cbTheLoai.SelectedIndex > 0 Then
                s += "'" + cbTheLoai.Text + "'"
            Else
                s += "(Tất cả)"
            End If

            doc.Add(New Paragraph(s, fntNormal))

            '' trang thai
            s = "- Trạng thái: "
            If cbTinhTrang.SelectedIndex = 2 Then
                s += "'Đã mượn'"
            ElseIf cbTinhTrang.SelectedIndex = 1 Then
                s += "'Còn sách'"
            Else
                s += "(Tất cả)"
            End If

            doc.Add(New Paragraph(s, fntNormal))


            ' datagrid
            '' width
            Dim ketqua As New Paragraph("Kết quả tìm kiếm: ", fntHead)
            ketqua.SpacingBefore = 20.0F
            ketqua.SpacingAfter = 20.0F
            doc.Add(ketqua)

            Dim pdftable As New PdfPTable(dgDanhSachSach.Columns.Count)
            pdftable.TotalWidth = 550.0F
            pdftable.LockedWidth = True

            '' set width for columns
            Dim widths(0 To dgDanhSachSach.Columns.Count - 1) As Single
            For i As Integer = 0 To dgDanhSachSach.Columns.Count - 1
                widths(i) = 1.0F * (dgDanhSachSach.Columns(i).Width / 600.0F)
            Next

            pdftable.SetWidths(widths)
            pdftable.HorizontalAlignment = 0

            '''''

            ' header on datagrid
            Dim pdfcell As PdfPCell = New PdfPCell
            For i As Integer = 0 To dgDanhSachSach.Columns.Count - 1
                pdfcell = New PdfPCell(New Phrase(New Chunk(dgDanhSachSach.Columns(i).HeaderText, fntHead2)))
                pdfcell.HorizontalAlignment = PdfPCell.ALIGN_LEFT
                pdftable.AddCell(pdfcell)
            Next


            ''''
            ' rows on datagrid
            For i As Integer = 0 To dgDanhSachSach.Rows.Count - 1
                For j As Integer = 0 To dgDanhSachSach.Columns.Count - 1
                    pdfcell = New PdfPCell(New Phrase(dgDanhSachSach(j, i).Value.ToString(), fntNormal))
                    pdftable.HorizontalAlignment = PdfPCell.ALIGN_LEFT
                    pdftable.AddCell(pdfcell)
                Next
            Next

            ''''
            doc.Add(pdftable)



            ' ngay tao
            Dim ngay As New Paragraph("Ngày tạo: " + Today.Day.ToString() + "/" + Today.Month.ToString() + "/" + Today.Year.ToString(), fntNormal)
            ngay.Alignment = Element.ALIGN_RIGHT
            ngay.SpacingBefore = 50.0F

            doc.Add(ngay)

            ' close
            doc.Close()

            MessageBox.Show("Xuất kết quả tìm kiếm thành công!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Return

        Catch ex As Exception
            MessageBox.Show("Xuất kết quả tìm kiếm thất bại!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Return
        End Try

    End Sub
End Class
