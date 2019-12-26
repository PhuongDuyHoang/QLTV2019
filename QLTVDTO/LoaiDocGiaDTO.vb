Public Class LoaiDocGiaDTO
    Private strMaLoaiDocGia As String
    Private strTenLoaiDocGia As String

    Public Sub New()

    End Sub

    Public Sub New(strMaLoaiDocGia As String, strTenLoaiDocGia As String)
        Me.strMaLoaiDocGia = strMaLoaiDocGia
        Me.strTenLoaiDocGia = strTenLoaiDocGia
    End Sub

    Property MaLoaiDocGia() As String
        Get
            Return strMaLoaiDocGia
        End Get
        Set(ByVal value As String)
            strMaLoaiDocGia = value
        End Set
    End Property

    Property TenLoaiDocGia() As String
        Get
            Return strTenLoaiDocGia
        End Get
        Set(ByVal value As String)
            strTenLoaiDocGia = value
        End Set
    End Property

End Class
