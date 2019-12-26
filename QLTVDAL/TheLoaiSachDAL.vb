Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class TheLoaiSachDAL
    Private connectionString As String

    Public Sub New()
        ' Read ConnectionString value from App.config file
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function build_matls(ByRef nextMaTLS As String) As Result

        nextMaTLS = String.Empty
        nextMaTLS = "TLS"

        Dim query As String = String.Empty
        query &= "SELECT TOP 1 [matheloaisach] "
        query &= "FROM [tblTheLoaiSach] "
        query &= "ORDER BY [matheloaisach] DESC "

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
                            msOnDB = reader("matheloaisach")
                        End While
                    End If
                    If (msOnDB <> Nothing And msOnDB.Length >= 8) Then
                        Dim v = msOnDB.Substring(3)
                        Dim convertDecimal = Convert.ToDecimal(v)
                        convertDecimal = convertDecimal + 1
                        Dim tmp = convertDecimal.ToString()
                        tmp = tmp.PadLeft(msOnDB.Length - 3, "0")
                        nextMaTLS = nextMaTLS + tmp
                        System.Console.WriteLine(nextMaTLS)
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

    Public Function selectALL(ByRef listTLS As List(Of TheLoaiSachDTO)) As Result

        Dim query As String = String.Empty
        query &= " SELECT [matheloaisach], [masach], [matheloai]"
        query &= " FROM [tblTheLoaiSach]"


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
                        listTLS.Clear()
                        While reader.Read()
                            listTLS.Add(New TheLoaiSachDTO(reader("matheloaisach"), reader("masach"), reader("matheloai")))
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

    Public Function selectALL_MaTheLoai(matheloai As String, ByRef listMaSach As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= " SELECT [masach]"
        query &= " FROM [tblTheLoaiSach]"
        query &= " WHERE [matheloai] like @matheloai"


        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@matheloai", matheloai)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        listMaSach.Clear()
                        While reader.Read()
                            listMaSach.Add(reader("masach"))
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

    Public Function getTenTheLoai_ByMaSach(masach As String, ByRef listTheLoai As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= " SELECT [tentheloai]"
        query &= " FROM [tblTheLoaiSach], [tblTheLoai] "
        query &= " WHERE [masach] = @masach "
        query &= " AND [tblTheLoaiSach].[matheloai] = [tblTheLoai].[matheloai]"


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
                        listTheLoai.Clear()
                        While reader.Read()
                            listTheLoai.Add(reader("tentheloai"))
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

    Public Function deleteAllByMaTheLoai(matheloai As String) As Result

        Dim query As String = String.Empty
        query &= "DELETE FROM [tblTheLoaiSach] "
        query &= "WHERE [matheloai] = @matheloai"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@matheloai", matheloai)
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
        Return New Result(True) ' thanh cong

    End Function

    Public Function insert(tls As TheLoaiSachDTO) As Result
        Dim query As String = String.Empty
        query &= "insert into [tblTheLoaiSach] "
        query &= "values (@matheloaisach, @masach, @matheloai)"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@matheloaisach", tls.MaTheLoaiSach)
                    .Parameters.AddWithValue("@masach", tls.MaSach)
                    .Parameters.AddWithValue("@matheloai", tls.MaTheLoai)
                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()

                Catch ex As Exception
                    conn.Close()
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True)
    End Function
End Class
