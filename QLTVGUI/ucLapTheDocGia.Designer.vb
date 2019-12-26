<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class ucLapTheDocGia
    Inherits System.Windows.Forms.UserControl

    'UserControl overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.tbHoTen = New Bunifu.Framework.UI.BunifuMaterialTextbox()
        Me.lbMaDocGia = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.btnLuuVaThoat = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.btnThoat = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.btnLuu = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.dtpNgaySinh = New System.Windows.Forms.DateTimePicker()
        Me.tbDiaChi = New Bunifu.Framework.UI.BunifuMaterialTextbox()
        Me.tbEmail = New Bunifu.Framework.UI.BunifuMaterialTextbox()
        Me.dtpNgayLapThe = New System.Windows.Forms.DateTimePicker()
        Me.cbLoaiDocGia = New System.Windows.Forms.ComboBox()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(264, 11)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(182, 30)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "LẬP THẺ ĐỘC GIẢ"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.BackColor = System.Drawing.Color.Transparent
        Me.Label3.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.ForeColor = System.Drawing.Color.Black
        Me.Label3.Location = New System.Drawing.Point(146, 134)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(79, 21)
        Me.Label3.TabIndex = 1
        Me.Label3.Text = "Họ và tên:"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.BackColor = System.Drawing.Color.Transparent
        Me.Label4.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.ForeColor = System.Drawing.Color.Black
        Me.Label4.Location = New System.Drawing.Point(129, 310)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(96, 21)
        Me.Label4.TabIndex = 1
        Me.Label4.Text = "Loại độc giả:"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.BackColor = System.Drawing.Color.Transparent
        Me.Label5.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.ForeColor = System.Drawing.Color.Black
        Me.Label5.Location = New System.Drawing.Point(165, 222)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(60, 21)
        Me.Label5.TabIndex = 1
        Me.Label5.Text = "Địa chỉ:"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.BackColor = System.Drawing.Color.Transparent
        Me.Label6.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.ForeColor = System.Drawing.Color.Black
        Me.Label6.Location = New System.Drawing.Point(142, 178)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(83, 21)
        Me.Label6.TabIndex = 1
        Me.Label6.Text = "Ngày sinh:"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.BackColor = System.Drawing.Color.Transparent
        Me.Label7.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.ForeColor = System.Drawing.Color.Black
        Me.Label7.Location = New System.Drawing.Point(174, 266)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(51, 21)
        Me.Label7.TabIndex = 1
        Me.Label7.Text = "Email:"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.BackColor = System.Drawing.Color.Transparent
        Me.Label8.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.ForeColor = System.Drawing.Color.Black
        Me.Label8.Location = New System.Drawing.Point(124, 354)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(101, 21)
        Me.Label8.TabIndex = 1
        Me.Label8.Text = "Ngày lập thẻ:"
        '
        'tbHoTen
        '
        Me.tbHoTen.AutoSize = True
        Me.tbHoTen.BackColor = System.Drawing.Color.White
        Me.tbHoTen.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.tbHoTen.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.tbHoTen.ForeColor = System.Drawing.Color.Black
        Me.tbHoTen.HintForeColor = System.Drawing.Color.Empty
        Me.tbHoTen.HintText = ""
        Me.tbHoTen.isPassword = False
        Me.tbHoTen.LineFocusedColor = System.Drawing.Color.Gray
        Me.tbHoTen.LineIdleColor = System.Drawing.Color.Silver
        Me.tbHoTen.LineMouseHoverColor = System.Drawing.Color.Gray
        Me.tbHoTen.LineThickness = 2
        Me.tbHoTen.Location = New System.Drawing.Point(245, 125)
        Me.tbHoTen.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.tbHoTen.Name = "tbHoTen"
        Me.tbHoTen.Size = New System.Drawing.Size(331, 36)
        Me.tbHoTen.TabIndex = 1
        Me.tbHoTen.TextAlign = System.Windows.Forms.HorizontalAlignment.Left
        '
        'lbMaDocGia
        '
        Me.lbMaDocGia.AutoSize = True
        Me.lbMaDocGia.BackColor = System.Drawing.Color.Gainsboro
        Me.lbMaDocGia.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.lbMaDocGia.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbMaDocGia.ForeColor = System.Drawing.Color.Red
        Me.lbMaDocGia.Location = New System.Drawing.Point(245, 91)
        Me.lbMaDocGia.Name = "lbMaDocGia"
        Me.lbMaDocGia.Size = New System.Drawing.Size(82, 21)
        Me.lbMaDocGia.TabIndex = 3
        Me.lbMaDocGia.Text = "MaDocGia"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.Transparent
        Me.Label2.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.Red
        Me.Label2.Location = New System.Drawing.Point(136, 90)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(89, 21)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Mã độc giả:"
        '
        'btnLuuVaThoat
        '
        Me.btnLuuVaThoat.Activecolor = System.Drawing.Color.Silver
        Me.btnLuuVaThoat.BackColor = System.Drawing.Color.LightGray
        Me.btnLuuVaThoat.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btnLuuVaThoat.BorderRadius = 7
        Me.btnLuuVaThoat.ButtonText = "Lưu và Thoát"
        Me.btnLuuVaThoat.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnLuuVaThoat.DisabledColor = System.Drawing.Color.Silver
        Me.btnLuuVaThoat.ForeColor = System.Drawing.Color.Black
        Me.btnLuuVaThoat.Iconcolor = System.Drawing.Color.Transparent
        Me.btnLuuVaThoat.Iconimage = Global.QLTVGUI.My.Resources.Resources.icons8_Ok_64
        Me.btnLuuVaThoat.Iconimage_right = Nothing
        Me.btnLuuVaThoat.Iconimage_right_Selected = Nothing
        Me.btnLuuVaThoat.Iconimage_Selected = Nothing
        Me.btnLuuVaThoat.IconMarginLeft = 0
        Me.btnLuuVaThoat.IconMarginRight = 0
        Me.btnLuuVaThoat.IconRightVisible = True
        Me.btnLuuVaThoat.IconRightZoom = 0R
        Me.btnLuuVaThoat.IconVisible = True
        Me.btnLuuVaThoat.IconZoom = 60.0R
        Me.btnLuuVaThoat.IsTab = False
        Me.btnLuuVaThoat.Location = New System.Drawing.Point(285, 470)
        Me.btnLuuVaThoat.Name = "btnLuuVaThoat"
        Me.btnLuuVaThoat.Normalcolor = System.Drawing.Color.LightGray
        Me.btnLuuVaThoat.OnHovercolor = System.Drawing.Color.Gray
        Me.btnLuuVaThoat.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnLuuVaThoat.selected = False
        Me.btnLuuVaThoat.Size = New System.Drawing.Size(141, 41)
        Me.btnLuuVaThoat.TabIndex = 8
        Me.btnLuuVaThoat.Text = "Lưu và Thoát"
        Me.btnLuuVaThoat.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnLuuVaThoat.Textcolor = System.Drawing.Color.Black
        Me.btnLuuVaThoat.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'btnThoat
        '
        Me.btnThoat.Activecolor = System.Drawing.Color.Silver
        Me.btnThoat.BackColor = System.Drawing.Color.LightGray
        Me.btnThoat.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btnThoat.BorderRadius = 7
        Me.btnThoat.ButtonText = "Thoát"
        Me.btnThoat.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnThoat.DisabledColor = System.Drawing.Color.Silver
        Me.btnThoat.ForeColor = System.Drawing.Color.Black
        Me.btnThoat.Iconcolor = System.Drawing.Color.Transparent
        Me.btnThoat.Iconimage = Global.QLTVGUI.My.Resources.Resources.icons8_Enter_64
        Me.btnThoat.Iconimage_right = Nothing
        Me.btnThoat.Iconimage_right_Selected = Nothing
        Me.btnThoat.Iconimage_Selected = Nothing
        Me.btnThoat.IconMarginLeft = 0
        Me.btnThoat.IconMarginRight = 0
        Me.btnThoat.IconRightVisible = True
        Me.btnThoat.IconRightZoom = 0R
        Me.btnThoat.IconVisible = True
        Me.btnThoat.IconZoom = 60.0R
        Me.btnThoat.IsTab = False
        Me.btnThoat.Location = New System.Drawing.Point(496, 470)
        Me.btnThoat.Name = "btnThoat"
        Me.btnThoat.Normalcolor = System.Drawing.Color.LightGray
        Me.btnThoat.OnHovercolor = System.Drawing.Color.Gray
        Me.btnThoat.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnThoat.selected = False
        Me.btnThoat.Size = New System.Drawing.Size(90, 41)
        Me.btnThoat.TabIndex = 9
        Me.btnThoat.Text = "Thoát"
        Me.btnThoat.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnThoat.Textcolor = System.Drawing.Color.Black
        Me.btnThoat.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'btnLuu
        '
        Me.btnLuu.Activecolor = System.Drawing.Color.Silver
        Me.btnLuu.BackColor = System.Drawing.Color.LightGray
        Me.btnLuu.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btnLuu.BorderRadius = 7
        Me.btnLuu.ButtonText = "Lưu"
        Me.btnLuu.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnLuu.DisabledColor = System.Drawing.Color.Silver
        Me.btnLuu.ForeColor = System.Drawing.Color.Black
        Me.btnLuu.Iconcolor = System.Drawing.Color.Transparent
        Me.btnLuu.Iconimage = Global.QLTVGUI.My.Resources.Resources.icons8_Save_64
        Me.btnLuu.Iconimage_right = Nothing
        Me.btnLuu.Iconimage_right_Selected = Nothing
        Me.btnLuu.Iconimage_Selected = Nothing
        Me.btnLuu.IconMarginLeft = 0
        Me.btnLuu.IconMarginRight = 0
        Me.btnLuu.IconRightVisible = True
        Me.btnLuu.IconRightZoom = 0R
        Me.btnLuu.IconVisible = True
        Me.btnLuu.IconZoom = 60.0R
        Me.btnLuu.IsTab = False
        Me.btnLuu.Location = New System.Drawing.Point(125, 470)
        Me.btnLuu.Name = "btnLuu"
        Me.btnLuu.Normalcolor = System.Drawing.Color.LightGray
        Me.btnLuu.OnHovercolor = System.Drawing.Color.Gray
        Me.btnLuu.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnLuu.selected = False
        Me.btnLuu.Size = New System.Drawing.Size(90, 41)
        Me.btnLuu.TabIndex = 7
        Me.btnLuu.Text = "Lưu"
        Me.btnLuu.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnLuu.Textcolor = System.Drawing.Color.Black
        Me.btnLuu.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'dtpNgaySinh
        '
        Me.dtpNgaySinh.CalendarMonthBackground = System.Drawing.Color.WhiteSmoke
        Me.dtpNgaySinh.CalendarTitleBackColor = System.Drawing.SystemColors.Control
        Me.dtpNgaySinh.CalendarTrailingForeColor = System.Drawing.Color.Black
        Me.dtpNgaySinh.CustomFormat = "dd/MM/yyyy"
        Me.dtpNgaySinh.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.dtpNgaySinh.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtpNgaySinh.Location = New System.Drawing.Point(245, 173)
        Me.dtpNgaySinh.Name = "dtpNgaySinh"
        Me.dtpNgaySinh.Size = New System.Drawing.Size(128, 29)
        Me.dtpNgaySinh.TabIndex = 2
        Me.dtpNgaySinh.Value = New Date(2000, 1, 1, 0, 0, 0, 0)
        '
        'tbDiaChi
        '
        Me.tbDiaChi.AutoSize = True
        Me.tbDiaChi.BackColor = System.Drawing.Color.White
        Me.tbDiaChi.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.tbDiaChi.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.tbDiaChi.ForeColor = System.Drawing.Color.Black
        Me.tbDiaChi.HintForeColor = System.Drawing.Color.Empty
        Me.tbDiaChi.HintText = ""
        Me.tbDiaChi.isPassword = False
        Me.tbDiaChi.LineFocusedColor = System.Drawing.Color.Gray
        Me.tbDiaChi.LineIdleColor = System.Drawing.Color.Silver
        Me.tbDiaChi.LineMouseHoverColor = System.Drawing.Color.Gray
        Me.tbDiaChi.LineThickness = 2
        Me.tbDiaChi.Location = New System.Drawing.Point(245, 213)
        Me.tbDiaChi.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.tbDiaChi.Name = "tbDiaChi"
        Me.tbDiaChi.Size = New System.Drawing.Size(331, 36)
        Me.tbDiaChi.TabIndex = 3
        Me.tbDiaChi.TextAlign = System.Windows.Forms.HorizontalAlignment.Left
        '
        'tbEmail
        '
        Me.tbEmail.AutoSize = True
        Me.tbEmail.BackColor = System.Drawing.Color.White
        Me.tbEmail.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.tbEmail.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.tbEmail.ForeColor = System.Drawing.Color.Black
        Me.tbEmail.HintForeColor = System.Drawing.Color.Empty
        Me.tbEmail.HintText = ""
        Me.tbEmail.isPassword = False
        Me.tbEmail.LineFocusedColor = System.Drawing.Color.Gray
        Me.tbEmail.LineIdleColor = System.Drawing.Color.Silver
        Me.tbEmail.LineMouseHoverColor = System.Drawing.Color.Gray
        Me.tbEmail.LineThickness = 2
        Me.tbEmail.Location = New System.Drawing.Point(245, 257)
        Me.tbEmail.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.tbEmail.Name = "tbEmail"
        Me.tbEmail.Size = New System.Drawing.Size(331, 36)
        Me.tbEmail.TabIndex = 4
        Me.tbEmail.TextAlign = System.Windows.Forms.HorizontalAlignment.Left
        '
        'dtpNgayLapThe
        '
        Me.dtpNgayLapThe.CalendarMonthBackground = System.Drawing.Color.WhiteSmoke
        Me.dtpNgayLapThe.CalendarTitleBackColor = System.Drawing.SystemColors.Control
        Me.dtpNgayLapThe.CalendarTrailingForeColor = System.Drawing.Color.Black
        Me.dtpNgayLapThe.CustomFormat = "ddddddddd, dd/MM/yyyy"
        Me.dtpNgayLapThe.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.dtpNgayLapThe.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtpNgayLapThe.Location = New System.Drawing.Point(245, 350)
        Me.dtpNgayLapThe.Name = "dtpNgayLapThe"
        Me.dtpNgayLapThe.Size = New System.Drawing.Size(221, 29)
        Me.dtpNgayLapThe.TabIndex = 6
        Me.dtpNgayLapThe.Value = New Date(2018, 6, 28, 0, 0, 0, 0)
        '
        'cbLoaiDocGia
        '
        Me.cbLoaiDocGia.BackColor = System.Drawing.SystemColors.Window
        Me.cbLoaiDocGia.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbLoaiDocGia.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.cbLoaiDocGia.FormattingEnabled = True
        Me.cbLoaiDocGia.Location = New System.Drawing.Point(245, 306)
        Me.cbLoaiDocGia.Name = "cbLoaiDocGia"
        Me.cbLoaiDocGia.Size = New System.Drawing.Size(128, 29)
        Me.cbLoaiDocGia.TabIndex = 5
        '
        'GroupBox1
        '
        Me.GroupBox1.Location = New System.Drawing.Point(83, 63)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(544, 340)
        Me.GroupBox1.TabIndex = 12
        Me.GroupBox1.TabStop = False
        '
        'ucLapTheDocGia
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.WhiteSmoke
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.Controls.Add(Me.dtpNgaySinh)
        Me.Controls.Add(Me.tbDiaChi)
        Me.Controls.Add(Me.tbEmail)
        Me.Controls.Add(Me.dtpNgayLapThe)
        Me.Controls.Add(Me.cbLoaiDocGia)
        Me.Controls.Add(Me.btnLuuVaThoat)
        Me.Controls.Add(Me.btnThoat)
        Me.Controls.Add(Me.btnLuu)
        Me.Controls.Add(Me.lbMaDocGia)
        Me.Controls.Add(Me.tbHoTen)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.GroupBox1)
        Me.ForeColor = System.Drawing.SystemColors.ControlDark
        Me.Name = "ucLapTheDocGia"
        Me.Size = New System.Drawing.Size(710, 530)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents tbHoTen As Bunifu.Framework.UI.BunifuMaterialTextbox
    Friend WithEvents lbMaDocGia As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents btnLuu As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents btnLuuVaThoat As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents btnThoat As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents dtpNgaySinh As System.Windows.Forms.DateTimePicker
    Friend WithEvents tbDiaChi As Bunifu.Framework.UI.BunifuMaterialTextbox
    Friend WithEvents tbEmail As Bunifu.Framework.UI.BunifuMaterialTextbox
    Friend WithEvents dtpNgayLapThe As System.Windows.Forms.DateTimePicker
    Friend WithEvents cbLoaiDocGia As System.Windows.Forms.ComboBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
End Class
