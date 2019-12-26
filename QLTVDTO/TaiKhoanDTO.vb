Public Class TaiKhoanDTO
    Private strMaTaiKhoan As String
    Private strId As String
    Private strPassword As String
    Private iMaLoaiTaiKhoan As Integer

    Public Sub New()

    End Sub

    Public Sub New(strMaTaiKhoan As String, strId As String, strPassword As String, iMaLoaiTaiKhoan As Integer)
        Me.strMaTaiKhoan = strMaTaiKhoan
        Me.strId = strId
        Me.strPassword = strPassword
        Me.iMaLoaiTaiKhoan = iMaLoaiTaiKhoan
    End Sub

    Property MaTaiKhoan() As String
        Get
            Return strMaTaiKhoan
        End Get
        Set(ByVal value As String)
            strMaTaiKhoan = value
        End Set
    End Property

    Property Id() As String
        Get
            Return strId
        End Get
        Set(ByVal value As String)
            strId = value
        End Set
    End Property

    Property Password() As String
        Get
            Return strPassword
        End Get
        Set(ByVal value As String)
            strPassword = value
        End Set
    End Property

    Property MaLoaiTaiKhoan() As Integer
        Get
            Return iMaLoaiTaiKhoan
        End Get
        Set(ByVal value As Integer)
            iMaLoaiTaiKhoan = value
        End Set
    End Property
End Class
