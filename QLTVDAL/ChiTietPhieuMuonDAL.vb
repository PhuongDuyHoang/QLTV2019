Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class ChiTietPhieuMuonDAL
    Private connectionString As String

    Public Sub New()
        ' Read ConnectionString value from App.config file
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function build_mactpm(ByRef nextMaCTPM As String) As Result
        nextMaCTPM = String.Empty
        nextMaCTPM = "CTPM"

        Dim query As String = String.Empty
        query &= "SELECT TOP 1 [machitietphieumuon] "
        query &= "FROM [tblChiTietPhieuMuon] "
        query &= "ORDER BY [machitietphieumuon] DESC "

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
                            msOnDB = reader("machitietphieumuon")
                        End While
                    End If
                    If (msOnDB <> Nothing And msOnDB.Length >= 8) Then
                        Dim v = msOnDB.Substring(4)
                        Dim convertDecimal = Convert.ToDecimal(v)
                        convertDecimal = convertDecimal + 1
                        Dim tmp = convertDecimal.ToString()
                        tmp = tmp.PadLeft(msOnDB.Length - 4, "0")
                        nextMaCTPM = nextMaCTPM + tmp
                        System.Console.WriteLine(nextMaCTPM)
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

    Public Function selectALL(ByRef listctpm As List(Of ChiTietPhieuMuonDTO)) As Result

        Dim query As String = String.Empty
        query &= "SELECT *"
        query &= "FROM [tblChiTietPhieuMuon]"


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
                        listctpm.Clear()
                        While reader.Read()
                            listctpm.Add(New ChiTietPhieuMuonDTO(reader("machitietphieumuon"), reader("maphieumuonsach"), reader("masach")))
                        End While
                    End If

                Catch ex As Exception
                    conn.Close()
                    System.Console.WriteLine(ex.StackTrace)
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True) ' thanh cong
    End Function

    Public Function insert(ctpm As ChiTietPhieuMuonDTO) As Result

        Dim query As String = String.Empty
        query &= " INSERT INTO [tblChiTietPhieuMuon]"
        query &= " VALUES (@machitietphieumuon, @maphieumuonsach, @masach)"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@machitietphieumuon", ctpm.MaChiTietPhieuMuon)
                    .Parameters.AddWithValue("@maphieumuonsach", ctpm.MaPhieuMuonSach)
                    .Parameters.AddWithValue("@masach", ctpm.MaSach)
                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()
                Catch ex As Exception
                    conn.Close()
                    System.Console.WriteLine(ex.StackTrace)
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function

    Public Function baocao1(month As String, year As String, ByRef listten As List(Of String), ByRef listsoluotmuon As List(Of Integer))

        Dim query As String = String.Empty
        query &= " SELECT [tentheloai], COUNT(machitietphieumuon) cnt"
        query &= " FROM [tblTheLoai] tl, [tblChiTietPhieuMuon] ct, [tblPhieuMuonSach] pms, [tblTheLoaiSach] tls "
        query &= " WHERE tl.[matheloai] = tls.[matheloai] "
        query &= "      AND tls.[masach] = ct.[masach] "
        query &= "      AND ct.[maphieumuonsach] = pms.[maphieumuonsach] "
        query &= "      AND MONTH(pms.[ngaymuon]) = @month "
        query &= "      AND YEAR(pms.[ngaymuon]) = @year "
        query &= " GROUP BY [tentheloai]"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@month", month)
                    .Parameters.AddWithValue("@year", year)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listten.Clear()
                        listsoluotmuon.Clear()
                        While reader.Read()
                            listten.Add(reader("tentheloai"))
                            listsoluotmuon.Add(reader("cnt"))
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

    Public Function baocao2(month As String, ByRef listten As List(Of String), ByRef listsoluotmuon As List(Of Integer))

        Dim query As String = String.Empty
        query &= " SELECT [tentheloai], COUNT(machitietphieumuon) cnt"
        query &= " FROM [tblTheLoai] tl, [tblChiTietPhieuMuon] ct, [tblPhieuMuonSach] pms, [tblTheLoaiSach] tls "
        query &= " WHERE tl.[matheloai] = tls.[matheloai] "
        query &= "      AND tls.[masach] = ct.[masach] "
        query &= "      AND ct.[maphieumuonsach] = pms.[maphieumuonsach] "
        query &= "      AND MONTH(pms.[ngaymuon]) = @month "
        query &= " GROUP BY [tentheloai]"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@month", month)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listten.Clear()
                        listsoluotmuon.Clear()
                        While reader.Read()
                            listten.Add(reader("tentheloai"))
                            listsoluotmuon.Add(reader("cnt"))
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

    Public Function baocao3(year As String, ByRef listten As List(Of String), ByRef listsoluotmuon As List(Of Integer))

        Dim query As String = String.Empty
        query &= " SELECT [tentheloai], COUNT(machitietphieumuon) cnt"
        query &= " FROM [tblTheLoai] tl, [tblChiTietPhieuMuon] ct, [tblPhieuMuonSach] pms, [tblTheLoaiSach] tls "
        query &= " WHERE tl.[matheloai] = tls.[matheloai] "
        query &= "      AND tls.[masach] = ct.[masach] "
        query &= "      AND ct.[maphieumuonsach] = pms.[maphieumuonsach] "
        query &= "      AND YEAR(pms.[ngaymuon]) = @year "
        query &= " GROUP BY [tentheloai]"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@year", year)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listten.Clear()
                        listsoluotmuon.Clear()
                        While reader.Read()
                            listten.Add(reader("tentheloai"))
                            listsoluotmuon.Add(reader("cnt"))
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

    Public Function baocao4(ByRef listten As List(Of String), ByRef listsoluotmuon As List(Of Integer))

        Dim query As String = String.Empty
        query &= " SELECT [tentheloai], COUNT(machitietphieumuon) cnt"
        query &= " FROM [tblTheLoai] tl, [tblChiTietPhieuMuon] ct, [tblPhieuMuonSach] pms, [tblTheLoaiSach] tls "
        query &= " WHERE tl.[matheloai] = tls.[matheloai] "
        query &= "      AND tls.[masach] = ct.[masach] "
        query &= "      AND ct.[maphieumuonsach] = pms.[maphieumuonsach] "
        query &= " GROUP BY [tentheloai]"

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
                        listten.Clear()
                        listsoluotmuon.Clear()
                        While reader.Read()
                            listten.Add(reader("tentheloai"))
                            listsoluotmuon.Add(reader("cnt"))
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
