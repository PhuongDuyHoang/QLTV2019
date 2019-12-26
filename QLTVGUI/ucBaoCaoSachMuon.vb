Imports QLTVDTO
Imports QLTVBus
Imports Utility
Imports System.Drawing
Imports System.IO
Imports iTextSharp.text
Imports iTextSharp.text.pdf

Public Class ucBaoCaoSachMuon
    Dim month = 0
    Dim year = 0
    Dim result As New Result
    Dim ctpmBus As New ChiTietPhieuMuonBus

    Private Sub btnThongKe_Click(sender As Object, e As EventArgs) Handles btnThongKe.Click

        result = kiemtrahople()
        If result.FlagResult = False Then
            Return
        End If

        Dim listten As New List(Of String)
        Dim listsoluotmuon As New List(Of Integer)

        If month > 0 And year > 0 Then
            result = ctpmBus.baocao1(month, year, listten, listsoluotmuon)
        ElseIf month > 0 Then
            result = ctpmBus.baocao2(month, listten, listsoluotmuon)
        ElseIf year > 0 Then
            result = ctpmBus.baocao3(year, listten, listsoluotmuon)
        Else
            result = ctpmBus.baocao4(listten, listsoluotmuon)
        End If

        If result.FlagResult = False Then
            MessageBox.Show("Lỗi truy xuất dữ liệu. Lập thống kê thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            tbThang.Focus()
            Return
        End If

        showresult(listten, listsoluotmuon)


    End Sub

    Private Function kiemtrahople() As Result
        month = 0
        year = 0

        If tbThang.Text.Length > 0 Then
            month = Convert.ToDecimal(tbThang.Text)
            If ((month < 1 Or month > 12)) Then
                MessageBox.Show("Tháng không hợp lệ!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                Return New Result(False)
            End If
        End If

        If tbNam.Text.Length > 0 Then
            year = Convert.ToDecimal(tbNam.Text)
            If ((year < 2000 Or year > 2099)) Then
                MessageBox.Show("Năm không hợp lệ!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
                Return New Result(False)
            End If
        End If
        Return New Result(True)

    End Function

    Private Function showresult(listten As List(Of String), listsoluotmuon As List(Of Integer))
        dgThongKe.Rows.Clear()

        If listten.Count = 0 Then
            Dim s = "Không có lượt mượn nào"
            If month > 0 Then
                s += " vào tháng " + month.ToString()
            End If
            If year > 1900 And year <= 2100 Then
                s += " năm " + year.ToString()
            End If
            s += "!"
            MessageBox.Show(s, "Information", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If

        ' sum all
        Dim sum = 0
        For Each i As Integer In listsoluotmuon
            sum += i
        Next
        lbTongLuotMuon.Text = sum.ToString()

        For i As Integer = 0 To listten.Count - 1
            Dim tile As Double = listsoluotmuon.ElementAt(i) * 100 / sum
            Dim phantram As String = Math.Round(tile, 2).ToString + "%"
            Dim s As String()
            s = New String() {listten.ElementAt(i), listsoluotmuon.ElementAt(i).ToString(), phantram}
            dgThongKe.Rows.Add(s)
        Next

    End Function

    Private Sub dgThongKe_RowPostPaint(sender As Object, e As DataGridViewRowPostPaintEventArgs) Handles dgThongKe.RowPostPaint
        Using b As SolidBrush = New SolidBrush(dgThongKe.RowHeadersDefaultCellStyle.ForeColor)
            e.Graphics.DrawString((e.RowIndex + 1).ToString(), dgThongKe.DefaultCellStyle.Font, b, e.RowBounds.Location.X + 12, e.RowBounds.Location.Y + 1)
        End Using
    End Sub

    Private Sub btnThoat_Click(sender As Object, e As EventArgs) Handles btnThoat.Click
        Dim parent As ucBaoCaoSachMuon
        parent = sender.Parent
        Dim grandpar = New ucBaoCao
        grandpar = parent.Parent
        Dim grgrpar = New FlowLayoutPanel
        grgrpar = grandpar.Parent
        grgrpar.Controls.Clear()
        Dim grgrgrpar = New frmHome
        grgrgrpar = grgrpar.Parent
        grgrgrpar.btnLapTheDocGia.selected = False
        Dim ucThuVien As New ucThuVien
        grgrpar.Controls.Add(ucThuVien)

        grgrgrpar.btnLapTheDocGia.selected = False
        grgrgrpar.btnTiepNhanSachMoi.selected = False
        grgrgrpar.btnTraCuuSach.selected = False
        grgrgrpar.btnChoMuonSach.selected = False
        grgrgrpar.btnNhanTraSach.selected = False
        grgrgrpar.btnLapBaoCao.selected = False
        grgrgrpar.btnThayDoiQuyDinh.selected = False
    End Sub

    Private Sub ucBaoCaoSachMuon_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Label1.ForeColor = Color.FromArgb(89, 94, 241)
        tbThang.Text = Today.Month.ToString()
        tbNam.Text = Today.Year.ToString()
    End Sub

    Private Sub btnXuatBaoCao_Click(sender As Object, e As EventArgs) Handles btnXuatBaoCao.Click
        Try
            Dim path As String = "\baocaosachmuon.pdf"
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
            Dim title As New Paragraph(New Chunk("BÁO CÁO THỐNG KÊ TÌNH HÌNH MƯỢN SÁCH THEO THỂ LOẠI", fntTitle))
            title.Alignment = Element.ALIGN_CENTER
            title.SpacingAfter = 50.0F
            doc.Add(title)

            ' thong so
            Dim s As String = Nothing

            If month > 0 And year > 0 Then
                s = "Tháng: " + month.ToString() + "    Năm: " + year.ToString()
            ElseIf month > 0 Then
                s = "Tháng: " + month.ToString()
            ElseIf year > 0 Then
                s = "Năm: " + year.ToString()
            Else
                s = "(Tất cả)"
            End If

            Dim thongso As New Paragraph(s, fntHead2)
            thongso.Alignment = Element.ALIGN_CENTER
            thongso.SpacingAfter = 20.0F

            doc.Add(thongso)


            ' datagrid
            '' width
            Dim ketqua As New Paragraph("Kết quả thống kê: ", fntHead)
            ketqua.SpacingBefore = 20.0F
            ketqua.SpacingAfter = 20.0F
            doc.Add(ketqua)

            Dim pdftable As New PdfPTable(dgThongKe.Columns.Count)
            pdftable.TotalWidth = 400.0F
            pdftable.LockedWidth = True

            '' set width for columns
            Dim widths(0 To dgThongKe.Columns.Count - 1) As Single
            For i As Integer = 0 To dgThongKe.Columns.Count - 1
                widths(i) = 1.0F * (dgThongKe.Columns(i).Width / 600.0F)
            Next

            pdftable.SetWidths(widths)
            pdftable.HorizontalAlignment = 0

            '''''

            ' header on datagrid
            Dim pdfcell As PdfPCell = New PdfPCell
            For i As Integer = 0 To dgThongKe.Columns.Count - 1
                pdfcell = New PdfPCell(New Phrase(New Chunk(dgThongKe.Columns(i).HeaderText, fntHead2)))
                pdfcell.HorizontalAlignment = PdfPCell.ALIGN_LEFT
                pdftable.AddCell(pdfcell)
            Next


            ''''
            ' rows on datagrid
            For i As Integer = 0 To dgThongKe.Rows.Count - 2
                For j As Integer = 0 To dgThongKe.Columns.Count - 1
                    pdfcell = New PdfPCell(New Phrase(dgThongKe(j, i).Value.ToString(), fntNormal))
                    pdftable.HorizontalAlignment = PdfPCell.ALIGN_LEFT
                    pdftable.AddCell(pdfcell)
                Next
            Next

            ''''
            doc.Add(pdftable)



            ' ngay tao
            Dim ngay As New Paragraph("Ngày tạo: " + Today.Day.ToString() + "/" + Today.Month.ToString() + "/" + Today.Year.ToString(), fntNormal)
            ngay.Alignment = Element.ALIGN_LEFT
            ngay.SpacingBefore = 50.0F

            doc.Add(ngay)

            ' close
            doc.Close()

            MessageBox.Show("Xuất kết quả báo cáo thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Return

        Catch ex As Exception
            MessageBox.Show("Xuất kết quả báo cáo thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Return
        End Try
    End Sub
End Class
