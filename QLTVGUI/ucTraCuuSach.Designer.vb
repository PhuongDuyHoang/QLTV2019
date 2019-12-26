<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ucTraCuuSach
    Inherits System.Windows.Forms.UserControl

    'UserControl overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
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
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle3 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle4 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle5 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.tbTenSach = New Bunifu.Framework.UI.BunifuMaterialTextbox()
        Me.cbTacGia = New System.Windows.Forms.ComboBox()
        Me.cbTheLoai = New System.Windows.Forms.ComboBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.tbMaSach = New Bunifu.Framework.UI.BunifuMaterialTextbox()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.cbTinhTrang = New System.Windows.Forms.ComboBox()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.dgDanhSachSach = New Bunifu.Framework.UI.BunifuCustomDataGrid()
        Me.MaSach = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TenSach = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TheLoai = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TacGia = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TinhTrang = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.btnThoat = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.btnTraCuu = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.btnXuatKetQua = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.GroupBox1.SuspendLayout()
        CType(Me.dgDanhSachSach, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(276, 11)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(158, 30)
        Me.Label1.TabIndex = 26
        Me.Label1.Text = "TRA CỨU SÁCH"
        '
        'tbTenSach
        '
        Me.tbTenSach.AutoSize = True
        Me.tbTenSach.BackColor = System.Drawing.Color.White
        Me.tbTenSach.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.tbTenSach.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Italic)
        Me.tbTenSach.ForeColor = System.Drawing.Color.Silver
        Me.tbTenSach.HintForeColor = System.Drawing.Color.Empty
        Me.tbTenSach.HintText = ""
        Me.tbTenSach.isPassword = False
        Me.tbTenSach.LineFocusedColor = System.Drawing.Color.Gray
        Me.tbTenSach.LineIdleColor = System.Drawing.Color.Silver
        Me.tbTenSach.LineMouseHoverColor = System.Drawing.Color.Gray
        Me.tbTenSach.LineThickness = 2
        Me.tbTenSach.Location = New System.Drawing.Point(116, 112)
        Me.tbTenSach.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.tbTenSach.Name = "tbTenSach"
        Me.tbTenSach.Size = New System.Drawing.Size(194, 36)
        Me.tbTenSach.TabIndex = 67
        Me.tbTenSach.TextAlign = System.Windows.Forms.HorizontalAlignment.Left
        '
        'cbTacGia
        '
        Me.cbTacGia.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Append
        Me.cbTacGia.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems
        Me.cbTacGia.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.cbTacGia.FormattingEnabled = True
        Me.cbTacGia.Location = New System.Drawing.Point(94, 119)
        Me.cbTacGia.Name = "cbTacGia"
        Me.cbTacGia.Size = New System.Drawing.Size(195, 29)
        Me.cbTacGia.TabIndex = 64
        '
        'cbTheLoai
        '
        Me.cbTheLoai.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbTheLoai.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.cbTheLoai.FormattingEnabled = True
        Me.cbTheLoai.Location = New System.Drawing.Point(442, 72)
        Me.cbTheLoai.Name = "cbTheLoai"
        Me.cbTheLoai.Size = New System.Drawing.Size(194, 29)
        Me.cbTheLoai.TabIndex = 63
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.Transparent
        Me.Label2.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.Black
        Me.Label2.Location = New System.Drawing.Point(39, 72)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(70, 21)
        Me.Label2.TabIndex = 47
        Me.Label2.Text = "Mã sách:"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.BackColor = System.Drawing.Color.Transparent
        Me.Label3.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.ForeColor = System.Drawing.Color.Black
        Me.Label3.Location = New System.Drawing.Point(38, 120)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(71, 21)
        Me.Label3.TabIndex = 48
        Me.Label3.Text = "Tên sách:"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.BackColor = System.Drawing.Color.Transparent
        Me.Label5.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.ForeColor = System.Drawing.Color.Black
        Me.Label5.Location = New System.Drawing.Point(29, 125)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(59, 21)
        Me.Label5.TabIndex = 60
        Me.Label5.Text = "Tác giả:"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.BackColor = System.Drawing.Color.Transparent
        Me.Label6.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.ForeColor = System.Drawing.Color.Black
        Me.Label6.Location = New System.Drawing.Point(369, 77)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(67, 21)
        Me.Label6.TabIndex = 59
        Me.Label6.Text = "Thể loại:"
        '
        'tbMaSach
        '
        Me.tbMaSach.AutoSize = True
        Me.tbMaSach.BackColor = System.Drawing.Color.White
        Me.tbMaSach.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.tbMaSach.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Italic)
        Me.tbMaSach.ForeColor = System.Drawing.Color.Silver
        Me.tbMaSach.HintForeColor = System.Drawing.Color.Empty
        Me.tbMaSach.HintText = ""
        Me.tbMaSach.isPassword = False
        Me.tbMaSach.LineFocusedColor = System.Drawing.Color.Gray
        Me.tbMaSach.LineIdleColor = System.Drawing.Color.Silver
        Me.tbMaSach.LineMouseHoverColor = System.Drawing.Color.Gray
        Me.tbMaSach.LineThickness = 2
        Me.tbMaSach.Location = New System.Drawing.Point(116, 62)
        Me.tbMaSach.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.tbMaSach.Name = "tbMaSach"
        Me.tbMaSach.Size = New System.Drawing.Size(95, 36)
        Me.tbMaSach.TabIndex = 67
        Me.tbMaSach.TextAlign = System.Windows.Forms.HorizontalAlignment.Left
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.BackColor = System.Drawing.Color.Transparent
        Me.Label10.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label10.ForeColor = System.Drawing.Color.Black
        Me.Label10.Location = New System.Drawing.Point(352, 125)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(84, 21)
        Me.Label10.TabIndex = 60
        Me.Label10.Text = "Tình trạng:"
        '
        'cbTinhTrang
        '
        Me.cbTinhTrang.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbTinhTrang.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.cbTinhTrang.FormattingEnabled = True
        Me.cbTinhTrang.Location = New System.Drawing.Point(442, 119)
        Me.cbTinhTrang.Name = "cbTinhTrang"
        Me.cbTinhTrang.Size = New System.Drawing.Size(194, 29)
        Me.cbTinhTrang.TabIndex = 64
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.cbTheLoai)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.cbTacGia)
        Me.GroupBox1.Controls.Add(Me.cbTinhTrang)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Location = New System.Drawing.Point(26, 44)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(659, 171)
        Me.GroupBox1.TabIndex = 69
        Me.GroupBox1.TabStop = False
        '
        'dgDanhSachSach
        '
        Me.dgDanhSachSach.AllowUserToAddRows = False
        Me.dgDanhSachSach.AllowUserToDeleteRows = False
        Me.dgDanhSachSach.AllowUserToResizeColumns = False
        Me.dgDanhSachSach.AllowUserToResizeRows = False
        DataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer))
        DataGridViewCellStyle1.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle1.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.Black
        Me.dgDanhSachSach.AlternatingRowsDefaultCellStyle = DataGridViewCellStyle1
        Me.dgDanhSachSach.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.dgDanhSachSach.BackgroundColor = System.Drawing.Color.Gainsboro
        Me.dgDanhSachSach.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.dgDanhSachSach.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.[Single]
        DataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        DataGridViewCellStyle2.BackColor = System.Drawing.Color.DarkGray
        DataGridViewCellStyle2.Font = New System.Drawing.Font("Segoe UI", 10.5!)
        DataGridViewCellStyle2.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgDanhSachSach.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle2
        Me.dgDanhSachSach.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgDanhSachSach.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.MaSach, Me.TenSach, Me.TheLoai, Me.TacGia, Me.TinhTrang})
        DataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle3.Font = New System.Drawing.Font("Segoe UI", 10.0!)
        DataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText
        DataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgDanhSachSach.DefaultCellStyle = DataGridViewCellStyle3
        Me.dgDanhSachSach.DoubleBuffered = True
        Me.dgDanhSachSach.EnableHeadersVisualStyles = False
        Me.dgDanhSachSach.GridColor = System.Drawing.Color.Gray
        Me.dgDanhSachSach.HeaderBgColor = System.Drawing.Color.DarkGray
        Me.dgDanhSachSach.HeaderForeColor = System.Drawing.Color.Black
        Me.dgDanhSachSach.Location = New System.Drawing.Point(26, 319)
        Me.dgDanhSachSach.Name = "dgDanhSachSach"
        Me.dgDanhSachSach.ReadOnly = True
        Me.dgDanhSachSach.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.[Single]
        DataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle4.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle4.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.Desktop
        DataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgDanhSachSach.RowHeadersDefaultCellStyle = DataGridViewCellStyle4
        DataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle5.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle5.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.Black
        Me.dgDanhSachSach.RowsDefaultCellStyle = DataGridViewCellStyle5
        Me.dgDanhSachSach.Size = New System.Drawing.Size(659, 241)
        Me.dgDanhSachSach.TabIndex = 70
        '
        'MaSach
        '
        Me.MaSach.FillWeight = 68.438!
        Me.MaSach.HeaderText = "Mã Sách"
        Me.MaSach.Name = "MaSach"
        Me.MaSach.ReadOnly = True
        Me.MaSach.Width = 85
        '
        'TenSach
        '
        Me.TenSach.FillWeight = 172.2419!
        Me.TenSach.HeaderText = "Tên Sách"
        Me.TenSach.Name = "TenSach"
        Me.TenSach.ReadOnly = True
        Me.TenSach.Width = 200
        '
        'TheLoai
        '
        Me.TheLoai.FillWeight = 90.76328!
        Me.TheLoai.HeaderText = "Thể Loại"
        Me.TheLoai.Name = "TheLoai"
        Me.TheLoai.ReadOnly = True
        '
        'TacGia
        '
        Me.TacGia.FillWeight = 93.9663!
        Me.TacGia.HeaderText = "Tác Giả"
        Me.TacGia.Name = "TacGia"
        Me.TacGia.ReadOnly = True
        Me.TacGia.Width = 135
        '
        'TinhTrang
        '
        Me.TinhTrang.FillWeight = 74.59055!
        Me.TinhTrang.HeaderText = "Tình Trạng"
        Me.TinhTrang.Name = "TinhTrang"
        Me.TinhTrang.ReadOnly = True
        Me.TinhTrang.Width = 97
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.BackColor = System.Drawing.Color.Transparent
        Me.Label11.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label11.ForeColor = System.Drawing.Color.Black
        Me.Label11.Location = New System.Drawing.Point(21, 286)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(117, 21)
        Me.Label11.TabIndex = 60
        Me.Label11.Text = "Kết quả tra cứu:"
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
        Me.btnThoat.Location = New System.Drawing.Point(458, 616)
        Me.btnThoat.Name = "btnThoat"
        Me.btnThoat.Normalcolor = System.Drawing.Color.LightGray
        Me.btnThoat.OnHovercolor = System.Drawing.Color.Gray
        Me.btnThoat.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnThoat.selected = False
        Me.btnThoat.Size = New System.Drawing.Size(140, 41)
        Me.btnThoat.TabIndex = 28
        Me.btnThoat.Text = "Thoát"
        Me.btnThoat.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnThoat.Textcolor = System.Drawing.Color.Black
        Me.btnThoat.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'btnTraCuu
        '
        Me.btnTraCuu.Activecolor = System.Drawing.Color.Silver
        Me.btnTraCuu.BackColor = System.Drawing.Color.LightGray
        Me.btnTraCuu.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btnTraCuu.BorderRadius = 7
        Me.btnTraCuu.ButtonText = "Tra cứu"
        Me.btnTraCuu.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnTraCuu.DisabledColor = System.Drawing.Color.Silver
        Me.btnTraCuu.ForeColor = System.Drawing.Color.Black
        Me.btnTraCuu.Iconcolor = System.Drawing.Color.Transparent
        Me.btnTraCuu.Iconimage = Global.QLTVGUI.My.Resources.Resources.icons8_Search1_64
        Me.btnTraCuu.Iconimage_right = Nothing
        Me.btnTraCuu.Iconimage_right_Selected = Nothing
        Me.btnTraCuu.Iconimage_Selected = Nothing
        Me.btnTraCuu.IconMarginLeft = 0
        Me.btnTraCuu.IconMarginRight = 0
        Me.btnTraCuu.IconRightVisible = True
        Me.btnTraCuu.IconRightZoom = 0R
        Me.btnTraCuu.IconVisible = True
        Me.btnTraCuu.IconZoom = 60.0R
        Me.btnTraCuu.IsTab = False
        Me.btnTraCuu.Location = New System.Drawing.Point(297, 236)
        Me.btnTraCuu.Name = "btnTraCuu"
        Me.btnTraCuu.Normalcolor = System.Drawing.Color.LightGray
        Me.btnTraCuu.OnHovercolor = System.Drawing.Color.Gray
        Me.btnTraCuu.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnTraCuu.selected = False
        Me.btnTraCuu.Size = New System.Drawing.Size(116, 41)
        Me.btnTraCuu.TabIndex = 29
        Me.btnTraCuu.Text = "Tra cứu"
        Me.btnTraCuu.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnTraCuu.Textcolor = System.Drawing.Color.Black
        Me.btnTraCuu.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'btnXuatKetQua
        '
        Me.btnXuatKetQua.Activecolor = System.Drawing.Color.Silver
        Me.btnXuatKetQua.BackColor = System.Drawing.Color.LightGray
        Me.btnXuatKetQua.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btnXuatKetQua.BorderRadius = 7
        Me.btnXuatKetQua.ButtonText = "Xuất kết quả"
        Me.btnXuatKetQua.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnXuatKetQua.DisabledColor = System.Drawing.Color.Silver
        Me.btnXuatKetQua.ForeColor = System.Drawing.Color.Black
        Me.btnXuatKetQua.Iconcolor = System.Drawing.Color.Transparent
        Me.btnXuatKetQua.Iconimage = Global.QLTVGUI.My.Resources.Resources.icons8_Download_64
        Me.btnXuatKetQua.Iconimage_right = Nothing
        Me.btnXuatKetQua.Iconimage_right_Selected = Nothing
        Me.btnXuatKetQua.Iconimage_Selected = Nothing
        Me.btnXuatKetQua.IconMarginLeft = 0
        Me.btnXuatKetQua.IconMarginRight = 0
        Me.btnXuatKetQua.IconRightVisible = True
        Me.btnXuatKetQua.IconRightZoom = 0R
        Me.btnXuatKetQua.IconVisible = True
        Me.btnXuatKetQua.IconZoom = 60.0R
        Me.btnXuatKetQua.IsTab = False
        Me.btnXuatKetQua.Location = New System.Drawing.Point(112, 616)
        Me.btnXuatKetQua.Name = "btnXuatKetQua"
        Me.btnXuatKetQua.Normalcolor = System.Drawing.Color.LightGray
        Me.btnXuatKetQua.OnHovercolor = System.Drawing.Color.Gray
        Me.btnXuatKetQua.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnXuatKetQua.selected = False
        Me.btnXuatKetQua.Size = New System.Drawing.Size(140, 41)
        Me.btnXuatKetQua.TabIndex = 29
        Me.btnXuatKetQua.Text = "Xuất kết quả"
        Me.btnXuatKetQua.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnXuatKetQua.Textcolor = System.Drawing.Color.Black
        Me.btnXuatKetQua.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'ucTraCuuSach
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.WhiteSmoke
        Me.Controls.Add(Me.dgDanhSachSach)
        Me.Controls.Add(Me.tbMaSach)
        Me.Controls.Add(Me.tbTenSach)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label11)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.btnThoat)
        Me.Controls.Add(Me.btnTraCuu)
        Me.Controls.Add(Me.btnXuatKetQua)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "ucTraCuuSach"
        Me.Size = New System.Drawing.Size(710, 670)
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.dgDanhSachSach, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents btnThoat As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents btnXuatKetQua As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents tbTenSach As Bunifu.Framework.UI.BunifuMaterialTextbox
    Friend WithEvents cbTacGia As System.Windows.Forms.ComboBox
    Friend WithEvents cbTheLoai As System.Windows.Forms.ComboBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents tbMaSach As Bunifu.Framework.UI.BunifuMaterialTextbox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents cbTinhTrang As System.Windows.Forms.ComboBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents dgDanhSachSach As Bunifu.Framework.UI.BunifuCustomDataGrid
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents btnTraCuu As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents MaSach As DataGridViewTextBoxColumn
    Friend WithEvents TenSach As DataGridViewTextBoxColumn
    Friend WithEvents TheLoai As DataGridViewTextBoxColumn
    Friend WithEvents TacGia As DataGridViewTextBoxColumn
    Friend WithEvents TinhTrang As DataGridViewTextBoxColumn
End Class
