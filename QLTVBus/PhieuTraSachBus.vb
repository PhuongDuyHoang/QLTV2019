Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class PhieuTraSachBus
    Private ptsDAL As PhieuTraSachDAL
    Public Sub New()
        ptsDAL = New PhieuTraSachDAL()
    End Sub
    Public Sub New(connectionString As String)
        ptsDAL = New PhieuTraSachDAL(connectionString)
    End Sub

    Public Function build_maphieumuon(ByRef nextMaPhieuTra As String) As Result
        Return ptsDAL.build_maphieutra(nextMaPhieuTra)
    End Function

    Public Function insert(pts As PhieuTraSachDTO) As Result
        Return ptsDAL.insert(pts)
    End Function

    Public Function selectALL(ByRef listPhieuTra As List(Of PhieuTraSachDTO)) As Result
        Return ptsDAL.selectALL(listPhieuTra)
    End Function

End Class
