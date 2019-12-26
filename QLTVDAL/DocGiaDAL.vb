Imports System.Configuration
Imports System.Data.SqlClient
Imports QLTVDTO
Imports Utility

Public Class DocGiaDAL
    Private connectionString As String

    Public Sub New()
        ' Read ConnectionString value from App.config file
        connectionString = ConfigurationManager.AppSettings("ConnectionString")
    End Sub

    Public Sub New(ConnectionString As String)
        Me.connectionString = ConnectionString
    End Sub

    Public Function build_madocgia(ByRef Nextmadocgia As String) As Result

        Nextmadocgia = String.Empty
        Nextmadocgia = "DG"

        Dim query As String = String.Empty
        query &= "SELECT TOP 1 [madocgia] "
        query &= "FROM [tblDocGia] "
        query &= "ORDER BY [madocgia] DESC "

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
                            msOnDB = reader("madocgia")
                        End While
                    End If
                    If (msOnDB <> Nothing And msOnDB.Length >= 8) Then
                        Dim v = msOnDB.Substring(2)
                        Dim convertDecimal = Convert.ToDecimal(v)
                        convertDecimal = convertDecimal + 1
                        Dim tmp = convertDecimal.ToString()
                        tmp = tmp.PadLeft(msOnDB.Length - 2, "0")
                        Nextmadocgia = Nextmadocgia + tmp
                        System.Console.WriteLine(Nextmadocgia)
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

    Public Function insert(dg As DocGiaDTO) As Result

        Dim query As String = String.Empty
        query &= "INSERT INTO [tblDocGia] ([madocgia], [hotendocgia], [ngaysinh], [diachi], [email], [ngaylapthe], [maloaidocgia]) "
        query &= "VALUES (@madocgia, @hotendocgia,@ngaysinh, @diachi, @email, @ngaylapthe, @maloaidocgia)"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@madocgia", dg.MaDocGia)
                    .Parameters.AddWithValue("@hotendocgia", dg.HoTen)
                    .Parameters.AddWithValue("@ngaysinh", dg.NgaySinh)
                    .Parameters.AddWithValue("@diachi", dg.DiaChi)
                    .Parameters.AddWithValue("@email", dg.Email)
                    .Parameters.AddWithValue("@ngaylapthe", dg.NgayLapThe)
                    .Parameters.AddWithValue("@maloaidocgia", dg.MaLoaiDocGia)
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

    Public Function selectALL(ByRef listDocGia As List(Of DocGiaDTO)) As Result

        Dim query As String = String.Empty
        query &= "SELECT [madocgia], [hotendocgia], [ngaysinh], [diachi], [email], [ngaylapthe], [maloaidocgia]"
        query &= "FROM [tblDocGia]"


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
                        listDocGia.Clear()
                        While reader.Read()
                            listDocGia.Add(New DocGiaDTO(reader("madocgia"), reader("hotendocgia"), reader("ngaysinh"), reader("diachi"), reader("email"),
                                                         reader("ngaylapthe"), reader("maloaidocgia")))
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

    Public Function update(dg As DocGiaDTO) As Result

        Dim query As String = String.Empty
        query &= " UPDATE [tblDocGia] SET"
        query &= " [hotendocgia] = @hotendocgia "
        query &= " ,[ngaysinh] = @ngaysinh "
        query &= " ,[diachi] = @diachi "
        query &= " ,[email] = @email "
        query &= " ,[ngaylapthe] = @ngaylapthe "
        query &= " ,[maloaidocgia] = @maloaidocgia "
        query &= " WHERE "
        query &= " [madocgia] = @madocgia "

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@hotendocgia", dg.HoTen)
                    .Parameters.AddWithValue("@ngaysinh", dg.NgaySinh)
                    .Parameters.AddWithValue("@diachi", dg.DiaChi)
                    .Parameters.AddWithValue("@email", dg.Email)
                    .Parameters.AddWithValue("@ngaylapthe", dg.NgayLapThe)
                    .Parameters.AddWithValue("@maloaidocgia", dg.MaLoaiDocGia)
                End With
                Try
                    conn.Open()
                    comm.ExecuteNonQuery()
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    System.Console.WriteLine(ex.StackTrace)
                    Return New Result(False)
                End Try
            End Using
        End Using
        Return New Result(True) ' thanh cong
    End Function

    Public Function findWithMaDG(ByRef maDocGia As String, ByRef tenDocGia As String, ByRef ngayLapThe As DateTime) As Result

        Dim query As String = String.Empty
        query &= " SELECT [hotendocgia], [ngaylapthe]"
        query &= " FROM [tblDocGia]"
        query &= " WHERE"
        query &= " [madocgia] = @madocgia"

        Using conn As New SqlConnection(connectionString)
            Using comm As New SqlCommand()
                With comm
                    .Connection = conn
                    .CommandType = CommandType.Text
                    .CommandText = query
                    .Parameters.AddWithValue("@madocgia", maDocGia)
                End With
                Try
                    conn.Open()
                    Dim reader As SqlDataReader
                    reader = comm.ExecuteReader()
                    If reader.HasRows = True Then
                        While reader.Read()
                            tenDocGia = reader("hotendocgia")
                            ngayLapThe = reader("ngaylapthe")
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine(ex.StackTrace)
                    conn.Close()
                    Return New Result(False, "Nạp thông tin độc giả không thành công", ex.StackTrace)
                End Try

            End Using
        End Using
        Return New Result(True)
    End Function
End Class
