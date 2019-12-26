Imports QLTVDTO
Imports QLTVBus
Imports Utility
Imports System.Drawing
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports System.IO

Public Class ucChoMuonSach
    Private dgBus As DocGiaBus
    Private pmsBUS As PhieuMuonSachBus
    Private ctpmBUS As ChiTietPhieuMuonBus
    Private sachBUS As SachBUS
    Private tsBUS As ThamSoBus

    ' Form load
    Private Sub ucChoMuonSach_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        dgBus = New DocGiaBus()
        pmsBUS = New PhieuMuonSachBus()
        ctpmBUS = New ChiTietPhieuMuonBus()
        sachBUS = New SachBUS()
        tsBUS = New ThamSoBus()
        Dim result As Result

        Label1.ForeColor = Color.FromArgb(89, 94, 241)

        'Load info doc gia
        Dim listDG = New List(Of DocGiaDTO)
        result = dgBus.selectAll(listDG)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách độc giả không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        'Lay ma so tu dong
        Dim nextMS = "0"
        result = pmsBUS.build_maphieumuon(nextMS)
        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy tự động mã phiếu mượn sách không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Me.Dispose()
            Return
        End If
        lbMaPMS.Text = nextMS

        clearInfo()
        lbNgayMuon.Text = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString()

        Me.dgDSSachMuon.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
    End Sub

    ' Xet su kien nhap phim
    Private Sub tbMaDocGia_KeyDown(sender As Object, e As KeyEventArgs) Handles tbMaDocGia.KeyDown
        tbMaDocGia.Font = New Drawing.Font("Segoe UI", 12, FontStyle.Italic)
        tbMaDocGia.ForeColor = Color.Black

        ' Lay ma doc gia tu textbox
        If (e.KeyCode = Keys.Enter) Then
            ' Textbox khong duoc bo trong
            If (tbMaDocGia.Text.Length < 1) Then
                MessageBox.Show("Vui lòng nhập vào mã thẻ độc giả!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                tbMaDocGia.Focus()
                Return
            End If
            Dim isTrue As Boolean = True
            clearInfo()
            tbMaDocGia.Font = New Drawing.Font("Segoe UI", 12, FontStyle.Regular)
            tbMaDocGia.ForeColor = Color.Gray
            getInfo(tbMaDocGia.Text, isTrue)

            ' Kiem tra ma doc gia nhap vao 
            If isTrue = False Then
                MessageBox.Show("Độc giả không tồn tại. Vui lòng kiểm tra lại mã độc giả!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                tbMaDocGia.Focus()
                clearInfo()
                Return
            End If

            ' Kiem tra xem the co muon sach qua han hay khong
            Dim isValid As Boolean
            isValid = theHopLe()
            If (isValid = False) Then
                MessageBox.Show("Quý khách không thể mượn thêm sách vì có sách mượn quá hạn. " +
                                 "Vui lòng trả sách trước khi mượn thêm sách mới!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                tbMaSach.Enabled = False
                btnThemMaSach.Enabled = False
                btnXuatPhieuMuon.Enabled = False
            Else
                tbMaSach.Enabled = True
                btnThemMaSach.Enabled = True
                btnXuatPhieuMuon.Enabled = True
            End If
        End If

    End Sub

    ' Ham lay gia tri cho GUI
    Private Function getInfo(madocgia As String, ByRef isTrue As Boolean) As Result
        Dim tendocgia As String = String.Empty
        Dim ngaylapthe As New DateTime
        Dim listMaSach As New List(Of String)
        Dim listTenSach As New List(Of String)
        Dim listNgayMuon As New List(Of DateTime)

        ' Truy van du lieu tu database
        Dim result As New Result
        result = sachBUS.findWithMaDG(madocgia, listMaSach)
        Dim res As New Result
        res = dgBus.findWithMaDG(madocgia, tendocgia, ngaylapthe)

        If tendocgia.Length < 1 Then
            isTrue = False
            Return New Result(False)
        End If

        For i As Integer = 0 To listMaSach.Count - 1
            Dim res1 As New Result
            Dim tensach As String = String.Empty
            Dim ngaymuon As New DateTime
            res1 = sachBUS.findDetailWithMaSach(listMaSach(i), tensach, ngaymuon)
            listTenSach.Add(tensach)
            listNgayMuon.Add(ngaymuon)
        Next

        ' Truyen gia tri vao GUI
        If (tinhTrang(DateTime.Now, ngaylapthe) = False) Then
            If MessageBox.Show("Thẻ độc giả của quý khách đã quá hạn, vui lòng lập thẻ độc giả mới!", "Lỗi",
                               MessageBoxButtons.OK, MessageBoxIcon.Error) = DialogResult.OK Then
                tbMaDocGia.Focus()
                Return New Result(False)
            End If
        End If

        If (tinhTrang(DateTime.Now, ngaylapthe) = True) Then
            lbTinhTrang.Text = "Thẻ khả dụng"
        End If

        lbHoTen.Text = tendocgia
        lbNgayLap.Text = ngaylapthe.Day.ToString() + "/ " + ngaylapthe.Month.ToString() + "/ " + ngaylapthe.Year.ToString()

        For i As Integer = 0 To listMaSach.Count - 1
            Dim str As String()
            Dim ngaymuon As String = String.Empty
            ngaymuon = listNgayMuon(i).Day.ToString() + "/" + listNgayMuon(i).Month.ToString() + "/" + listNgayMuon(i).Year.ToString()
            str = New String() {listMaSach(i), listTenSach(i), ngaymuon, tinhTrangSach(listNgayMuon(i))}
            dgDSSachMuon.Rows.Add(str)
        Next

        Return New Result(True)
    End Function

    ' Ham danh so tu dong cho datagrid
    Private Sub dgDSSachMuon_RowPostPaint(sender As Object, e As DataGridViewRowPostPaintEventArgs) Handles dgDSSachMuon.RowPostPaint
        Using b As SolidBrush = New SolidBrush(dgDSSachMuon.RowHeadersDefaultCellStyle.ForeColor)
            e.Graphics.DrawString((e.RowIndex + 1).ToString(), dgDSSachMuon.DefaultCellStyle.Font, b, e.RowBounds.Location.X + 15, e.RowBounds.Location.Y + 2)
        End Using
    End Sub

    ' Xoa cac gia tri duoc gan tren GUI
    Private Sub clearInfo()
        lbHoTen.Text = ""
        lbNgayLap.Text = ""
        lbTinhTrang.Text = ""

        For i As Integer = 0 To dgDSSachMuon.Rows.Count - 1
            dgDSSachMuon.Rows.Clear()
        Next

    End Sub

    ' Kiem tra han su dung the
    Private Function tinhTrang(now As DateTime, ngaylap As DateTime) As Boolean
        Dim res As New Result
        Dim hsd As Integer
        res = tsBUS.getHanSuDung(hsd)

        If (now.Year < ngaylap.Year) Then
            Return False
        End If

        If (now.Year = ngaylap.Year) Then
            Dim time As Integer = now.Month - ngaylap.Month

            If (time > hsd) Then
                Return False
            End If

            If (time = hsd) Then
                If (now.Day <= ngaylap.Day) Then
                    Return True
                End If

                Return False
            End If

            Return True
        End If

        If (now.Year > ngaylap.Year) Then
            Dim time As Integer = now.Month + 12 - ngaylap.Month
            If (time > hsd) Then
                Return False
            End If

            If (time = hsd) Then
                If (now.Day <= ngaylap.Day) Then
                    Return True
                End If
                Return False
            End If

            Return True
        End If
    End Function

    ' Kiem tra tinh trang cua sach
    Private Function tinhTrangSach(ngaylap As DateTime) As String
        Dim day As TimeSpan = DateTime.Now - ngaylap
        Dim days As Integer = day.TotalDays
        Dim songaymuontoida As Integer = Nothing
        Dim res As New Result
        res = tsBUS.getSoNgayMuonToiDa(songaymuontoida)
        If (days > songaymuontoida) Then
            Return "Quá hạn"
        End If

        Return "Đang mượn"
    End Function

    ' Lay thong tin cua sach tu ma sach
    Public Function getSachInfo(ByRef maSach As String, ByRef isTrue As Boolean) As Result
        ' Truy van du lieu tu databse
        Dim tenSach As String = String.Empty
        Dim listTG As New List(Of String)
        Dim listTL As New List(Of String)

        Dim result1 As New Result
        Dim result2 As New Result
        Dim res As New Result
        Dim num As Integer = Nothing

        result1 = sachBUS.findWithMaSachTacGia(maSach, tenSach, listTG)
        result2 = sachBUS.findWithMaSachTheLoai(maSach, listTL)
        res = sachBUS.findMaSach(maSach, num)

        If num = 0 Then
            isTrue = False
            MessageBox.Show("Sách không tồn tại. Xin vui lòng nhập lại mã sách!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            tbMaSach.Focus()
            Return New Result(False)
        Else
            isTrue = True
        End If

        If (result1.FlagResult = False) Then
            MessageBox.Show("Nạp thông tin độc giả không thành công", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Return New Result(False)
        End If
        If (result2.FlagResult = False) Then
            MessageBox.Show("Nạp thông tin độc giả không thành công", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Return New Result(False)
        End If

        ' Gan du lieu cho GUI
        Dim tacgia As String = String.Empty
        Dim theloai As String = String.Empty

        For i As Integer = 0 To listTG.Count - 1
            tacgia = tacgia + listTG(i)
            If i < listTG.Count - 1 Then
                tacgia = tacgia + ", "
            End If
        Next

        For i As Integer = 0 To listTL.Count - 1
            theloai = theloai + listTL(i)
            If i < listTL.Count - 1 Then
                theloai = theloai + ", "
            End If
        Next

        Dim str As String()
        str = New String() {maSach, tenSach, theloai, tacgia}
        dgDanhSachSach.Rows.Add(str)

        Return New Result(True)
    End Function

    ' Ham gan so tu dong cho datagrid
    Private Sub dgDSTheLoai_RowPostPaint(sender As Object, e As DataGridViewRowPostPaintEventArgs) Handles dgDanhSachSach.RowPostPaint
        Using b As SolidBrush = New SolidBrush(dgDanhSachSach.RowHeadersDefaultCellStyle.ForeColor)
            e.Graphics.DrawString((e.RowIndex + 1).ToString(), dgDanhSachSach.DefaultCellStyle.Font, b, e.RowBounds.Location.X + 15, e.RowBounds.Location.Y + 2)
        End Using
    End Sub

    Private Sub btnThemMaSach_Click(sender As Object, e As EventArgs) Handles btnThemMaSach.Click
        ' Kiem tra tinh hop le
        If (tbMaSach.Text.Length < 1) Then
            MessageBox.Show("Vui lòng nhập vào mã sách!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information)
            tbMaSach.Focus()
            Return
        End If

        Dim isTrue As Boolean = True
        Dim hopLe As Boolean = sachHopLe(tbMaSach.Text)
        If hopLe = False Then
            MessageBox.Show("Quý khách không thể mượn sách này vì sách đã được mượn!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            tbMaSach.Focus()
            Return
        End If

        Dim add As Boolean = isAdded(tbMaSach.Text)
        If add = False Then
            MessageBox.Show("Quý khác không thể thêm lại sách này!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            tbMaSach.Focus()
            Return
        End If

        ' Gan du lieu cho GUI
        Dim sosachmuontoida As Integer = Nothing
        Dim sum As Integer = dgDSSachMuon.Rows.Count + dgDanhSachSach.Rows.Count
        Dim re1 As New Result
        re1 = tsBUS.getSoSachMuonToiDa(sosachmuontoida)
        If (sum >= sosachmuontoida) Then
            MessageBox.Show("Quý khách không được mượn quá " + sosachmuontoida.ToString() + " cuốn sách!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Return
        End If
        getSachInfo(tbMaSach.Text, isTrue)
    End Sub

    Private Sub btnLuuVaThoat_Click(sender As Object, e As EventArgs) Handles btnLuuVaThoat.Click
        Dim sosachmuontoida As Integer = Nothing
        Dim songaymuontoida As Integer = Nothing
        Dim re As New Result
        Dim re1 As New Result
        re = tsBUS.getSoNgayMuonToiDa(songaymuontoida)
        re1 = tsBUS.getSoSachMuonToiDa(sosachmuontoida)

        Dim pms As PhieuMuonSachDTO
        pms = New PhieuMuonSachDTO()

        Dim ctpm As ChiTietPhieuMuonDTO
        ctpm = New ChiTietPhieuMuonDTO()

        ' Xet dieu kien
        If lbHoTen.Text = String.Empty Then
            MessageBox.Show("Vui lòng nhập mã độc giả trước!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            tbMaDocGia.Focus()
            Return
            End
        Else
            If dgDanhSachSach.Rows.Count = 0 Then
                MessageBox.Show("Vui lòng chọn sách muốn mượn!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                tbMaSach.Focus()
                Return
            End If
        End If

        If (MessageBox.Show("Phiếu mượn sách sẽ đóng lại, bạn chắc chắn muốn thực hiện thao tác không? Tiếp tục?", "Cảnh báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) = DialogResult.Cancel) Then
            Return
        End If

        'Lay ma so tu dong
        Dim nextMaCTPM = "0"
        Dim result As Result

        '1. mapping data from gui + insert to db
        pms.MaDocGia = tbMaDocGia.Text
        pms.MaPhieuMuonSach = lbMaPMS.Text
        pms.NgayMuon = DateTime.Now
        result = pmsBUS.insert(pms)

        For i As Integer = 0 To dgDanhSachSach.Rows.Count - 1
            Dim res As New Result
            Dim result1 As New Result
            res = ctpmBUS.build_mactpm(nextMaCTPM)
            ctpm.MaChiTietPhieuMuon = nextMaCTPM
            ctpm.MaPhieuMuonSach = lbMaPMS.Text
            ctpm.MaSach = dgDanhSachSach.Rows(i).Cells(0).Value
            result1 = ctpmBUS.insert(ctpm)

            Dim res1 As New Result
            res1 = sachBUS.updateMaDocGiaMuon(dgDanhSachSach.Rows(i).Cells(0).Value, tbMaDocGia.Text)
        Next

        ' Thong bao
        If result.FlagResult = True Then
            MessageBox.Show("Thêm phiếu mượn thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information)
        Else
            MessageBox.Show("Thêm phiếu mượn thất bại. Vui lòng kiểm tra kết nối cơ sở dữ liệu!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Console.WriteLine(result.SystemMessage)
        End If

        '2. clear fpZone + call back ucThuVien
        Dim parent As ucChoMuonSach
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
        ' Xet dieu kien
        If (MessageBox.Show("Dữ liệu chưa được lưu sẽ bị mất. Tiếp tuc?", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Information)) = DialogResult.Cancel Then
            Return
        End If

        ' Clear fpZone + call back ucThuVien
        Dim parent As ucChoMuonSach
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

    Private Sub btnXuatPhieuMuon_Click(sender As Object, e As EventArgs) Handles btnXuatPhieuMuon.Click

        Dim sosachmuontoida As Integer = Nothing
        Dim songaymuontoida As Integer = Nothing
        Dim re As New Result
        Dim re1 As New Result
        re = tsBUS.getSoNgayMuonToiDa(songaymuontoida)
        re1 = tsBUS.getSoSachMuonToiDa(sosachmuontoida)

        Dim pms As PhieuMuonSachDTO
        pms = New PhieuMuonSachDTO()

        Dim ctpm As ChiTietPhieuMuonDTO
        ctpm = New ChiTietPhieuMuonDTO()

        ' Xet dieu kien
        If lbHoTen.Text = String.Empty Then
            MessageBox.Show("Vui lòng nhập mã độc giả trước!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            tbMaDocGia.Focus()
            Return
            End
        Else
            If dgDanhSachSach.Rows.Count = 0 Then
                MessageBox.Show("Vui lòng chọn sách muốn mượn!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                tbMaSach.Focus()
                Return
            End If
        End If

        ' Xac nhan
        If (MessageBox.Show("Lưu và xuất phiếu mượn. Tiếp tục?", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Information) = DialogResult.Cancel) Then
            Return
        End If

        ' Tao file pdf
        Try
            Dim path As String
            Dim myFont As String = "C:\Windows\Fonts\Calibri.ttf"

            ' open folder browser
            Using fbd As New FolderBrowserDialog()
                Dim rs As New DialogResult()
                rs = fbd.ShowDialog

                If rs = DialogResult.OK And Not String.IsNullOrWhiteSpace(fbd.SelectedPath) Then
                    path = fbd.SelectedPath.ToString() + "\" + lbMaPMS.Text + ".pdf"
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
            Dim fntID As iTextSharp.text.Font = New iTextSharp.text.Font(bfR, 14, iTextSharp.text.Font.NORMAL, New BaseColor(255, 0, 0))
            Dim fntHead As iTextSharp.text.Font = New iTextSharp.text.Font(bfR, 13, iTextSharp.text.Font.BOLD, clrBlack)
            Dim fntHead2 As iTextSharp.text.Font = New iTextSharp.text.Font(bfR, 12, iTextSharp.text.Font.ITALIC, clrBlack)
            Dim fntNormal As iTextSharp.text.Font = New iTextSharp.text.Font(bfR, 12, iTextSharp.text.Font.NORMAL, clrBlack)

            ' title
            Dim title As New Paragraph(New Chunk("PHIẾU MƯỢN SÁCH", fntTitle))
            title.Alignment = Element.ALIGN_CENTER
            title.SpacingAfter = 50.0F
            doc.Add(title)

            ' ma phieu muon
            Dim s As String = Nothing

            s = "Mã phiếu mượn: " + lbMaPMS.Text
            Dim mapm As New Paragraph(s, fntID)
            mapm.Alignment = Element.ALIGN_CENTER
            mapm.SpacingAfter = 10.0F
            doc.Add(mapm)

            ' ngay muon
            s = Nothing
            s = "Ngày mượn: " + lbNgayMuon.Text
            Dim ngaymuon As New Paragraph(s, fntID)
            ngaymuon.Alignment = Element.ALIGN_CENTER
            ngaymuon.SpacingAfter = 20.0F
            doc.Add(ngaymuon)

            ' thong tin doc gia
            s = "Thông tin độc giả:"
            Dim thongtin As New Paragraph(s, fntHead)
            thongtin.Alignment = Element.ALIGN_LEFT
            thongtin.SpacingAfter = 10.0F
            doc.Add(thongtin)

            '' ho ten
            s = "Họ tên: " + lbHoTen.Text
            Dim hoten As New Paragraph(s, fntNormal)
            hoten.Alignment = Element.ALIGN_LEFT
            hoten.SpacingAfter = 5.0F
            doc.Add(hoten)

            '' ngay lap the
            s = "Ngày lập thẻ: " + lbNgayLap.Text
            Dim ngaylap As New Paragraph(s, fntNormal)
            ngaylap.Alignment = Element.ALIGN_LEFT
            ngaylap.SpacingAfter = 5.0F
            doc.Add(ngaylap)

            '' sach dang muon
            s = "Sách đang mượn: "
            Dim sachdangmuon As New Paragraph(s, fntNormal)
            sachdangmuon.Alignment = Element.ALIGN_LEFT
            sachdangmuon.SpacingAfter = 20.0F
            doc.Add(sachdangmuon)

            '' danh sach sach dang muon

            Dim pdftable As New PdfPTable(dgDSSachMuon.Columns.Count)
            pdftable.TotalWidth = 550.0F
            pdftable.LockedWidth = True

            '' set width for columns
            Dim widths(0 To dgDSSachMuon.Columns.Count - 1) As Single
            For i As Integer = 0 To dgDSSachMuon.Columns.Count - 1
                widths(i) = 1.0F * (dgDSSachMuon.Columns(i).Width / pdftable.TotalWidth)
            Next

            pdftable.SetWidths(widths)
            pdftable.HorizontalAlignment = 0

            '''''

            ' header on datagrid
            Dim pdfcell As PdfPCell = New PdfPCell
            For i As Integer = 0 To dgDSSachMuon.Columns.Count - 1
                pdfcell = New PdfPCell(New Phrase(New Chunk(dgDSSachMuon.Columns(i).HeaderText, fntHead2)))
                pdfcell.HorizontalAlignment = PdfPCell.ALIGN_LEFT
                pdftable.AddCell(pdfcell)
            Next


            ''''
            ' rows on datagrid
            For i As Integer = 0 To dgDSSachMuon.Rows.Count - 1
                For j As Integer = 0 To dgDSSachMuon.Columns.Count - 1
                    pdfcell = New PdfPCell(New Phrase(dgDSSachMuon(j, i).Value.ToString(), fntNormal))
                    pdftable.HorizontalAlignment = PdfPCell.ALIGN_LEFT
                    pdftable.AddCell(pdfcell)
                Next
            Next

            ''''
            doc.Add(pdftable)

            ''''
            ' thong tin phieu muon
            '' sach muon them
            s = "Sách mượn mới: "
            Dim sachmuon As New Paragraph(s, fntHead)
            sachmuon.Alignment = Element.ALIGN_LEFT
            sachmuon.SpacingBefore = 30.0F
            sachmuon.SpacingAfter = 20.0F
            doc.Add(sachmuon)

            '' danh sach sach muon moi
            Dim pdftable2 As New PdfPTable(dgDanhSachSach.Columns.Count)
            pdftable2.TotalWidth = 550.0F
            pdftable2.LockedWidth = True

            '' set width for columns
            Dim widths2(0 To dgDanhSachSach.Columns.Count - 1) As Single
            For i As Integer = 0 To dgDanhSachSach.Columns.Count - 1
                widths2(i) = 1.0F * (dgDanhSachSach.Columns(i).Width / pdftable2.TotalWidth)
            Next

            pdftable2.SetWidths(widths)
            pdftable2.HorizontalAlignment = 0

            '''''

            ' header on datagrid
            Dim pdfcell2 As PdfPCell = New PdfPCell
            For i As Integer = 0 To dgDanhSachSach.Columns.Count - 1
                pdfcell2 = New PdfPCell(New Phrase(New Chunk(dgDanhSachSach.Columns(i).HeaderText, fntHead2)))
                pdfcell2.HorizontalAlignment = PdfPCell.ALIGN_LEFT
                pdftable2.AddCell(pdfcell2)
            Next


            ''''
            ' rows on datagrid
            For i As Integer = 0 To dgDanhSachSach.Rows.Count - 1
                For j As Integer = 0 To dgDanhSachSach.Columns.Count - 1
                    pdfcell2 = New PdfPCell(New Phrase(dgDanhSachSach(j, i).Value.ToString(), fntNormal))
                    pdftable2.HorizontalAlignment = PdfPCell.ALIGN_LEFT
                    pdftable2.AddCell(pdfcell2)
                Next
            Next

            ''''
            doc.Add(pdftable2)

            ' close
            doc.Close()

            If MessageBox.Show("Xuất phiếu mượn sách " + lbMaPMS.Text + " thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information) = DialogResult.OK Then
                'Lay ma so tu dong
                Dim nextMaCTPM = "0"
                Dim result As Result

                '1. mapping data from gui + insert to db
                pms.MaDocGia = tbMaDocGia.Text
                pms.MaPhieuMuonSach = lbMaPMS.Text
                pms.NgayMuon = DateTime.Now
                result = pmsBUS.insert(pms)

                For i As Integer = 0 To dgDanhSachSach.Rows.Count - 1
                    Dim res As New Result
                    Dim result1 As New Result
                    res = ctpmBUS.build_mactpm(nextMaCTPM)
                    ctpm.MaChiTietPhieuMuon = nextMaCTPM
                    ctpm.MaPhieuMuonSach = lbMaPMS.Text
                    ctpm.MaSach = dgDanhSachSach.Rows(i).Cells(0).Value
                    result1 = ctpmBUS.insert(ctpm)

                    Dim res1 As New Result
                    res1 = sachBUS.updateMaDocGiaMuon(dgDanhSachSach.Rows(i).Cells(0).Value, tbMaDocGia.Text)
                Next

                ' Thong bao
                If result.FlagResult = True Then
                    MessageBox.Show("Thêm phiếu mượn thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information)
                Else
                    MessageBox.Show("Thêm phiếu mượn thất bại. Vui lòng kiểm tra kết nối cơ sở dữ liệu!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                    Console.WriteLine(result.SystemMessage)
                End If

                ' Form Reload
                Dim parent As ucChoMuonSach
                parent = sender.Parent
                Dim grandpar = New FlowLayoutPanel
                grandpar = parent.Parent
                grandpar.Controls.Clear()
                Dim grgrpar = New frmHome
                grgrpar = grandpar.Parent
                grgrpar.btnLapTheDocGia.selected = False
                Dim ucChoMuonSach As New ucChoMuonSach
                grandpar.Controls.Add(ucChoMuonSach)
            End If

            Return
        Catch ex As Exception
            MessageBox.Show("Xuất phiếu mượn sách " + lbMaPMS.Text + " thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Return
        End Try

    End Sub

    Private Function sachHopLe(masach As String) As Boolean
        Dim result As New Result
        Dim madocgiamuon As String = String.Empty
        result = sachBUS.findMaDocGiaMuonByMaSach(masach, madocgiamuon)

        If madocgiamuon.Length > 0 Then
            Return False
        End If

        Return True
    End Function

    Private Function isAdded(masach As String) As Boolean
        For i As Integer = 0 To dgDanhSachSach.Rows.Count - 1
            If dgDanhSachSach.Rows(i).Cells(0).Value = masach Then
                Return False
            End If
        Next
        Return True
    End Function

    Private Sub tbMaSach_OnValueChanged(sender As Object, e As EventArgs) Handles tbMaSach.OnValueChanged
        If lbHoTen.Text.Length < 1 Then
            MessageBox.Show("Vui lòng nhập vào mã độc giả trước!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            tbMaDocGia.Focus()
            Return
        End If
    End Sub

    Private Function theHopLe() As Boolean
        Dim hople As String = "Quá hạn"
        For i As Integer = 0 To dgDSSachMuon.Rows.Count - 1
            If dgDSSachMuon.Rows(i).Cells(3).Value = hople Then
                Return False
            End If
        Next

        Return True
    End Function

    Private Sub dgDanhSachSach_UserDeletingRow(sender As Object, e As DataGridViewRowCancelEventArgs) Handles dgDanhSachSach.UserDeletingRow
        e.Cancel = MessageBox.Show("Bạn có chắc muốn xoá sách khỏi phiếu mượn? Tiếp tục?", "Cảnh báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) <> DialogResult.OK
    End Sub

End Class
