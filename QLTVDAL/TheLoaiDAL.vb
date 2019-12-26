Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class TheLoaiDAL
    Private connectionString As String

    Public Sub New()
        ' Read ConnectionString value from App.config file
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function build_matheloai(ByRef nextMaTheLoai As String) As Result

        nextMaTheLoai = String.Empty
        nextMaTheLoai = "TL"

        Dim query As String = String.Empty
        query &= "SELECT TOP 1 [matheloai] "
        query &= "FROM [tblTheLoai] "
        query &= "ORDER BY [matheloai] DESC "

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
                            msOnDB = reader("matheloai")
                        End While
                    End If
                    If (msOnDB <> Nothing And msOnDB.Length >= 8) Then
                        Dim v = msOnDB.Substring(2)
                        Dim convertDecimal = Convert.ToDecimal(v)
                        convertDecimal = convertDecimal + 1
                        Dim tmp = convertDecimal.ToString()
                        tmp = tmp.PadLeft(msOnDB.Length - 2, "0")
                        nextMaTheLoai = nextMaTheLoai + tmp
                        System.Console.WriteLine(nextMaTheLoai)
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

    Public Function selectALL(ByRef listTheLoai As List(Of TheLoaiDTO)) As Result

        Dim query As String = String.Empty
        query &= " SELECT [matheloai], [tentheloai]"
        query &= " FROM [tblTheLoai]"


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
                        listTheLoai.Clear()
                        While reader.Read()
                            listTheLoai.Add(New TheLoaiDTO(reader("matheloai"), reader("tentheloai")))
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

    Public Function deleteByMaTheLoai(matheloai As String) As Result

        Dim query As String = String.Empty
        query &= "DELETE FROM [tblTheLoai] "
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

    Public Function updateByMaTheLoai(matheloai As String, tentheloaimoi As String) As Result

        Dim query As String = String.Empty
        query &= "UPDATE [tblTheLoai] "
        query &= "SET [tentheloai] = @tentheloaimoi "
        query &= "WHERE [matheloai] = @matheloai"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@matheloai", matheloai)
                    .Parameters.AddWithValue("@tentheloaimoi", tentheloaimoi)
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

    Public Function insert(theloai As TheLoaiDTO) As Result

        Dim query As String = String.Empty
        query &= "INSERT INTO [tblTheLoai] ([matheloai], [tentheloai]) "
        query &= "VALUES (@matheloai, @tentheloai)"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@matheloai", theloai.MaTheLoai)
                    .Parameters.AddWithValue("@tentheloai", theloai.TenTheLoai)
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
End Class
