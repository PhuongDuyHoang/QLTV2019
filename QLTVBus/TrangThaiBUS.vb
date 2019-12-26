Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class TrangThaiBUS
    Private ttDAL As TrangThaiDAL
    Public Sub New()
        ttDAL = New TrangThaiDAL()
    End Sub

    Public Sub New(connectionString As String)
        ttDAL = New TrangThaiDAL(connectionString)
    End Sub

    Public Function selectAll(ByRef listTT As List(Of TrangThaiDTO)) As Result
        Return ttDAL.selectAll(listTT)
    End Function
End Class
