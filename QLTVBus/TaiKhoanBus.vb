Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class TaiKhoanBus
    Private tkDal As TaiKhoanDAL

    Public Sub New()
        tkDal = New TaiKhoanDAL
    End Sub
    Public Sub New(connectionString As String)
        tkDal = New TaiKhoanDAL(connectionString)
    End Sub

    Public Function update(id As String, newpass As String, ByRef ok As Boolean) As Result
        Return tkDal.update(id, newpass, ok)
    End Function

    Public Function kiemTra(id As String, password As String, ByRef ok As Boolean, ByRef type As Integer) As Result
        Return tkDal.kiemTra(id, password, ok, type)
    End Function
End Class
