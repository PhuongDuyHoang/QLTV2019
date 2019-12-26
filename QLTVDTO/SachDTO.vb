Public Class SachDTO
    Private strMaSach As String
    Private strTenSach As String
    Private strMaNhaXuatBan As String
    Private dateNgayNhap As DateTime
    Private iMaTrangThai As Integer
    Private iNamXuatBan As Integer
    Private iTriGia As Integer
    Private strMaDocGiaMuon As String

    Public Sub New()

    End Sub

    Public Sub New(strMaSach As String, strTenSach As String, strMaNhaXuatBan As String, dateNgayNhap As DateTime, iMaTrangThai As Integer, iNamXuatBan As Integer, iTriGia As Integer, strMaDocGiaMuon As String)
        Me.strMaSach = strMaSach
        Me.strTenSach = strTenSach
        Me.strMaNhaXuatBan = strMaNhaXuatBan
        Me.dateNgayNhap = dateNgayNhap
        Me.iMaTrangThai = iMaTrangThai
        Me.iNamXuatBan = iNamXuatBan
        Me.iTriGia = iTriGia
        Me.strMaDocGiaMuon = strMaDocGiaMuon
    End Sub

    Property MaSach() As String
        Get
            Return strMaSach
        End Get
        Set(ByVal value As String)
            strMaSach = value
        End Set
    End Property

    Property TenSach() As String
        Get
            Return strTenSach
        End Get
        Set(ByVal value As String)
            strTenSach = value
        End Set
    End Property

    Property MaNhaXuatBan() As String
        Get
            Return strMaNhaXuatBan
        End Get
        Set(ByVal value As String)
            strMaNhaXuatBan = value
        End Set
    End Property

    Property NgayNhap() As DateTime
        Get
            Return dateNgayNhap
        End Get
        Set(ByVal value As DateTime)
            dateNgayNhap = value
        End Set
    End Property

    Property MaTrangThai() As Integer
        Get
            Return iMaTrangThai
        End Get
        Set(ByVal value As Integer)
            iMaTrangThai = value
        End Set
    End Property

    Property NamXuatBan() As Integer
        Get
            Return iNamXuatBan
        End Get
        Set(ByVal value As Integer)
            iNamXuatBan = value
        End Set
    End Property

    Property TriGia() As Integer
        Get
            Return iTriGia
        End Get
        Set(ByVal value As Integer)
            iTriGia = value
        End Set
    End Property

    Property MaDocGiaMuon() As String
        Get
            Return strMaDocGiaMuon
        End Get
        Set(ByVal value As String)
            strMaDocGiaMuon = value
        End Set
    End Property
End Class
