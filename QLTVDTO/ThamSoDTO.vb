Public Class ThamSoDTO
    Private iTuoiToiThieu As Integer
    Private iTuoiToiDa As Integer
    Private iHanSuDung As Integer
    Private iNamXuatBanToiThieu As Integer
    Private iSoLuongSachMuonToiDa As Integer
    Private iThoiGianMuonToiDa As Integer

    Public Sub New()

    End Sub

    Public Sub New(iTuoiToiThieu As Integer, iTuoiToiDa As Integer, iHanSuDung As Integer, iNamXuatBanToiThieu As Integer, iSoLuongSachMuonToiDa As Integer, iThoiGianMuonToiDa As Integer)
        Me.iTuoiToiThieu = iTuoiToiThieu
        Me.iTuoiToiDa = iTuoiToiDa
        Me.iHanSuDung = iHanSuDung
        Me.iNamXuatBanToiThieu = iNamXuatBanToiThieu
        Me.iSoLuongSachMuonToiDa = iSoLuongSachMuonToiDa
        Me.iThoiGianMuonToiDa = iThoiGianMuonToiDa

    End Sub

    Property TuoiToiThieu() As Integer
        Get
            Return iTuoiToiThieu
        End Get
        Set(ByVal value As Integer)
            iTuoiToiThieu = value
        End Set
    End Property

    Property TuoiToiDa() As Integer
        Get
            Return iTuoiToiDa
        End Get
        Set(ByVal value As Integer)
            iTuoiToiDa = value
        End Set
    End Property

    Property HanSuDung() As Integer
        Get
            Return iHanSuDung
        End Get
        Set(ByVal value As Integer)
            iHanSuDung = value
        End Set
    End Property

    Property NamXuatBanToiThieu() As Integer
        Get
            Return iNamXuatBanToiThieu
        End Get
        Set(ByVal value As Integer)
            iNamXuatBanToiThieu = value
        End Set
    End Property

    Property SoLuongSachMuonToiDa() As Integer
        Get
            Return iSoLuongSachMuonToiDa
        End Get
        Set(ByVal value As Integer)
            iSoLuongSachMuonToiDa = value
        End Set
    End Property

    Property ThoiGianMuonToiDa() As Integer
        Get
            Return iThoiGianMuonToiDa
        End Get
        Set(ByVal value As Integer)
            iThoiGianMuonToiDa = value
        End Set
    End Property
End Class
