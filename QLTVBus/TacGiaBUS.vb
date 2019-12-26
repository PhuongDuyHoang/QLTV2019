Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class TacGiaBUS
    Private tgDAL As TacGiaDAL

    Public Sub New()
        tgDAL = New TacGiaDAL()
    End Sub

    Public Sub New(connectionString As String)
        tgDAL = New TacGiaDAL(connectionString)
    End Sub

    Public Function selectAll(ByRef listtacgia As List(Of TacGiaDTO)) As Result
        Return tgDAL.selectAll(listtacgia)
    End Function
End Class
