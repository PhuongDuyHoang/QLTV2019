Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class ChiTietPhieuTraBus
    Private ctptDAL As ChiTietPhieuTraDAL
    Public Sub New()
        ctptDAL = New ChiTietPhieuTraDAL()
    End Sub
    Public Sub New(connectionString As String)
        ctptDAL = New ChiTietPhieuTraDAL(connectionString)
    End Sub

    Public Function build_mactphieutra(ByRef nextMactPhieuTra As String) As Result
        Return ctptDAL.build_mactphieutra(nextMactPhieuTra)
    End Function

    Public Function insert(ctpt As ChiTietPhieuTraDTO) As Result
        Return ctptDAL.insert(ctpt)
    End Function

    Public Function selectALL(ByRef listCTPhieuTra As List(Of ChiTietPhieuTraDTO)) As Result
        Return ctptDAL.selectALL(listCTPhieuTra)
    End Function

End Class
