Public Class ChiTietPhieuTraDTO
    Private strMaChiTietPhieuTra As String
    Private strMaPhieuTraSach As String
    Private strMaSach As String

    Public Sub New()

    End Sub

    Public Sub New(strMaChiTietPhieuTra As String, strMaPhieuTraSach As String, strMaSach As String)
        Me.strMaChiTietPhieuTra = strMaChiTietPhieuTra
        Me.strMaPhieuTraSach = strMaPhieuTraSach
        Me.strMaSach = strMaSach
    End Sub

    Property MaChiTietPhieuTra() As String
        Get
            Return strMaChiTietPhieuTra
        End Get
        Set(ByVal value As String)
            strMaChiTietPhieuTra = value
        End Set
    End Property

    Property MaPhieuTraSach() As String
        Get
            Return strMaPhieuTraSach
        End Get
        Set(ByVal value As String)
            strMaPhieuTraSach = value
        End Set
    End Property

    Property MaSach() As String
        Get
            Return strMaSach
        End Get
        Set(ByVal value As String)
            strMaSach = value
        End Set
    End Property
End Class
