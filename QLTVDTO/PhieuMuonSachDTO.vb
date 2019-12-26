Public Class PhieuMuonSachDTO
    Private strMaPhieuMuonSach As String
    Private dateNgayMuon As DateTime
    Private strMaDocGia As String

    Public Sub New()

    End Sub

    Public Sub New(strMaPhieuMuonSach As String, dateNgayMuon As DateTime, strMaDocGia As String)
        Me.strMaPhieuMuonSach = strMaPhieuMuonSach
        Me.dateNgayMuon = dateNgayMuon
        Me.strMaDocGia = strMaDocGia
    End Sub

    Property MaPhieuMuonSach() As String
        Get
            Return strMaPhieuMuonSach
        End Get
        Set(ByVal value As String)
            strMaPhieuMuonSach = value
        End Set
    End Property

    Property NgayMuon() As DateTime
        Get
            Return dateNgayMuon
        End Get
        Set(ByVal value As DateTime)
            dateNgayMuon = value
        End Set
    End Property

    Property MaDocGia() As String
        Get
            Return strMaDocGia
        End Get
        Set(ByVal value As String)
            strMaDocGia = value
        End Set
    End Property
End Class
