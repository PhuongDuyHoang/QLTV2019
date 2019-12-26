Imports QLTVDAL
Imports QLTVDTO
Imports Utility
Imports System.Text.RegularExpressions

Public Class DocGiaBus
    Private dgDAL As DocGiaDAL
    Private tsBus As ThamSoBus

    Public Sub New()
        dgDAL = New DocGiaDAL()
        tsBus = New ThamSoBus()
    End Sub
    Public Sub New(connectionString As String)
        dgDAL = New DocGiaDAL(connectionString)
    End Sub

    Public Function isValidName(dg As DocGiaDTO) As Boolean

        If (dg.HoTen.Length < 1) Then
            Return False
        End If

        Return True
    End Function

    Public Function isValidAge(dg As DocGiaDTO) As Boolean

        'tinh toan tuoi
        Dim age As Integer
        age = Today.Year - dg.NgaySinh.Year
        If (dg.NgaySinh > Today.AddYears(-age)) Then age -= 1

        'kiem tra quy dinh
        Dim result As Result
        Dim thamso = New ThamSoDTO()
        result = tsBus.selectALL(thamso)

        If (result.FlagResult = False) Then
            Return False
        End If

        If (age < thamso.TuoiToiThieu Or age > thamso.TuoiToiDa) Then
            Return False
        End If

        Return True
    End Function

    Public Function isValidAddress(dg As DocGiaDTO) As Boolean

        If (dg.DiaChi.Length < 1) Then
            Return False
        End If

        Return True
    End Function

    Public Function isValidEmail(dg As DocGiaDTO) As Boolean

        If (dg.Email.Length < 1) Then
            Return False
        End If

        Return Regex.IsMatch(dg.Email, "^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$")
    End Function

    Public Function isValidDateAdded(dg As DocGiaDTO) As Boolean

        Dim ngaylapthe = New DateTime(dg.NgayLapThe.Year, dg.NgayLapThe.Month, dg.NgayLapThe.Day)

        If (ngaylapthe > Today) Then
            Return False
        End If

        Return True
    End Function

    Public Function buildMaDocGia(ByRef nextMaDG As String) As Result
        Return dgDAL.build_madocgia(nextMaDG)
    End Function

    Public Function insert(dg As DocGiaDTO) As Result
        Return dgDAL.insert(dg)
    End Function

    Public Function selectAll(listDocGia As List(Of DocGiaDTO)) As Result
        Return dgDAL.selectALL(listDocGia)
    End Function

    Public Function update(dg As DocGiaDTO) As Result
        Return dgDAL.update(dg)
    End Function

    Public Function findWithMaDG(ByRef maDocGia As String, ByRef tenDocGia As String, ByRef ngayLapThe As DateTime) As Result
        Return dgDAL.findWithMaDG(maDocGia, tenDocGia, ngayLapThe)
    End Function
End Class
