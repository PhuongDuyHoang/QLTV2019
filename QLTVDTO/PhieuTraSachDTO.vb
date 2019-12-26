Public Class PhieuTraSachDTO
    Private strMaPhieuTraSach As String
    Private dateNgayTra As DateTime
    Private strMaDocGia As String

    Public Sub New()

    End Sub

    Public Sub New(strMaPhieuTraSach As String, dateNgayTra As DateTime, strMaDocGia As String)
        Me.strMaPhieuTraSach = strMaPhieuTraSach
        Me.dateNgayTra = dateNgayTra
        Me.strMaDocGia = strMaDocGia
    End Sub

    Property MaPhieuTraSach() As String
        Get
            Return strMaPhieuTraSach
        End Get
        Set(ByVal value As String)
            strMaPhieuTraSach = value
        End Set
    End Property

    Property NgayTra() As DateTime
        Get
            Return dateNgayTra
        End Get
        Set(ByVal value As DateTime)
            dateNgayTra = value
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
