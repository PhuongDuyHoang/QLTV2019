Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class PhieuMuonSachDAL
    Private connectionString As String

    Public Sub New()
        ' Read ConnectionString value from App.config file
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function build_maphieumuon(ByRef nextMaPhieuMuon As String) As Result
        nextMaPhieuMuon = String.Empty
        nextMaPhieuMuon = "PMS"

        Dim query As String = String.Empty
        query &= "SELECT TOP 1 [maphieumuonsach] "
        query &= "FROM [tblPhieuMuonSach] "
        query &= "ORDER BY [maphieumuonsach] DESC "

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
                            msOnDB = reader("maphieumuonsach")
                        End While
                    End If
                    If (msOnDB <> Nothing And msOnDB.Length >= 8) Then
                        Dim v = msOnDB.Substring(3)
                        Dim convertDecimal = Convert.ToDecimal(v)
                        convertDecimal = convertDecimal + 1
                        Dim tmp = convertDecimal.ToString()
                        tmp = tmp.PadLeft(msOnDB.Length - 3, "0")
                        nextMaPhieuMuon = nextMaPhieuMuon + tmp
                        System.Console.WriteLine(nextMaPhieuMuon)
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

    Public Function insert(pms As PhieuMuonSachDTO) As Result

        Dim query As String = String.Empty
        query &= "INSERT INTO [tblPhieuMuonSach] ([maphieumuonsach], [ngaymuon], [madocgia])"
        query &= "VALUES (@maphieumuonsach,@ngaymuon,@madocgia)"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@maphieumuonsach", pms.MaPhieuMuonSach)
                    .Parameters.AddWithValue("@ngaymuon", pms.NgayMuon)
                    .Parameters.AddWithValue("@madocgia", pms.MaDocGia)
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

    Public Function selectALL(ByRef listPhieuMuon As List(Of PhieuMuonSachDTO)) As Result

        Dim query As String = String.Empty
        query &= "SELECT [maphieumuonsach], [ngaymuon], [madocgia]"
        query &= "FROM [tblPhieuMuonSach]"


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
                        listPhieuMuon.Clear()
                        While reader.Read()
                            listPhieuMuon.Add(New PhieuMuonSachDTO(reader("maphieumuonsach"), reader("ngaymuon"), reader("madocgia")))
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
