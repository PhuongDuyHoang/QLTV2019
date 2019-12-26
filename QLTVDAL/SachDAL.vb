Imports Utility
Imports QLTVDTO
Imports System.Data.SqlClient
Imports System.Configuration

Public Class SachDAL
    Private connectionString As String

    Public Sub New()
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function get_masach(ByRef nextMaSach As String) As Result
        nextMaSach = String.Empty
        nextMaSach = "S"

        Dim query As String = String.Empty
        query &= "select top 1 [masach] "
        query &= "from [tblSach] "
        query &= "order by [masach] desc "

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    Dim msOnDB As String
                    msOnDB = Nothing
                    If reader.HasRows = True Then
                        While reader.Read()
                            msOnDB = reader("masach")
                        End While
                    End If
                    If (msOnDB <> Nothing And msOnDB.Length >= 8) Then
                        Dim v = msOnDB.Substring(1)
                        Dim convertDecimal = Convert.ToDecimal(v)
                        convertDecimal = convertDecimal + 1
                        Dim tmp = convertDecimal.ToString()
                        tmp = tmp.PadLeft(msOnDB.Length - 1, "0")
                        nextMaSach = nextMaSach + tmp
                        System.Console.WriteLine(nextMaSach)
                    End If
                Catch ex As Exception
                    conn.Close()
                    System.Console.WriteLine(ex.StackTrace)
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function insert(s As SachDTO) As Result
        Dim query As String = String.Empty
        query &= "insert into [tblSach] "
        query &= "values (@masach, @tensach, @manhaxuatban, @ngaynhap, @matrangthai, @namxuatban, @trigia, @madocgiamuon)"

        Dim nextMaSach = 0
        Dim ms = "S" + Convert.ToString(nextMaSach)
        Dim result As Result
        result = get_masach(ms)
        If (result.FlagResult = False) Then
            Return result
        End If
        s.MaSach = ms

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", s.MaSach)
                    .Parameters.AddWithValue("@tensach", s.TenSach)
                    .Parameters.AddWithValue("@manhaxuatban", s.MaNhaXuatBan)
                    .Parameters.AddWithValue("@ngaynhap", s.NgayNhap)
                    .Parameters.AddWithValue("@matrangthai", s.MaTrangThai)
                    .Parameters.AddWithValue("@namxuatban", s.NamXuatBan)
                    .Parameters.AddWithValue("@trigia", s.TriGia)
                    .Parameters.AddWithValue("@madocgiamuon", s.MaDocGiaMuon)
                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()

                Catch ex As Exception
                    conn.Close()
                    Return New Result(False, "Thêm sách không thành công", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function update(s As SachDTO) As Result
        Dim query As String = String.Empty
        query &= "update [tblSach] set "
        query &= " [tensach] = @tensach "
        query &= " [manhaxuatban] = @manhaxuatban "
        query &= " [ngaynhap] = @ngaynhap "
        query &= " [matacgia] = @matacgia "
        query &= " [matheloai] = @matheloai "
        query &= " [matrangthai] = @matrangthai "
        query &= " [namxuatban] = @namxuatban "
        query &= " [trigia] = @trigia "
        query &= " [madocgiamuon] = @madocgiamuon"
        query &= "where "
        query &= " [masach] = @masach "

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", s.MaSach)
                    .Parameters.AddWithValue("@tensach", s.TenSach)
                    .Parameters.AddWithValue("@manhaxuatban", s.MaNhaXuatBan)
                    .Parameters.AddWithValue("@ngaynhap", s.NgayNhap)
                    .Parameters.AddWithValue("@matrangthai", s.MaTrangThai)
                    .Parameters.AddWithValue("@namxuatban", s.NamXuatBan)
                    .Parameters.AddWithValue("@trigia", s.TriGia)
                    .Parameters.AddWithValue("@madocgiamuon", s.MaDocGiaMuon)
                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()

                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Cập nhật sách thành công", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function selectAll(ByRef listSach As List(Of SachDTO)) As Result

        Dim query As String = String.Empty
        query &= "select *"
        query &= " from [tblSach]"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listSach.Clear()
                        While reader.Read()
                            listSach.Add(New SachDTO(reader("masach"), reader("tensach"), reader("manhaxuatban"), reader("ngaynhap"), reader("matrangthai"), reader("namxuatban"), reader("trigia"), reader("madocgiamuon")))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Lây tất cả sách không thành công", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function selectSachTre(thoigian As DateTime, quydinh As Integer, ByRef listten As List(Of String), ByRef listngaymuon As List(Of DateTime)) As Result

        Dim query As String = String.Empty
        query &= "SELECT [tensach], [ngaymuon] "
        query &= "FROM [tblPhieuMuonSach] pm, [tblSach] s, [tblChiTietPhieuMuon] ct "
        query &= "WHERE pm.[maphieumuonsach] = ct.[maphieumuonsach] "
        query &= "  AND ct.[masach] = s.[masach] "
        query &= "  AND s.[matrangthai] = 2 "
        query &= "  AND s.[madocgiamuon] = pm.[madocgia] "
        query &= "  AND @thoigian - pm.[ngaymuon] >= @quydinh "

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@thoigian", thoigian)
                    .Parameters.AddWithValue("@quydinh", quydinh)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listten.Clear()
                        listngaymuon.Clear()
                        While reader.Read()
                            listten.Add(reader("tensach"))
                            listngaymuon.Add(reader("ngaymuon"))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Lây tất cả sách không thành công", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function delete(strMaSach As String) As Result

        Dim query As String = String.Empty
        query &= " delete from [tblSach]"
        query &= " where"
        query &= " [masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", strMaSach)
                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Xoá sách không thành công", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function findWithMaSachTacGia(ByRef maSach As String, ByRef tenSach As String, ByRef listTG As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= " SELECT s.[masach], s.[tensach], tg.[tentacgia]"
        query &= " FROM [tblSach] s, [tblTacGia] tg, [tblTacGiaSach] tgs"
        query &= " WHERE"
        query &= " tg.[matacgia] = tgs.[matacgia]"
        query &= " AND tgs.[masach] = s.[masach]"
        query &= " AND s.[masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", maSach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listTG.Clear()
                        While reader.Read()
                            tenSach = reader("tensach")
                            listTG.Add(reader("tentacgia"))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Nạp thông tin sách không thành công", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function findWithMaSachTheLoai(ByRef maSach As String, ByRef listTL As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= " SELECT s.[masach], s.[tensach], tl.tentheloai"
        query &= " FROM [tblSach] s, [tblTheLoai] tl, [tblTheLoaiSach] tls"
        query &= " WHERE"
        query &= " s.masach = tls.masach"
        query &= " AND tls.matheloai = tl.matheloai"
        query &= " AND s.[masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", maSach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listTL.Clear()
                        While reader.Read()
                            listTL.Add(reader("tentheloai"))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Nạp thông tin sách không thành công", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function selectAll_MaSach(masach As String, ByRef listSach As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= "select [masach] "
        query &= "from [tblSach] "
        query &= "where [masach] like @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", masach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listSach.Clear()
                        While reader.Read()
                            listSach.Add(reader("masach"))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function selectAll_TenSach(tensach As String, ByRef listSach As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= "select [masach] "
        query &= "from [tblSach] "
        query &= "where [tensach] like @tensach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@tensach", tensach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listSach.Clear()
                        While reader.Read()
                            listSach.Add(reader("masach"))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function selectAll_TrangThai(matrangthai As String, ByRef listSach As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= "select [masach] "
        query &= "from [tblSach] "
        query &= "where [matrangthai] like @matrangthai"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@matrangthai", matrangthai)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listSach.Clear()
                        While reader.Read()
                            listSach.Add(reader("masach"))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function get_TenSach_ByMaSach(masach As String, ByRef tensach As String) As Result

        Dim query As String = String.Empty
        query &= "select [tensach] "
        query &= "from [tblSach] "
        query &= "where [masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", masach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        While reader.Read()
                            tensach = reader("tensach")
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function get_TrangThai_ByMaSach(masach As String, ByRef trangthai As String) As Result

        Dim query As String = String.Empty
        query &= "select [tentrangthai] "
        query &= "from [tblSach], [tblTrangThai] "
        query &= "where [masach] = @masach "
        query &= "  and [tblSach].[matrangthai] = [tblTrangThai].[matrangthai]"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", masach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        While reader.Read()
                            trangthai = reader("tentrangthai")
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function findTenSachFromMaSach(masach As String, ByRef sach As SachDTO) As Result

        Dim query As String = String.Empty
        query &= " SELECT *"
        query &= " FROM [tblSach]"
        query &= " WHERE"
        query &= " [masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", masach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        While reader.Read()
                            sach = New SachDTO(reader("masach"), reader("tensach"), reader("manhaxuatban"), reader("ngaynhap"), reader("matrangthai"),
                                                     reader("namxuatban"), reader("trigia"), reader("madocgiamuon"))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Nạp thông tin sách không thành công", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result()
    End Function

    Public Function traSachBangMaSach(masach As String) As Result

        Dim query As String = String.Empty
        query &= " UPDATE [tblSach]"
        query &= " SET"
        query &= " [madocgiamuon] = '' "
        query &= " WHERE"
        query &= " [masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", masach)
                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Cập nhật sách thành công", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function findWithMaDG(madocgia As String, ByRef listMS As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= " SELECT s.[masach]"
        query &= " FROM [tblSach] s, [tblDocGia] dg"
        query &= " WHERE s.[madocgiamuon] = dg.[madocgia]"
        query &= " AND dg.[madocgia] = @madocgia"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@madocgia", madocgia)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listMS.Clear()
                        While reader.Read()
                            listMS.Add(reader("masach"))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Tìm thông tin sách không thành công!", ex.StackTrace)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function findDetailWithMaSach(masach As String, ByRef tensach As String, ByRef ngaymuon As DateTime) As Result

        Dim query As String = String.Empty
        query &= " SELECT s.[tensach], pms.[ngaymuon]"
        query &= " FROM [tblSach] s, [tblChiTietPhieuMuon] ctpm, [tblPhieuMuonSach] pms"
        query &= " WHERE s.[masach] = ctpm.[masach]"
        query &= " AND ctpm.[maphieumuonsach] = pms.[maphieumuonsach]"
        query &= " AND s.[masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", masach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        While reader.Read()
                            tensach = reader("tensach")
                            ngaymuon = reader("ngaymuon")
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function findMaDocGiaMuonByMaSach(masach As String, ByRef madocgiamuon As String) As Result

        Dim query As String = String.Empty
        query &= " SELECT [madocgiamuon]"
        query &= " FROM [tblSach]"
        query &= " WHERE [masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", masach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        While reader.Read()
                            madocgiamuon = reader("madocgiamuon")
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function updateMaDocGiaMuon(masach As String, mddgm As String) As Result

        Dim query As String = String.Empty
        query &= " UPDATE [tblSach]"
        query &= " SET [madocgiamuon] = @madocgiamuon"
        query &= " WHERE [masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", masach)
                    .Parameters.AddWithValue("@madocgiamuon", mddgm)

                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function findMaSach(masach As String, ByRef num As Integer) As Result

        Dim query As String = String.Empty
        query &= " SELECT COUNT(*) AS i"
        query &= " FROM [tblSach]"
        query &= " WHERE [masach] = @masach"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@masach", masach)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        While reader.Read()
                            num = reader("i")
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function
End Class
