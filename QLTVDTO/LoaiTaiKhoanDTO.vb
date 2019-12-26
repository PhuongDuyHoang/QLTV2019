Public Class LoaiTaiKhoanDTO
    Private iMaLoaiTaiKhoan As Integer
    Private strLoaiTaiKhoan As String

    Public Sub New()

    End Sub

    Public Sub New(iMaLoaiTaiKhoan As Integer, strLoaiTaiKhoan As String)
        Me.iMaLoaiTaiKhoan = iMaLoaiTaiKhoan
        Me.strLoaiTaiKhoan = strLoaiTaiKhoan
    End Sub

    Property MaLoaiTaiKhoan() As Integer
        Get
            Return iMaLoaiTaiKhoan
        End Get
        Set(ByVal value As Integer)
            iMaLoaiTaiKhoan = value
        End Set
    End Property

    Property LoaiTaiKhoan() As String
        Get
            Return strLoaiTaiKhoan
        End Get
        Set(ByVal value As String)
            strLoaiTaiKhoan = value
        End Set
    End Property
End Class
