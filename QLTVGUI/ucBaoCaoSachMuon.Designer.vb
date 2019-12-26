<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ucBaoCaoSachMuon
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
        Dim DataGridViewCellStyle6 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle7 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle8 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle9 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle10 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.tbThang = New Bunifu.Framework.UI.BunifuMaterialTextbox()
        Me.tbNam = New Bunifu.Framework.UI.BunifuMaterialTextbox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.dgThongKe = New Bunifu.Framework.UI.BunifuCustomDataGrid()
        Me.TenTheLoai = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.SoLuotMuon = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TiLe = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.labellb = New System.Windows.Forms.Label()
        Me.lbTongLuotMuon = New System.Windows.Forms.Label()
        Me.btnThoat = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.btnThongKe = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.btnXuatBaoCao = New Bunifu.Framework.UI.BunifuFlatButton()
        Me.GroupBox1.SuspendLayout()
        CType(Me.dgThongKe, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(52, 11)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(607, 30)
        Me.Label1.TabIndex = 8
        Me.Label1.Text = "BÁO CÁO THỐNG KÊ TÌNH HÌNH MƯỢN SÁCH THEO THỂ LOẠI"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.BackColor = System.Drawing.Color.Transparent
        Me.Label11.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.Label11.ForeColor = System.Drawing.Color.Black
        Me.Label11.Location = New System.Drawing.Point(216, 69)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(56, 21)
        Me.Label11.TabIndex = 32
        Me.Label11.Text = "Tháng:"
        '
        'tbThang
        '
        Me.tbThang.AutoSize = True
        Me.tbThang.BackColor = System.Drawing.Color.White
        Me.tbThang.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.tbThang.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.tbThang.ForeColor = System.Drawing.Color.Black
        Me.tbThang.HintForeColor = System.Drawing.Color.Empty
        Me.tbThang.HintText = ""
        Me.tbThang.isPassword = False
        Me.tbThang.LineFocusedColor = System.Drawing.Color.Gray
        Me.tbThang.LineIdleColor = System.Drawing.Color.Silver
        Me.tbThang.LineMouseHoverColor = System.Drawing.Color.Gray
        Me.tbThang.LineThickness = 2
        Me.tbThang.Location = New System.Drawing.Point(279, 57)
        Me.tbThang.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.tbThang.Name = "tbThang"
        Me.tbThang.Size = New System.Drawing.Size(64, 36)
        Me.tbThang.TabIndex = 1
        Me.tbThang.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'tbNam
        '
        Me.tbNam.AutoSize = True
        Me.tbNam.BackColor = System.Drawing.Color.White
        Me.tbNam.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.tbNam.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.tbNam.ForeColor = System.Drawing.Color.Black
        Me.tbNam.HintForeColor = System.Drawing.Color.Empty
        Me.tbNam.HintText = ""
        Me.tbNam.isPassword = False
        Me.tbNam.LineFocusedColor = System.Drawing.Color.Gray
        Me.tbNam.LineIdleColor = System.Drawing.Color.Silver
        Me.tbNam.LineMouseHoverColor = System.Drawing.Color.Gray
        Me.tbNam.LineThickness = 2
        Me.tbNam.Location = New System.Drawing.Point(431, 57)
        Me.tbNam.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.tbNam.Name = "tbNam"
        Me.tbNam.Size = New System.Drawing.Size(64, 36)
        Me.tbNam.TabIndex = 2
        Me.tbNam.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.Transparent
        Me.Label2.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.Label2.ForeColor = System.Drawing.Color.Black
        Me.Label2.Location = New System.Drawing.Point(377, 69)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(47, 21)
        Me.Label2.TabIndex = 32
        Me.Label2.Text = "Năm:"
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.dgThongKe)
        Me.GroupBox1.Controls.Add(Me.labellb)
        Me.GroupBox1.Controls.Add(Me.lbTongLuotMuon)
        Me.GroupBox1.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        Me.GroupBox1.Location = New System.Drawing.Point(54, 155)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(602, 282)
        Me.GroupBox1.TabIndex = 33
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Thống kê:"
        '
        'dgThongKe
        '
        Me.dgThongKe.AllowUserToAddRows = False
        Me.dgThongKe.AllowUserToDeleteRows = False
        Me.dgThongKe.AllowUserToResizeColumns = False
        Me.dgThongKe.AllowUserToResizeRows = False
        DataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle6.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle6.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.Black
        Me.dgThongKe.AlternatingRowsDefaultCellStyle = DataGridViewCellStyle6
        Me.dgThongKe.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.dgThongKe.BackgroundColor = System.Drawing.Color.Gainsboro
        Me.dgThongKe.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.dgThongKe.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.[Single]
        DataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        DataGridViewCellStyle7.BackColor = System.Drawing.Color.DarkGray
        DataGridViewCellStyle7.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        DataGridViewCellStyle7.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle7.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle7.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgThongKe.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle7
        Me.dgThongKe.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgThongKe.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.TenTheLoai, Me.SoLuotMuon, Me.TiLe})
        DataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle8.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle8.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        DataGridViewCellStyle8.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle8.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle8.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgThongKe.DefaultCellStyle = DataGridViewCellStyle8
        Me.dgThongKe.DoubleBuffered = True
        Me.dgThongKe.EnableHeadersVisualStyles = False
        Me.dgThongKe.GridColor = System.Drawing.Color.Gray
        Me.dgThongKe.HeaderBgColor = System.Drawing.Color.DarkGray
        Me.dgThongKe.HeaderForeColor = System.Drawing.Color.Black
        Me.dgThongKe.Location = New System.Drawing.Point(55, 46)
        Me.dgThongKe.Name = "dgThongKe"
        Me.dgThongKe.ReadOnly = True
        Me.dgThongKe.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.[Single]
        DataGridViewCellStyle9.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle9.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle9.Font = New System.Drawing.Font("Segoe UI", 12.0!)
        DataGridViewCellStyle9.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle9.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle9.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle9.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgThongKe.RowHeadersDefaultCellStyle = DataGridViewCellStyle9
        DataGridViewCellStyle10.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle10.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle10.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle10.SelectionBackColor = System.Drawing.SystemColors.ActiveCaption
        DataGridViewCellStyle10.SelectionForeColor = System.Drawing.Color.Black
        Me.dgThongKe.RowsDefaultCellStyle = DataGridViewCellStyle10
        Me.dgThongKe.Size = New System.Drawing.Size(493, 192)
        Me.dgThongKe.TabIndex = 72
        '
        'TenTheLoai
        '
        Me.TenTheLoai.Frozen = True
        Me.TenTheLoai.HeaderText = "Tên Thể Loại"
        Me.TenTheLoai.Name = "TenTheLoai"
        Me.TenTheLoai.ReadOnly = True
        Me.TenTheLoai.Width = 200
        '
        'SoLuotMuon
        '
        Me.SoLuotMuon.Frozen = True
        Me.SoLuotMuon.HeaderText = "Số Lượt Mượn"
        Me.SoLuotMuon.Name = "SoLuotMuon"
        Me.SoLuotMuon.ReadOnly = True
        Me.SoLuotMuon.Width = 150
        '
        'TiLe
        '
        Me.TiLe.Frozen = True
        Me.TiLe.HeaderText = "Tỉ Lệ"
        Me.TiLe.Name = "TiLe"
        Me.TiLe.ReadOnly = True
        Me.TiLe.Width = 101
        '
        'labellb
        '
        Me.labellb.AutoSize = True
        Me.labellb.BackColor = System.Drawing.Color.Transparent
        Me.labellb.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.labellb.ForeColor = System.Drawing.Color.Black
        Me.labellb.Location = New System.Drawing.Point(385, 254)
        Me.labellb.Name = "labellb"
        Me.labellb.Size = New System.Drawing.Size(128, 17)
        Me.labellb.TabIndex = 32
        Me.labellb.Text = "Tổng số lượt mượn: "
        '
        'lbTongLuotMuon
        '
        Me.lbTongLuotMuon.BackColor = System.Drawing.Color.Transparent
        Me.lbTongLuotMuon.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbTongLuotMuon.ForeColor = System.Drawing.Color.MediumBlue
        Me.lbTongLuotMuon.Location = New System.Drawing.Point(495, 251)
        Me.lbTongLuotMuon.Name = "lbTongLuotMuon"
        Me.lbTongLuotMuon.Size = New System.Drawing.Size(53, 21)
        Me.lbTongLuotMuon.TabIndex = 32
        Me.lbTongLuotMuon.Text = "sum"
        Me.lbTongLuotMuon.TextAlign = System.Drawing.ContentAlignment.MiddleRight
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
        Me.btnThoat.Location = New System.Drawing.Point(455, 472)
        Me.btnThoat.Name = "btnThoat"
        Me.btnThoat.Normalcolor = System.Drawing.Color.LightGray
        Me.btnThoat.OnHovercolor = System.Drawing.Color.Gray
        Me.btnThoat.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnThoat.selected = False
        Me.btnThoat.Size = New System.Drawing.Size(142, 41)
        Me.btnThoat.TabIndex = 34
        Me.btnThoat.Text = "Thoát"
        Me.btnThoat.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnThoat.Textcolor = System.Drawing.Color.Black
        Me.btnThoat.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
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
        Me.btnThongKe.Location = New System.Drawing.Point(290, 112)
        Me.btnThongKe.Name = "btnThongKe"
        Me.btnThongKe.Normalcolor = System.Drawing.Color.LightGray
        Me.btnThongKe.OnHovercolor = System.Drawing.Color.Gray
        Me.btnThongKe.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnThongKe.selected = False
        Me.btnThongKe.Size = New System.Drawing.Size(131, 36)
        Me.btnThongKe.TabIndex = 35
        Me.btnThongKe.Text = "Thống kê"
        Me.btnThongKe.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnThongKe.Textcolor = System.Drawing.Color.Black
        Me.btnThongKe.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
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
        Me.btnXuatBaoCao.Location = New System.Drawing.Point(113, 472)
        Me.btnXuatBaoCao.Name = "btnXuatBaoCao"
        Me.btnXuatBaoCao.Normalcolor = System.Drawing.Color.LightGray
        Me.btnXuatBaoCao.OnHovercolor = System.Drawing.Color.Gray
        Me.btnXuatBaoCao.OnHoverTextColor = System.Drawing.Color.Black
        Me.btnXuatBaoCao.selected = False
        Me.btnXuatBaoCao.Size = New System.Drawing.Size(142, 41)
        Me.btnXuatBaoCao.TabIndex = 35
        Me.btnXuatBaoCao.Text = "Xuất báo cáo"
        Me.btnXuatBaoCao.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.btnXuatBaoCao.Textcolor = System.Drawing.Color.Black
        Me.btnXuatBaoCao.TextFont = New System.Drawing.Font("Segoe UI", 12.0!)
        '
        'ucBaoCaoSachMuon
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.Controls.Add(Me.btnThoat)
        Me.Controls.Add(Me.btnThongKe)
        Me.Controls.Add(Me.btnXuatBaoCao)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label11)
        Me.Controls.Add(Me.tbNam)
        Me.Controls.Add(Me.tbThang)
        Me.Controls.Add(Me.Label1)
        Me.Name = "ucBaoCaoSachMuon"
        Me.Size = New System.Drawing.Size(710, 530)
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.dgThongKe, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents tbThang As Bunifu.Framework.UI.BunifuMaterialTextbox
    Friend WithEvents tbNam As Bunifu.Framework.UI.BunifuMaterialTextbox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents dgThongKe As Bunifu.Framework.UI.BunifuCustomDataGrid
    Friend WithEvents labellb As System.Windows.Forms.Label
    Friend WithEvents lbTongLuotMuon As System.Windows.Forms.Label
    Friend WithEvents btnThoat As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents btnXuatBaoCao As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents btnThongKe As Bunifu.Framework.UI.BunifuFlatButton
    Friend WithEvents TenTheLoai As DataGridViewTextBoxColumn
    Friend WithEvents SoLuotMuon As DataGridViewTextBoxColumn
    Friend WithEvents TiLe As DataGridViewTextBoxColumn
End Class
