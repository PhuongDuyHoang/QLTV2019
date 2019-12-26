Imports QLTVDTO
Imports QLTVBus
Imports Utility
Imports System.Diagnostics

Public Class ucThuVien
    Dim dgBus As DocGiaBus
    Dim ctpmBus As ChiTietPhieuMuonBus
    Dim sachBus As SachBUS

    Private Sub ucThuVien_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim result As Result
        dgBus = New DocGiaBus()
        ctpmBus = New ChiTietPhieuMuonBus()
        sachBus = New SachBUS()

        ' Hien thi so dau sach
        Dim listSach As List(Of SachDTO)
        listSach = New List(Of SachDTO)
        result = sachBus.selectAll(listSach)

        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách đầu sách thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        lbSoDauSach.Text = (listSach.Count - 1).ToString()

        ' Hien thi so doc gia
        Dim listDocGia As List(Of DocGiaDTO)
        listDocGia = New List(Of DocGiaDTO)
        result = dgBus.selectAll(listDocGia)

        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách độc giả thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        lbSoDocGia.Text = (listDocGia.Count - 1).ToString()

        ' Hien thi so luot muon
        Dim listctpm As List(Of ChiTietPhieuMuonDTO)
        listctpm = New List(Of ChiTietPhieuMuonDTO)
        result = ctpmBus.selectALL(listctpm)

        If (result.FlagResult = False) Then
            MessageBox.Show("Lấy danh sách phiếu mượn thất bại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error)
            System.Console.WriteLine(result.SystemMessage)
            Return
        End If

        lbSoLuotMuon.Text = listctpm.Count.ToString()
    End Sub

    Private Sub LinkLabel1_LinkClicked_1(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles LinkLabel1.LinkClicked
        Process.Start("https://github.com/tungphan311/QLTV")
    End Sub
End Class
