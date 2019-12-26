Public Class DocGiaDTO
    Private strMaDocGia As String
    Private strHoTen As String
    Private dateNgaySinh As DateTime
    Private strDiaChi As String
    Private strEmail As String
    Private dateNgayLapThe As DateTime
    Private strMaLoaiDocGia As String

    Public Sub New()

    End Sub

    Public Sub New(strMaDocGia As String, strHoTen As String, dateNgaySinh As DateTime, strDiaChi As String, strEmail As String, dateNgayLapThe As DateTime, strMaLoaiDocGia As String)
        Me.strMaDocGia = strMaDocGia
        Me.strHoTen = strHoTen
        Me.dateNgaySinh = dateNgaySinh
        Me.strDiaChi = strDiaChi
        Me.strEmail = strEmail
        Me.dateNgayLapThe = dateNgayLapThe
        Me.strMaLoaiDocGia = strMaLoaiDocGia
    End Sub

    Property MaDocGia() As String
        Get
            Return strMaDocGia
        End Get
        Set(ByVal value As String)
            strMaDocGia = value
        End Set
    End Property

    Property HoTen() As String
        Get
            Return strHoTen
        End Get
        Set(ByVal value As String)
            strHoTen = value
        End Set
    End Property

    Property NgaySinh() As DateTime
        Get
            Return dateNgaySinh
        End Get
        Set(ByVal value As DateTime)
            dateNgaySinh = value
        End Set
    End Property

    Property DiaChi() As String
        Get
            Return strDiaChi
        End Get
        Set(ByVal value As String)
            strDiaChi = value
        End Set
    End Property

    Property Email() As String
        Get
            Return strEmail
        End Get
        Set(ByVal value As String)
            strEmail = value
        End Set
    End Property

    Property NgayLapThe() As DateTime
        Get
            Return dateNgayLapThe
        End Get
        Set(ByVal value As DateTime)
            dateNgayLapThe = value
        End Set
    End Property

    Property MaLoaiDocGia() As String
        Get
            Return strMaLoaiDocGia
        End Get
        Set(ByVal value As String)
            strMaLoaiDocGia = value
        End Set
    End Property
End Class
