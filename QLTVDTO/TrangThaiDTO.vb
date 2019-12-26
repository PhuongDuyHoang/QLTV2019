Public Class TrangThaiDTO
    Private iMaTrangThai As Integer
    Private strTenTrangThai As String

    Public Sub New()

    End Sub

    Public Sub New(iMaTrangThai As Integer, strTenTrangThai As String)
        Me.iMaTrangThai = iMaTrangThai
        Me.strTenTrangThai = strTenTrangThai
    End Sub

    Property MaTrangThai() As Integer
        Get
            Return iMaTrangThai
        End Get
        Set(ByVal value As Integer)
            iMaTrangThai = value
        End Set
    End Property

    Property TenTrangThai() As String
        Get
            Return strTenTrangThai
        End Get
        Set(ByVal value As String)
            strTenTrangThai = value
        End Set
    End Property
End Class
