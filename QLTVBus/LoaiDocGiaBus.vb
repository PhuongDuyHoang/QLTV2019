Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class LoaiDocGiaBus
    Private ldgDAL As LoaiDocGiaDAL

    Public Sub New()
        ldgDAL = New LoaiDocGiaDAL()
    End Sub
    Public Sub New(connectionString As String)
        ldgDAL = New LoaiDocGiaDAL(connectionString)
    End Sub

    Public Function selectAll(ByRef listLoaiDG As List(Of LoaiDocGiaDTO)) As Result
        Return ldgDAL.selectALL(listLoaiDG)
    End Function

    Public Function getNextID(ByRef nextID As String) As Result
        Return ldgDAL.getNextID(nextID)
    End Function

    Public Function insert(ldg As LoaiDocGiaDTO) As Result
        Return ldgDAL.insert(ldg)
    End Function

    Public Function update(ldg As LoaiDocGiaDTO) As Result
        Return ldgDAL.update(ldg)
    End Function

    Public Function delete(maLoaiDocGia As String) As Result
        Return ldgDAL.delete(maLoaiDocGia)
    End Function
End Class
