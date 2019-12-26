Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class PhieuTraSachDAL
    Private connectionString As String

    Public Sub New()
        ' Read ConnectionString value from App.config file
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function build_maphieutra(ByRef nextMaPhieuTra As String) As Result
        nextMaPhieuTra = String.Empty
        nextMaPhieuTra = "PTS"

        Dim query As String = String.Empty
        query &= "SELECT TOP 1 [maphieutrasach] "
        query &= "FROM [tblPhieuTraSach] "
        query &= "ORDER BY [maphieutrasach] DESC "

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
                            msOnDB = reader("maphieutrasach")
                        End While
                    End If
                    If (msOnDB <> Nothing And msOnDB.Length >= 8) Then
                        Dim v = msOnDB.Substring(3)
                        Dim convertDecimal = Convert.ToDecimal(v)
                        convertDecimal = convertDecimal + 1
                        Dim tmp = convertDecimal.ToString()
                        tmp = tmp.PadLeft(msOnDB.Length - 3, "0")
                        nextMaPhieuTra = nextMaPhieuTra + tmp
                        System.Console.WriteLine(nextMaPhieuTra)
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

    Public Function insert(pts As PhieuTraSachDTO) As Result

        Dim query As String = String.Empty
        query &= "INSERT INTO [tblPhieuTraSach] ([maphieutrasach], [ngaytra], [madocgia])"
        query &= "VALUES (@maphieutrasach,@ngaytra,@madocgia)"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@maphieutrasach", pts.MaPhieuTraSach)
                    .Parameters.AddWithValue("@ngaytra", pts.NgayTra)
                    .Parameters.AddWithValue("@madocgia", pts.MaDocGia)
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

    Public Function selectALL(ByRef listPhieuTra As List(Of PhieuTraSachDTO)) As Result

        Dim query As String = String.Empty
        query &= "SELECT [maphieutrasach], [ngaytra], [madocgia]"
        query &= "FROM [tblPhieuTraSach]"


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
                        listPhieuTra.Clear()
                        While reader.Read()
                            listPhieuTra.Add(New PhieuTraSachDTO(reader("maphieutrasach"), reader("ngaytra"), reader("madocgia")))
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


End Class
