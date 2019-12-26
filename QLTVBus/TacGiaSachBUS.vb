Imports QLTVDAL
Imports QLTVDTO
Imports Utility

Public Class TacGiaSachBUS
    Private tgsDAL As TacGiaSachDAL

    Public Sub New()
        tgsDAL = New TacGiaSachDAL()
    End Sub

    Public Sub New(connectionString As String)
        tgsDAL = New TacGiaSachDAL(connectionString)
    End Sub

    Public Function build_matgs(ByRef nextMaTGS As String) As Result
        Return tgsDAL.build_matgs(nextMaTGS)
    End Function

    Public Function selectAll(ByRef lisTGS As List(Of TacGiaSachDTO)) As Result
        Return tgsDAL.selectALL(lisTGS)
    End Function

    Public Function selectALL_MaTacGia(matacgia As String, ByRef listMaSach As List(Of String)) As Result
        Return tgsDAL.selectALL_MaTacGia(matacgia, listMaSach)
    End Function

    Public Function insert(tgs As TacGiaSachDTO) As Result
        Return tgsDAL.insert(tgs)
    End Function

    Public Function get_TenTacGia_ByMaSach(masach As String, ByRef listtacgia As List(Of String)) As Result
        Return tgsDAL.get_TenTacGia_ByMaSach(masach, listtacgia)
    End Function
End Class
