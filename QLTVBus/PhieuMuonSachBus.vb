Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class PhieuMuonSachBus
    Private pmsDAL As PhieuMuonSachDAL
    Public Sub New()
        pmsDAL = New PhieuMuonSachDAL()
    End Sub
    Public Sub New(connectionString As String)
        pmsDAL = New PhieuMuonSachDAL(connectionString)
    End Sub

    Public Function build_maphieumuon(ByRef nextMaPhieuMuon As String) As Result
        Return pmsDAL.build_maphieumuon(nextMaPhieuMuon)
    End Function

    Public Function insert(pms As PhieuMuonSachDTO) As Result
        Return pmsDAL.insert(pms)
    End Function

    Public Function selectALL(ByRef listPhieuMuon As List(Of PhieuMuonSachDTO)) As Result
        Return pmsDAL.selectALL(listPhieuMuon)
    End Function

End Class
