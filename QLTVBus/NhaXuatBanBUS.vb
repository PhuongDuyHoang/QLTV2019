Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class NhaXuatBanBUS
    Private nxbDAL As NhaXuatBanDAL

    Public Sub New()
        nxbDAL = New NhaXuatBanDAL()
    End Sub

    Public Sub New(connectionString As String)
        nxbDAL = New NhaXuatBanDAL(connectionString)
    End Sub

    Public Function selectAll(ByRef listNXB As List(Of NhaXuatBanDTO)) As Result
        Return nxbDAL.selectAll(listNXB)
    End Function
End Class
