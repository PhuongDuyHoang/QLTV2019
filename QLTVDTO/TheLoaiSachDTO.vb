Public Class TheLoaiSachDTO
    Private strMaTheLoaiSach As String
    Private strMaSach As String
    Private strMaTheLoai As String

    Public Sub New()

    End Sub

    Public Sub New(strMaTheLoaiSach As String, strMaSach As String, strMaTheLoai As String)
        Me.strMaTheLoaiSach = strMaTheLoaiSach
        Me.strMaSach = strMaSach
        Me.strMaTheLoai = strMaTheLoai
    End Sub

    Property MaTheLoaiSach() As String
        Get
            Return strMaTheLoaiSach
        End Get
        Set(ByVal value As String)
            strMaTheLoaiSach = value
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

    Property MaTheLoai() As String
        Get
            Return strMaTheLoai
        End Get
        Set(ByVal value As String)
            strMaTheLoai = value
        End Set
    End Property
End Class
