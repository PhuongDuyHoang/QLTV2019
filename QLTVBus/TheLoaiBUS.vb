Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class TheLoaiBUS
    Private tlDAL As TheLoaiDAL

    Public Sub New()
        tlDAL = New TheLoaiDAL()
    End Sub

    Public Sub New(connectionString As String)
        tlDAL = New TheLoaiDAL(connectionString)
    End Sub

    Public Function build_matheloai(ByRef nextMaTheLoai As String) As Result
        Return tlDAL.build_matheloai(nextMaTheLoai)
    End Function

    Public Function selectAll(ByRef listTheLoai As List(Of TheLoaiDTO)) As Result
        Return tlDAL.selectALL(listTheLoai)
    End Function

    Public Function deleteByMaTheLoai(matheloai) As Result
        Return tlDAL.deleteByMaTheLoai(matheloai)
    End Function

    Public Function updateByMaTheLoai(matheloai As String, tentheloaimoi As String) As Result
        Return tlDAL.updateByMaTheLoai(matheloai, tentheloaimoi)
    End Function

    Public Function insert(theloai As TheLoaiDTO) As Result
        Return tlDAL.insert(theloai)
    End Function
End Class
