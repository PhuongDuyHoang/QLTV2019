Public Class TheLoaiDTO
    Private strMaTheLoai As String
    Private strTenTheLoai As String

    Public Sub New()

    End Sub

    Public Sub New(strMaTheLoai As String, strTenTheLoai As String)
        Me.strMaTheLoai = strMaTheLoai
        Me.strTenTheLoai = strTenTheLoai
    End Sub

    Property MaTheLoai() As String
        Get
            Return strMaTheLoai
        End Get
        Set(ByVal value As String)
            strMaTheLoai = value
        End Set
    End Property

    Property TenTheLoai() As String
        Get
            Return strTenTheLoai
        End Get
        Set(ByVal value As String)
            strTenTheLoai = value
        End Set
    End Property
End Class
