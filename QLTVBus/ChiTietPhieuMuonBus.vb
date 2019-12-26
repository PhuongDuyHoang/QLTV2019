Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class ChiTietPhieuMuonBus
    Private ctpmDAL As ChiTietPhieuMuonDAL

    Public Sub New()
        ctpmDAL = New ChiTietPhieuMuonDAL()
    End Sub
    Public Sub New(connectionString As String)
        ctpmDAL = New ChiTietPhieuMuonDAL(connectionString)
    End Sub

    Public Function build_mactpm(ByRef nextMaCTPM As String) As Result
        Return ctpmDAL.build_mactpm(nextMaCTPM)
    End Function

    Public Function selectALL(ByRef listctpm As List(Of ChiTietPhieuMuonDTO)) As Result
        Return ctpmDAL.selectALL(listctpm)
    End Function

    Public Function insert(ctpm As ChiTietPhieuMuonDTO) As Result
        Return ctpmDAL.insert(ctpm)
    End Function

    Public Function baocao1(month As String, year As String, ByRef listten As List(Of String), ByRef listsoluotmuon As List(Of Integer))
        Return ctpmDAL.baocao1(month, year, listten, listsoluotmuon)
    End Function

    Public Function baocao2(month As String, ByRef listten As List(Of String), ByRef listsoluotmuon As List(Of Integer))
        Return ctpmDAL.baocao2(month, listten, listsoluotmuon)
    End Function

    Public Function baocao3(year As String, ByRef listten As List(Of String), ByRef listsoluotmuon As List(Of Integer))
        Return ctpmDAL.baocao3(year, listten, listsoluotmuon)
    End Function

    Public Function baocao4(ByRef listten As List(Of String), ByRef listsoluotmuon As List(Of Integer))
        Return ctpmDAL.baocao4(listten, listsoluotmuon)
    End Function
End Class
