Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class SachBUS
    Private sDAL As SachDAL

    Public Sub New()
        sDAL = New SachDAL()
    End Sub

    Public Sub New(connectionString As String)
        sDAL = New SachDAL(connectionString)
    End Sub

    Public Function isValidName(sach As SachDTO) As Boolean

        If (sach.TenSach.Length < 1) Then
            Return False
        End If

        Return True

    End Function

    Public Function isExpired(sach As SachDTO) As Boolean

        Dim nam As Integer
        nam = DateTime.Now.Year - sach.NamXuatBan
        If (nam > 8) Then
            Return False
        End If

        Return True
    End Function

    Public Function get_masach(ByRef nextMaSach As String) As Result
        Return sDAL.get_masach(nextMaSach)
    End Function

    Public Function selectSachTre(thoigian As DateTime, quydinh As Integer, ByRef listten As List(Of String), ByRef listngaymuon As List(Of DateTime)) As Result
        Return sDAL.selectSachTre(thoigian, quydinh, listten, listngaymuon)
    End Function


    Public Function insert(sach As SachDTO) As Result
        Return sDAL.insert(sach)
    End Function

    Public Function update(s As SachDTO) As Result
        Return sDAL.update(s)
    End Function

    Public Function selectAll(ByRef listSach As List(Of SachDTO)) As Result
        Return sDAL.selectAll(listSach)
    End Function

    Public Function delete(strMaSach As String) As Result
        Return sDAL.delete(strMaSach)
    End Function

    Public Function selectAll_MaSach(masach As String, ByRef listSach As List(Of String)) As Result
        Return sDAL.selectAll_MaSach(masach, listSach)
    End Function

    Public Function selectAll_TenSach(tensach As String, ByRef listSach As List(Of String)) As Result
        Return sDAL.selectAll_TenSach(tensach, listSach)
    End Function

    Public Function selectAll_TrangThai(matrangthai As String, ByRef listSach As List(Of String)) As Result
        Return sDAL.selectAll_TrangThai(matrangthai, listSach)
    End Function

    Public Function get_TenSach_ByMaSach(masach As String, ByRef tensach As String) As Result
        Return sDAL.get_TenSach_ByMaSach(masach, tensach)
    End Function

    Public Function get_TrangThai_ByMaSach(masach As String, ByRef trangthai As String) As Result
        Return sDAL.get_TrangThai_ByMaSach(masach, trangthai)
    End Function

    Public Function findWithMaSachTacGia(ByRef maSach As String, ByRef tenSach As String, listTG As List(Of String)) As Result
        Return sDAL.findWithMaSachTacGia(maSach, tenSach, listTG)
    End Function

    Public Function findWithMaSachTheLoai(ByRef maSach As String, listTL As List(Of String))
        Return sDAL.findWithMaSachTheLoai(maSach, listTL)
    End Function

    Public Function findTenSachFromMaSach(masach As String, ByRef sach As SachDTO) As Result
        Return sDAL.findTenSachFromMaSach(masach, sach)
    End Function

    Public Function traSachBangMaSach(masach As String) As Result
        Return sDAL.traSachBangMaSach(masach)
    End Function

    Public Function findWithMaDG(madocgia As String, ByRef listMS As List(Of String)) As Result
        Return sDAL.findWithMaDG(madocgia, listMS)
    End Function

    Public Function findDetailWithMaSach(masach As String, ByRef tensach As String, ByRef ngaymuon As DateTime) As Result
        Return sDAL.findDetailWithMaSach(masach, tensach, ngaymuon)
    End Function

    Public Function findMaDocGiaMuonByMaSach(masach As String, ByRef madocgiamuon As String) As Result
        Return sDAL.findMaDocGiaMuonByMaSach(masach, madocgiamuon)
    End Function

    Public Function updateMaDocGiaMuon(masach As String, mddgm As String) As Result
        Return sDAL.updateMaDocGiaMuon(masach, mddgm)
    End Function

    Public Function findMaSach(masach As String, ByRef num As Integer) As Result
        Return sDAL.findMaSach(masach, num)
    End Function
End Class
