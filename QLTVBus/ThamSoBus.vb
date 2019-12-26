Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class ThamSoBus
    Private tsDAL As ThamSoDAL
    Public Sub New()
        tsDAL = New ThamSoDAL()
    End Sub
    Public Sub New(connectionString As String)
        tsDAL = New ThamSoDAL(connectionString)
    End Sub

    Public Function update(qd As ThamSoDTO) As Result
        Return tsDAL.update(qd)
    End Function

    Public Function selectALL(ByRef thamso As ThamSoDTO) As Result
        Return tsDAL.selectALL(thamso)
    End Function

    Public Function getSoNgayMuonToiDa(ByRef songay As Integer) As Result
        Return tsDAL.getSoNgayMuonToiDa(songay)
    End Function

    Public Function getSoSachMuonToiDa(ByRef sosach As Integer) As Result
        Return tsDAL.getSoSachMuonToiDa(sosach)
    End Function

    Public Function getHanSuDung(ByRef hansudung As Integer) As Result
        Return tsDAL.getHanSuDung(hansudung)
    End Function
End Class
