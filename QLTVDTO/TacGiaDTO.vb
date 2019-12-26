Public Class TacGiaDTO
    Private strMaTacGia As String
    Private strTenTacGia As String

    Public Sub New()

    End Sub

    Public Sub New(strMaTacGia As String, strTenTacGia As String)
        Me.strMaTacGia = strMaTacGia
        Me.strTenTacGia = strTenTacGia
    End Sub

    Property MaTacGia() As String
        Get
            Return strMaTacGia
        End Get
        Set(ByVal value As String)
            strMaTacGia = value
        End Set
    End Property

    Property TenTacGia() As String
        Get
            Return strTenTacGia
        End Get
        Set(ByVal value As String)
            strTenTacGia = value
        End Set
    End Property

End Class
