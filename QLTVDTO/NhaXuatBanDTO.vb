Public Class NhaXuatBanDTO
    Private strMaNhaXuatBan As String
    Private strTenNhaXuatBan As String

    Public Sub New()

    End Sub

    Public Sub New(strMaNhaXuatBan As String, strTenNhaXuatBan As String)
        Me.strMaNhaXuatBan = strMaNhaXuatBan
        Me.strTenNhaXuatBan = strTenNhaXuatBan
    End Sub

    Property MaNhaXuatBan() As String
        Get
            Return strMaNhaXuatBan
        End Get
        Set(ByVal value As String)
            strMaNhaXuatBan = value
        End Set
    End Property

    Property TenNhaXuatBan() As String
        Get
            Return strTenNhaXuatBan
        End Get
        Set(ByVal value As String)
            strTenNhaXuatBan = value
        End Set
    End Property
End Class
