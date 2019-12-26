Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class TaiKhoanDAL
    Private connectionString As String

    Public Sub New()
        ' Read ConnectionString value from App.config file
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function update(id As String, newpass As String, ByRef ok As Boolean) As Result

        Dim query As String = String.Empty
        query &= " UPDATE [tblTaiKhoan] SET"
        query &= " [password] = @newpass "
        query &= " WHERE "
        query &= " [id] = @id "

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@id", id)
                    .Parameters.AddWithValue("@newpass", newpass)
                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    ok = False
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True) ' thanh cong
    End Function

    Public Function kiemTra(id As String, password As String, ByRef ok As Boolean, ByRef type As Integer) As Result

        Dim query As String = String.Empty
        query &= " SELECT [maloaitaikhoan] "
        query &= " FROM [tblTaiKhoan] "
        query &= " WHERE [id] = @id AND [password] = @password"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@id", id)
                    .Parameters.AddWithValue("@password", password)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        While reader.Read()
                            ok = True
                            type = reader("maloaitaikhoan")
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
