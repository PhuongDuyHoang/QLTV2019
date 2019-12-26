Public Class TacGiaSachDTO
    Private strMaTacGiaSach As String
    Private strMaSach As String
    Private strMaTacGia As String

    Public Sub New()

    End Sub

    Public Sub New(strMaTacGiaSach As String, strMaSach As String, strMaTacGia As String)
        Me.strMaTacGiaSach = strMaTacGiaSach
        Me.strMaSach = strMaSach
        Me.strMaTacGia = strMaTacGia
    End Sub

    Property MaTacGiaSach() As String
        Get
            Return strMaTacGiaSach
        End Get
        Set(ByVal value As String)
            strMaTacGiaSach = value
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

    Property MaTacGia() As String
        Get
            Return strMaTacGia
        End Get
        Set(ByVal value As String)
            strMaTacGia = value
        End Set
    End Property
End Class
