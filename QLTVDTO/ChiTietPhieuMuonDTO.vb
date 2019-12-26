Public Class ChiTietPhieuMuonDTO
    Private strMaChiTietPhieuMuon As String
    Private strMaPhieuMuonSach As String
    Private strMaSach As String

    Public Sub New()

    End Sub

    Public Sub New(strMaChiTietPhieuMuon As String, strMaPhieuMuonSach As String, strMaSach As String)
        Me.strMaChiTietPhieuMuon = strMaChiTietPhieuMuon
        Me.strMaPhieuMuonSach = strMaPhieuMuonSach
        Me.strMaSach = strMaSach
    End Sub

    Property MaChiTietPhieuMuon() As String
        Get
            Return strMaChiTietPhieuMuon
        End Get
        Set(ByVal value As String)
            strMaChiTietPhieuMuon = value
        End Set
    End Property

    Property MaPhieuMuonSach() As String
        Get
            Return strMaPhieuMuonSach
        End Get
        Set(ByVal value As String)
            strMaPhieuMuonSach = value
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
