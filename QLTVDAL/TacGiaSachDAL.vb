Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class TacGiaSachDAL
    Private connectionString As String

    Public Sub New()
        ' Read ConnectionString value from App.config file
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function build_matgs(ByRef nextMaTGS As String) As Result

        nextMaTGS = String.Empty
        nextMaTGS = "TGS"

        Dim query As String = String.Empty
        query &= "SELECT TOP 1 [matacgiasach] "
        query &= "FROM [tblTacGiaSach] "
        query &= "ORDER BY [matacgiasach] DESC "

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
                            msOnDB = reader("matacgiasach")
                        End While
                    End If
                    If (msOnDB <> Nothing And msOnDB.Length >= 8) Then
                        Dim v = msOnDB.Substring(3)
                        Dim convertDecimal = Convert.ToDecimal(v)
                        convertDecimal = convertDecimal + 1
                        Dim tmp = convertDecimal.ToString()
                        tmp = tmp.PadLeft(msOnDB.Length - 3, "0")
                        nextMaTGS = nextMaTGS + tmp
                        System.Console.WriteLine(nextMaTGS)
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

    Public Function selectALL(ByRef lisTGS As List(Of TacGiaSachDTO)) As Result

        Dim query As String = String.Empty
        query &= " SELECT [matacgiasach], [masach], [matacgia]"
        query &= " FROM [tblTacGiaSach]"


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
                        lisTGS.Clear()
                        While reader.Read()
                            lisTGS.Add(New TacGiaSachDTO(reader("matacgiasach"), reader("masach"), reader("matacgia")))
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

    Public Function selectALL_MaTacGia(matacgia As String, ByRef listMaSach As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= " SELECT [masach]"
        query &= " FROM [tblTacGiaSach]"
        query &= " WHERE [matacgia] LIKE @matacgia"


        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@matacgia", matacgia)
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

    Public Function get_TenTacGia_ByMaSach(masach As String, ByRef listtacgia As List(Of String)) As Result

        Dim query As String = String.Empty
        query &= " SELECT [tentacgia]"
        query &= " FROM [tblTacGiaSach], [tblTacGia]"
        query &= " WHERE [masach] = @masach "
        query &= " AND [tblTacGiaSach].[matacgia] = [tblTacGia].[matacgia]"


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
                        listtacgia.Clear()
                        While reader.Read()
                            listtacgia.Add(reader("tentacgia"))
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

    Public Function insert(tgs As TacGiaSachDTO) As Result
        Dim query As String = String.Empty
        query &= "insert into [tblTacGiaSach] "
        query &= "values (@matacgiasach, @masach, @matacgia)"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@matacgiasach", tgs.MaTacGiaSach)
                    .Parameters.AddWithValue("@masach", tgs.MaSach)
                    .Parameters.AddWithValue("@matacgia", tgs.MaTacGia)
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
