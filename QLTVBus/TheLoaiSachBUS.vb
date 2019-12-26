Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class TheLoaiSachBUS
    Private tlsDAL As TheLoaiSachDAL

    Public Sub New()
        tlsDAL = New TheLoaiSachDAL()
    End Sub

    Public Sub New(connectionString As String)
        tlsDAL = New TheLoaiSachDAL(connectionString)
    End Sub

    Public Function build_matls(ByRef nextMaTGS As String) As Result
        Return tlsDAL.build_matls(nextMaTGS)
    End Function

    Public Function selectAll(ByRef listTLS As List(Of TheLoaiSachDTO)) As Result
        Return tlsDAL.selectALL(listTLS)
    End Function

    Public Function selectALL_MaTheLoai(matheloai As String, ByRef listMaSach As List(Of String)) As Result
        Return tlsDAL.selectALL_MaTheLoai(matheloai, listMaSach)
    End Function

    Public Function deleteAllByMaTheLoai(matheloai As String) As Result
        Return tlsDAL.deleteAllByMaTheLoai(matheloai)
    End Function

    Public Function insert(tls As TheLoaiSachDTO) As Result
        Return tlsDAL.insert(tls)
    End Function

    Public Function getTenTheLoai_ByMaSach(masach As String, ByRef listTheLoai As List(Of String)) As Result
        Return tlsDAL.getTenTheLoai_ByMaSach(masach, listTheLoai)
    End Function
End Class
