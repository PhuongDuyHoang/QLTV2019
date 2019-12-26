Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class ChiTietPhieuTraDAL
    Private connectionString As String

    Public Sub New()
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function build_mactphieutra(ByRef nextMactPhieuTra As String) As Result
        nextMactPhieuTra = String.Empty
        nextMactPhieuTra = "CTPT"

        Dim query As String = String.Empty
        query &= "SELECT TOP 1 [machitietphieutra] "
        query &= "FROM [tblChiTietPhieuTra] "
        query &= "ORDER BY [machitietphieutra] DESC "

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
                            msOnDB = reader("machitietphieutra")
                        End While
                    End If
                    If (msOnDB <> Nothing And msOnDB.Length >= 8) Then
                        Dim v = msOnDB.Substring(4)
                        Dim convertDecimal = Convert.ToDecimal(v)
                        convertDecimal = convertDecimal + 1
                        Dim tmp = convertDecimal.ToString()
                        tmp = tmp.PadLeft(msOnDB.Length - 4, "0")
                        nextMactPhieuTra = nextMactPhieuTra + tmp
                        System.Console.WriteLine(nextMactPhieuTra)
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

    Public Function insert(ctpt As ChiTietPhieuTraDTO) As Result

        Dim query As String = String.Empty
        query &= "INSERT INTO [tblChiTietPhieuTra] ([machitietphieutra], [maphieutrasach], [masach])"
        query &= "VALUES (@machitietphieutra,@maphieutrasach,@masach)"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@machitietphieutra", ctpt.MaChiTietPhieuTra)
                    .Parameters.AddWithValue("@maphieutrasach", ctpt.MaPhieuTraSach)
                    .Parameters.AddWithValue("@masach", ctpt.MaSach)
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

    Public Function selectALL(ByRef listCTPhieuTra As List(Of ChiTietPhieuTraDTO)) As Result

        Dim query As String = String.Empty
        query &= "SELECT [machitietphieutra], [maphieutrasach], [masach]"
        query &= "FROM [tblChiTietPhieuTra]"


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
                        listCTPhieuTra.Clear()
                        While reader.Read()
                            listCTPhieuTra.Add(New ChiTietPhieuTraDTO(reader("machitietphieutra"), reader("maphieutrasach"), reader("masach")))
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
