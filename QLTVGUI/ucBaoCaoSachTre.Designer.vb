<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class ucBaoCaoSachTre
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
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle3 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle4 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle5 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.dgThongKe = New Bunifu.Framework.UI.BunifuCustomDataGrid()
        Me.TenSach = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.NgayMuon = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.SoNgayTraTre = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.btnThoat = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.btnXuatBaoCao = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.dtpNgay = New System.Windows.Forms.DateTimePicker()
        Me.btnThongKe = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.GroupBox1.SuspendLayout()
        CType(Me.dgThongKe, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.dgThongKe)
        Me.GroupBox1.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.GroupBox1.Location = New System.Drawing.Point(52, 160)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(602, 288)
        Me.GroupBox1.TabIndex = 41
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Thống kê:"
        '
        'dgThongKe
        '
        Me.dgThongKe.AllowUserToAddRows = False
        Me.dgThongKe.AllowUserToDeleteRows = False
        Me.dgThongKe.AllowUserToResizeColumns = False
        Me.dgThongKe.AllowUserToResizeRows = False
        DataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle1.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle1.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.Black
        Me.dgThongKe.AlternatingRowsDefaultCellStyle = DataGridViewCellStyle1
        Me.dgThongKe.BackgroundColor = System.Drawing.Color.Gainsboro
        Me.dgThongKe.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.dgThongKe.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.[Single]
        DataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        DataGridViewCellStyle2.BackColor = System.Drawing.Color.DarkGray
        DataGridViewCellStyle2.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        DataGridViewCellStyle2.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgThongKe.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle2
        Me.dgThongKe.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgThongKe.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.TenSach, Me.NgayMuon, Me.SoNgayTraTre})
        DataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle3.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        DataGridViewCellStyle3.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgThongKe.DefaultCellStyle = DataGridViewCellStyle3
        Me.dgThongKe.DoubleBuffered = True
        Me.dgThongKe.EnableHeadersVisualStyles = False
        Me.dgThongKe.GridColor = System.Drawing.Color.Gray
        Me.dgThongKe.HeaderBgColor = System.Drawing.Color.DarkGray
        Me.dgThongKe.HeaderForeColor = System.Drawing.Color.Black
        Me.dgThongKe.Location = New System.Drawing.Point(11, 35)
        Me.dgThongKe.Name = "dgThongKe"
        Me.dgThongKe.ReadOnly = True
        Me.dgThongKe.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.[Single]
        DataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle4.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        DataGridViewCellStyle4.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgThongKe.RowHeadersDefaultCellStyle = DataGridViewCellStyle4
        DataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle5.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle5.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.Black
        Me.dgThongKe.RowsDefaultCellStyle = DataGridViewCellStyle5
        Me.dgThongKe.Size = New System.Drawing.Size(581, 236)
        Me.dgThongKe.TabIndex = 72
        '
        'TenSach
        '
        Me.TenSach.Frozen = True
        Me.TenSach.HeaderText = "Tên Sách"
        Me.TenSach.Name = "TenSach"
        Me.TenSach.ReadOnly = True
        Me.TenSach.Width = 240
        '
        'NgayMuon
        '
        Me.NgayMuon.Frozen = True
        Me.NgayMuon.HeaderText = "Ngày Mượn"
        Me.NgayMuon.Name = "NgayMuon"
        Me.NgayMuon.ReadOnly = True
        Me.NgayMuon.Width = 150
        '
        'SoNgayTraTre
        '
        Me.SoNgayTraTre.Frozen = True
        Me.SoNgayTraTre.HeaderText = "Số Ngày Trả Trễ"
        Me.SoNgayTraTre.Name = "SoNgayTraTre"
        Me.SoNgayTraTre.ReadOnly = True
        Me.SoNgayTraTre.Width = 150
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.BackColor = System.Drawing.Color.Transparent
        Me.Label11.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.Label11.ForeColor = System.Drawing.Color.Black
        Me.Label11.Location = New System.Drawing.Point(206, 81)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(50, 21)
        Me.Label11.TabIndex = 40
        Me.Label11.Text = "Ngày:"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(178, 17)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(355, 30)
        Me.Label1.TabIndex = 36
        Me.Label1.Text = "BÁO CÁO THỐNG KÊ SÁCH TRẢ TRỄ"
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
        Me.btnThoat.Location = New System.Drawing.Point(455, 473)
        Me.btnThoat.Name = "btnThoat"
        Me.btnThoat.Normalcolor = System.Drawing.Color.LightGray
        Me.btnThoat.OnHovercolor = System.Drawing.Color.Gray
        Me.btnThoat.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnThoat.selected = False
        Me.btnThoat.Size = New System.Drawing.Size(142, 41)
        Me.btnThoat.TabIndex = 42
        Me.btnThoat.Text = "Thoát"
        Me.btnThoat.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnThoat.Textcolor = System.Drawing.Color.Black
        Me.btnThoat.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'btnXuatBaoCao
        '
        Me.btnXuatBaoCao.Activecolor = System.Drawing.Color.Silver
        Me.btnXuatBaoCao.BackColor = System.Drawing.Color.LightGray
        Me.btnXuatBaoCao.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btnXuatBaoCao.BorderRadius = 7
        Me.btnXuatBaoCao.ButtonText = "Xuất báo cáo"
        Me.btnXuatBaoCao.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnXuatBaoCao.DisabledColor = System.Drawing.Color.Silver
        Me.btnXuatBaoCao.ForeColor = System.Drawing.Color.Black
        Me.btnXuatBaoCao.Iconcolor = System.Drawing.Color.Transparent
        Me.btnXuatBaoCao.Iconimage = Global.QLTVGUI.My.Resources.Resources.icons8_Save_64
        Me.btnXuatBaoCao.Iconimage_right = Nothing
        Me.btnXuatBaoCao.Iconimage_right_Selected = Nothing
        Me.btnXuatBaoCao.Iconimage_Selected = Nothing
        Me.btnXuatBaoCao.IconMarginLeft = 0
        Me.btnXuatBaoCao.IconMarginRight = 0
        Me.btnXuatBaoCao.IconRightVisible = True
        Me.btnXuatBaoCao.IconRightZoom = 0R
        Me.btnXuatBaoCao.IconVisible = True
        Me.btnXuatBaoCao.IconZoom = 60.0R
        Me.btnXuatBaoCao.IsTab = False
        Me.btnXuatBaoCao.Location = New System.Drawing.Point(113, 473)
        Me.btnXuatBaoCao.Name = "btnXuatBaoCao"
        Me.btnXuatBaoCao.Normalcolor = System.Drawing.Color.LightGray
        Me.btnXuatBaoCao.OnHovercolor = System.Drawing.Color.Gray
        Me.btnXuatBaoCao.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnXuatBaoCao.selected = False
        Me.btnXuatBaoCao.Size = New System.Drawing.Size(142, 41)
        Me.btnXuatBaoCao.TabIndex = 43
        Me.btnXuatBaoCao.Text = "Xuất báo cáo"
        Me.btnXuatBaoCao.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnXuatBaoCao.Textcolor = System.Drawing.Color.Black
        Me.btnXuatBaoCao.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'dtpNgay
        '
        Me.dtpNgay.CalendarMonthBackground = System.Drawing.Color.WhiteSmoke
        Me.dtpNgay.CalendarTitleBackColor = System.Drawing.SystemColors.Control
        Me.dtpNgay.CalendarTrailingForeColor = System.Drawing.Color.Black
        Me.dtpNgay.CustomFormat = "ddddddddd, dd/MM/yyyy"
        Me.dtpNgay.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.dtpNgay.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtpNgay.Location = New System.Drawing.Point(262, 76)
        Me.dtpNgay.Name = "dtpNgay"
        Me.dtpNgay.Size = New System.Drawing.Size(242, 29)
        Me.dtpNgay.TabIndex = 76
        Me.dtpNgay.Value = New Date(2018, 6, 28, 0, 0, 0, 0)
        '
        'btnThongKe
        '
        Me.btnThongKe.Activecolor = System.Drawing.Color.Silver
        Me.btnThongKe.BackColor = System.Drawing.Color.LightGray
        Me.btnThongKe.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btnThongKe.BorderRadius = 7
        Me.btnThongKe.ButtonText = "Thống kê"
        Me.btnThongKe.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnThongKe.DisabledColor = System.Drawing.Color.Silver
        Me.btnThongKe.ForeColor = System.Drawing.Color.Black
        Me.btnThongKe.Iconcolor = System.Drawing.Color.Transparent
        Me.btnThongKe.Iconimage = Global.QLTVGUI.My.Resources.Resources.icons8_Combo_Chart1_64
        Me.btnThongKe.Iconimage_right = Nothing
        Me.btnThongKe.Iconimage_right_Selected = Nothing
        Me.btnThongKe.Iconimage_Selected = Nothing
        Me.btnThongKe.IconMarginLeft = 0
        Me.btnThongKe.IconMarginRight = 0
        Me.btnThongKe.IconRightVisible = True
        Me.btnThongKe.IconRightZoom = 0R
        Me.btnThongKe.IconVisible = True
        Me.btnThongKe.IconZoom = 60.0R
        Me.btnThongKe.IsTab = False
        Me.btnThongKe.Location = New System.Drawing.Point(290, 119)
        Me.btnThongKe.Name = "btnThongKe"
        Me.btnThongKe.Normalcolor = System.Drawing.Color.LightGray
        Me.btnThongKe.OnHovercolor = System.Drawing.Color.Gray
        Me.btnThongKe.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnThongKe.selected = False
        Me.btnThongKe.Size = New System.Drawing.Size(131, 36)
        Me.btnThongKe.TabIndex = 77
        Me.btnThongKe.Text = "Thống kê"
        Me.btnThongKe.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnThongKe.Textcolor = System.Drawing.Color.Black
        Me.btnThongKe.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'ucBaoCaoSachTre
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.Controls.Add(Me.btnThongKe)
        Me.Controls.Add(Me.dtpNgay)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.Label11)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btnThoat)
        Me.Controls.Add(Me.btnXuatBaoCao)
        Me.Name = "ucBaoCaoSachTre"
        Me.Size = New System.Drawing.Size(710, 530)
        Me.GroupBox1.ResumeLayout(False)
        CType(Me.dgThongKe, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents dgThongKe As Bunifu.Framework.UI.BunifuCustomDataGrid
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents btnThoat As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents btnXuatBaoCao As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents dtpNgay As System.Windows.Forms.DateTimePicker
    Friend WithEvents TenSach As DataGridViewTextBoxColumn
    Friend WithEvents NgayMuon As DataGridViewTextBoxColumn
    Friend WithEvents SoNgayTraTre As DataGridViewTextBoxColumn
    Friend WithEvents btnThongKe As Bunifu.Framework.UI.BunifuFlatButton
End Class
