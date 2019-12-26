Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class ThamSoDAL
    Private connectionString As String

    Public Sub New()
        ' Read ConnectionString value from App.config file
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function selectALL(ByRef thamso As ThamSoDTO) As Result

        Dim query As String = String.Empty
        query &= " SELECT [tuoitoithieu], [tuoitoida], [hansudung], [namxuatbantoithieu], [soluongsachmuontoida], [thoigianmuontoida]"
        query &= " FROM [tblThamSo]"


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
                        While reader.Read()
                            thamso = New ThamSoDTO(reader("tuoitoithieu"), reader("tuoitoida"), reader("hansudung"), reader("namxuatbantoithieu"),
                                                   reader("soluongsachmuontoida"), reader("thoigianmuontoida"))
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Lấy danh sách quy định không thành công!", ex.StackTrace) ' that bai
                End Try
            End Using
        End Using
        Return New Result(True) ' thanh cong
    End Function

    Public Function update(thamso As ThamSoDTO) As Result

        Dim query As String = String.Empty
        query &= " UPDATE [tblThamSo] SET"
        query &= " [tuoitoithieu] = @tuoitoithieu "
        query &= " ,[tuoitoida] = @tuoitoida "
        query &= " ,[hansudung] = @hansudung "
        query &= " ,[namxuatbantoithieu] = @namxuatbantoithieu "
        query &= " ,[soluongsachmuontoida] = @soluongsachmuontoida "
        query &= " ,[thoigianmuontoida] = @thoigianmuontoida "

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@tuoitoithieu", thamso.TuoiToiThieu)
                    .Parameters.AddWithValue("@tuoitoida", thamso.TuoiToiDa)
                    .Parameters.AddWithValue("@hansudung", thamso.HanSuDung)
                    .Parameters.AddWithValue("@namxuatbantoithieu", thamso.NamXuatBanToiThieu)
                    .Parameters.AddWithValue("@soluongsachmuontoida", thamso.SoLuongSachMuonToiDa)
                    .Parameters.AddWithValue("@thoigianmuontoida", thamso.ThoiGianMuonToiDa)
                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    ' cap nhat that bai
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True) ' thanh cong
    End Function

    Public Function getSoNgayMuonToiDa(ByRef songay As Integer) As Result

        Dim query As String = String.Empty
        query &= " SELECT [thoigianmuontoida]"
        query &= " FROM [tblThamSo]"

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
                        While reader.Read()
                            songay = reader("thoigianmuontoida")
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

    Public Function getSoSachMuonToiDa(ByRef sosach As Integer) As Result

        Dim query As String = String.Empty
        query &= " SELECT [soluongsachmuontoida]"
        query &= " FROM [tblThamSo]"

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
                        While reader.Read()
                            sosach = reader("soluongsachmuontoida")
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

    Public Function getHanSuDung(ByRef hansudung As Integer) As Result

        Dim query As String = String.Empty
        query &= " SELECT [hansudung]"
        query &= " FROM [tblThamSo]"

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
                        While reader.Read()
                            hansudung = reader("hansudung")
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
