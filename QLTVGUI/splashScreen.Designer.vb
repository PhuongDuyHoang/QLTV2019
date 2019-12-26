<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class splashScreen
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
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
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(splashScreen))
        Me.BunifuDragControl1 = New Bunifu.Framework.UI.BunifuDragControl(Me.components)
        Me.BunifuGradientPanel1 = New Bunifu.Framework.UI.BunifuGradientPanel()
        Me.pnDangNhap = New System.Windows.Forms.Panel()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.Panel3 = New System.Windows.Forms.Panel()
        Me.btnDocGia = New Bunifu.Framework.UI.BunifuThinButton2()
        Me.lbDoiMatKhau = New System.Windows.Forms.Label()
        Me.lbTroVe = New System.Windows.Forms.Label()
        Me.lbThoat = New System.Windows.Forms.Label()
        Me.btnOK = New Bunifu.Framework.UI.BunifuThinButton2()
        Me.btnDangNhap = New Bunifu.Framework.UI.BunifuThinButton2()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.lbTrangThaiMK = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.tbNhapLaiMatKhauMoi = New System.Windows.Forms.TextBox()
        Me.tbMatKhauMoi = New System.Windows.Forms.TextBox()
        Me.tbMatKhau = New System.Windows.Forms.TextBox()
        Me.tbMaDangNhap = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.pnLogo = New System.Windows.Forms.Panel()
        Me.logo = New System.Windows.Forms.PictureBox()
        Me.lbName = New System.Windows.Forms.Label()
        Me.progressBar = New Bunifu.Framework.UI.BunifuProgressBar()
        Me.lbStatus = New System.Windows.Forms.Label()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.BunifuDragControl2 = New Bunifu.Framework.UI.BunifuDragControl(Me.components)
        Me.BunifuDragControl3 = New Bunifu.Framework.UI.BunifuDragControl(Me.components)
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.BunifuGradientPanel1.SuspendLayout()
        Me.pnDangNhap.SuspendLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel3.SuspendLayout()
        Me.pnLogo.SuspendLayout()
        CType(Me.logo, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'BunifuDragControl1
        '
        Me.BunifuDragControl1.Fixed = True
        Me.BunifuDragControl1.Horizontal = True
        Me.BunifuDragControl1.TargetControl = Me.BunifuGradientPanel1
        Me.BunifuDragControl1.Vertical = True
        '
        'BunifuGradientPanel1
        '
        Me.BunifuGradientPanel1.BackgroundImage = CType(resources.GetObject("BunifuGradientPanel1.BackgroundImage"), System.Drawing.Image)
        Me.BunifuGradientPanel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.BunifuGradientPanel1.Controls.Add(Me.pnDangNhap)
        Me.BunifuGradientPanel1.Controls.Add(Me.pnLogo)
        Me.BunifuGradientPanel1.Controls.Add(Me.progressBar)
        Me.BunifuGradientPanel1.Controls.Add(Me.lbStatus)
        Me.BunifuGradientPanel1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.BunifuGradientPanel1.GradientBottomLeft = System.Drawing.Color.Black
        Me.BunifuGradientPanel1.GradientBottomRight = System.Drawing.Color.Gray
        Me.BunifuGradientPanel1.GradientTopLeft = System.Drawing.Color.Black
        Me.BunifuGradientPanel1.GradientTopRight = System.Drawing.Color.White
        Me.BunifuGradientPanel1.Location = New System.Drawing.Point(0, 0)
        Me.BunifuGradientPanel1.Name = "BunifuGradientPanel1"
        Me.BunifuGradientPanel1.Quality = 10
        Me.BunifuGradientPanel1.Size = New System.Drawing.Size(984, 561)
        Me.BunifuGradientPanel1.TabIndex = 0
        '
        'pnDangNhap
        '
        Me.pnDangNhap.BackColor = System.Drawing.Color.Transparent
        Me.pnDangNhap.Controls.Add(Me.PictureBox1)
        Me.pnDangNhap.Controls.Add(Me.Panel3)
        Me.pnDangNhap.Dock = System.Windows.Forms.DockStyle.Right
        Me.pnDangNhap.Location = New System.Drawing.Point(677, 0)
        Me.pnDangNhap.Name = "pnDangNhap"
        Me.pnDangNhap.Size = New System.Drawing.Size(307, 561)
        Me.pnDangNhap.TabIndex = 9
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = Global.QLTVGUI.My.Resources.Resources.icons8_Male_User_64
        Me.PictureBox1.Location = New System.Drawing.Point(110, 43)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(50, 50)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 2
        Me.PictureBox1.TabStop = False
        '
        'Panel3
        '
        Me.Panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.Panel3.Controls.Add(Me.btnDocGia)
        Me.Panel3.Controls.Add(Me.lbDoiMatKhau)
        Me.Panel3.Controls.Add(Me.lbTroVe)
        Me.Panel3.Controls.Add(Me.lbThoat)
        Me.Panel3.Controls.Add(Me.btnOK)
        Me.Panel3.Controls.Add(Me.btnDangNhap)
        Me.Panel3.Controls.Add(Me.Label3)
        Me.Panel3.Controls.Add(Me.lbTrangThaiMK)
        Me.Panel3.Controls.Add(Me.Label2)
        Me.Panel3.Controls.Add(Me.tbNhapLaiMatKhauMoi)
        Me.Panel3.Controls.Add(Me.tbMatKhauMoi)
        Me.Panel3.Controls.Add(Me.tbMatKhau)
        Me.Panel3.Controls.Add(Me.tbMaDangNhap)
        Me.Panel3.Controls.Add(Me.Label1)
        Me.Panel3.Location = New System.Drawing.Point(17, 68)
        Me.Panel3.Name = "Panel3"
        Me.Panel3.Size = New System.Drawing.Size(241, 424)
        Me.Panel3.TabIndex = 1
        '
        'btnDocGia
        '
        Me.btnDocGia.ActiveBorderThickness = 1
        Me.btnDocGia.ActiveCornerRadius = 20
        Me.btnDocGia.ActiveFillColor = System.Drawing.Color.FromArgb(CType(CType(45, Byte), Integer), CType(CType(180, Byte), Integer), CType(CType(211, Byte), Integer))
        Me.btnDocGia.ActiveForecolor = System.Drawing.Color.White
        Me.btnDocGia.ActiveLineColor = System.Drawing.Color.FromArgb(CType(CType(45, Byte), Integer), CType(CType(180, Byte), Integer), CType(CType(211, Byte), Integer))
        Me.btnDocGia.BackColor = System.Drawing.Color.Transparent
        Me.btnDocGia.BackgroundImage = CType(resources.GetObject("btnDocGia.BackgroundImage"), System.Drawing.Image)
        Me.btnDocGia.ButtonText = "Đăng nhập với tư cách độc giả"
        Me.btnDocGia.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnDocGia.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnDocGia.ForeColor = System.Drawing.Color.White
        Me.btnDocGia.IdleBorderThickness = 1
        Me.btnDocGia.IdleCornerRadius = 20
        Me.btnDocGia.IdleFillColor = System.Drawing.Color.DimGray
        Me.btnDocGia.IdleForecolor = System.Drawing.Color.White
        Me.btnDocGia.IdleLineColor = System.Drawing.Color.Transparent
        Me.btnDocGia.Location = New System.Drawing.Point(0, 321)
        Me.btnDocGia.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.btnDocGia.Name = "btnDocGia"
        Me.btnDocGia.Size = New System.Drawing.Size(238, 41)
        Me.btnDocGia.TabIndex = 6
        Me.btnDocGia.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbDoiMatKhau
        '
        Me.lbDoiMatKhau.AutoSize = True
        Me.lbDoiMatKhau.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbDoiMatKhau.ForeColor = System.Drawing.Color.Black
        Me.lbDoiMatKhau.Location = New System.Drawing.Point(3, 399)
        Me.lbDoiMatKhau.Name = "lbDoiMatKhau"
        Me.lbDoiMatKhau.Size = New System.Drawing.Size(103, 21)
        Me.lbDoiMatKhau.TabIndex = 5
        Me.lbDoiMatKhau.Text = "Đổi mật khẩu"
        '
        'lbTroVe
        '
        Me.lbTroVe.AutoSize = True
        Me.lbTroVe.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbTroVe.ForeColor = System.Drawing.Color.Black
        Me.lbTroVe.Location = New System.Drawing.Point(4, 399)
        Me.lbTroVe.Name = "lbTroVe"
        Me.lbTroVe.Size = New System.Drawing.Size(53, 21)
        Me.lbTroVe.TabIndex = 5
        Me.lbTroVe.Text = "Trở về"
        '
        'lbThoat
        '
        Me.lbThoat.AutoSize = True
        Me.lbThoat.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbThoat.ForeColor = System.Drawing.Color.Black
        Me.lbThoat.Location = New System.Drawing.Point(187, 399)
        Me.lbThoat.Name = "lbThoat"
        Me.lbThoat.Size = New System.Drawing.Size(49, 21)
        Me.lbThoat.TabIndex = 5
        Me.lbThoat.Text = "Thoát"
        '
        'btnOK
        '
        Me.btnOK.ActiveBorderThickness = 1
        Me.btnOK.ActiveCornerRadius = 20
        Me.btnOK.ActiveFillColor = System.Drawing.Color.FromArgb(CType(CType(45, Byte), Integer), CType(CType(180, Byte), Integer), CType(CType(211, Byte), Integer))
        Me.btnOK.ActiveForecolor = System.Drawing.Color.White
        Me.btnOK.ActiveLineColor = System.Drawing.Color.FromArgb(CType(CType(45, Byte), Integer), CType(CType(180, Byte), Integer), CType(CType(211, Byte), Integer))
        Me.btnOK.BackColor = System.Drawing.Color.Transparent
        Me.btnOK.BackgroundImage = CType(resources.GetObject("btnOK.BackgroundImage"), System.Drawing.Image)
        Me.btnOK.ButtonText = "OK"
        Me.btnOK.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnOK.Font = New System.Drawing.Font("Segoe UI Semibold", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnOK.ForeColor = System.Drawing.Color.White
        Me.btnOK.IdleBorderThickness = 1
        Me.btnOK.IdleCornerRadius = 20
        Me.btnOK.IdleFillColor = System.Drawing.Color.DimGray
        Me.btnOK.IdleForecolor = System.Drawing.Color.White
        Me.btnOK.IdleLineColor = System.Drawing.Color.Transparent
        Me.btnOK.Location = New System.Drawing.Point(69, 357)
        Me.btnOK.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.btnOK.Name = "btnOK"
        Me.btnOK.Size = New System.Drawing.Size(100, 41)
        Me.btnOK.TabIndex = 4
        Me.btnOK.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'btnDangNhap
        '
        Me.btnDangNhap.ActiveBorderThickness = 1
        Me.btnDangNhap.ActiveCornerRadius = 20
        Me.btnDangNhap.ActiveFillColor = System.Drawing.Color.FromArgb(CType(CType(45, Byte), Integer), CType(CType(180, Byte), Integer), CType(CType(211, Byte), Integer))
        Me.btnDangNhap.ActiveForecolor = System.Drawing.Color.White
        Me.btnDangNhap.ActiveLineColor = System.Drawing.Color.FromArgb(CType(CType(45, Byte), Integer), CType(CType(180, Byte), Integer), CType(CType(211, Byte), Integer))
        Me.btnDangNhap.BackColor = System.Drawing.Color.Transparent
        Me.btnDangNhap.BackgroundImage = CType(resources.GetObject("btnDangNhap.BackgroundImage"), System.Drawing.Image)
        Me.btnDangNhap.ButtonText = "ĐĂNG NHẬP"
        Me.btnDangNhap.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnDangNhap.Font = New System.Drawing.Font("Segoe UI Semibold", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnDangNhap.ForeColor = System.Drawing.Color.White
        Me.btnDangNhap.IdleBorderThickness = 1
        Me.btnDangNhap.IdleCornerRadius = 20
        Me.btnDangNhap.IdleFillColor = System.Drawing.Color.DimGray
        Me.btnDangNhap.IdleForecolor = System.Drawing.Color.White
        Me.btnDangNhap.IdleLineColor = System.Drawing.Color.Transparent
        Me.btnDangNhap.Location = New System.Drawing.Point(0, 357)
        Me.btnDangNhap.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.btnDangNhap.Name = "btnDangNhap"
        Me.btnDangNhap.Size = New System.Drawing.Size(238, 41)
        Me.btnDangNhap.TabIndex = 4
        Me.btnDangNhap.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(1, 142)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(78, 21)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "Mật khẩu:"
        '
        'lbTrangThaiMK
        '
        Me.lbTrangThaiMK.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbTrangThaiMK.ForeColor = System.Drawing.Color.Red
        Me.lbTrangThaiMK.Location = New System.Drawing.Point(9, 274)
        Me.lbTrangThaiMK.Name = "lbTrangThaiMK"
        Me.lbTrangThaiMK.Size = New System.Drawing.Size(220, 52)
        Me.lbTrangThaiMK.TabIndex = 2
        Me.lbTrangThaiMK.Text = "Thay đổi mật khẩu thành công"
        Me.lbTrangThaiMK.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(1, 70)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(113, 21)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Mã đăng nhập:"
        '
        'tbNhapLaiMatKhauMoi
        '
        Me.tbNhapLaiMatKhauMoi.BackColor = System.Drawing.Color.FromArgb(CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer))
        Me.tbNhapLaiMatKhauMoi.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tbNhapLaiMatKhauMoi.Location = New System.Drawing.Point(5, 244)
        Me.tbNhapLaiMatKhauMoi.MaxLength = 8
        Me.tbNhapLaiMatKhauMoi.Name = "tbNhapLaiMatKhauMoi"
        Me.tbNhapLaiMatKhauMoi.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.tbNhapLaiMatKhauMoi.Size = New System.Drawing.Size(229, 29)
        Me.tbNhapLaiMatKhauMoi.TabIndex = 5
        Me.tbNhapLaiMatKhauMoi.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'tbMatKhauMoi
        '
        Me.tbMatKhauMoi.BackColor = System.Drawing.Color.FromArgb(CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer))
        Me.tbMatKhauMoi.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tbMatKhauMoi.Location = New System.Drawing.Point(5, 209)
        Me.tbMatKhauMoi.MaxLength = 8
        Me.tbMatKhauMoi.Name = "tbMatKhauMoi"
        Me.tbMatKhauMoi.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.tbMatKhauMoi.Size = New System.Drawing.Size(229, 29)
        Me.tbMatKhauMoi.TabIndex = 4
        Me.tbMatKhauMoi.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'tbMatKhau
        '
        Me.tbMatKhau.BackColor = System.Drawing.Color.FromArgb(CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer))
        Me.tbMatKhau.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tbMatKhau.Location = New System.Drawing.Point(5, 174)
        Me.tbMatKhau.MaxLength = 8
        Me.tbMatKhau.Name = "tbMatKhau"
        Me.tbMatKhau.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.tbMatKhau.Size = New System.Drawing.Size(229, 29)
        Me.tbMatKhau.TabIndex = 3
        Me.tbMatKhau.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'tbMaDangNhap
        '
        Me.tbMaDangNhap.BackColor = System.Drawing.Color.FromArgb(CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer))
        Me.tbMaDangNhap.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tbMaDangNhap.Location = New System.Drawing.Point(5, 102)
        Me.tbMaDangNhap.Name = "tbMaDangNhap"
        Me.tbMaDangNhap.Size = New System.Drawing.Size(229, 29)
        Me.tbMaDangNhap.TabIndex = 2
        Me.tbMaDangNhap.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Segoe UI Semibold", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(51, 27)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(136, 30)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "ĐĂNG NHẬP"
        '
        'pnLogo
        '
        Me.pnLogo.BackColor = System.Drawing.Color.Transparent
        Me.pnLogo.Controls.Add(Me.logo)
        Me.pnLogo.Controls.Add(Me.lbName)
        Me.pnLogo.Location = New System.Drawing.Point(314, 138)
        Me.pnLogo.Name = "pnLogo"
        Me.pnLogo.Size = New System.Drawing.Size(357, 239)
        Me.pnLogo.TabIndex = 8
        '
        'logo
        '
        Me.logo.BackColor = System.Drawing.Color.Transparent
        Me.logo.Image = Global.QLTVGUI.My.Resources.Resources._36430347_798557037016628_946792645248679936_n
        Me.logo.Location = New System.Drawing.Point(84, 16)
        Me.logo.Name = "logo"
        Me.logo.Size = New System.Drawing.Size(188, 150)
        Me.logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.logo.TabIndex = 9
        Me.logo.TabStop = False
        '
        'lbName
        '
        Me.lbName.AutoSize = True
        Me.lbName.BackColor = System.Drawing.Color.Transparent
        Me.lbName.Font = New System.Drawing.Font("Segoe UI", 30.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbName.ForeColor = System.Drawing.Color.White
        Me.lbName.Location = New System.Drawing.Point(-7, 169)
        Me.lbName.Name = "lbName"
        Me.lbName.Size = New System.Drawing.Size(371, 54)
        Me.lbName.TabIndex = 8
        Me.lbName.Text = "QUẢN LÝ THƯ VIỆN"
        '
        'progressBar
        '
        Me.progressBar.BackColor = System.Drawing.Color.LightGray
        Me.progressBar.BorderRadius = 5
        Me.progressBar.Location = New System.Drawing.Point(307, 481)
        Me.progressBar.MaximumValue = 100
        Me.progressBar.Name = "progressBar"
        Me.progressBar.ProgressColor = System.Drawing.Color.FromArgb(CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer))
        Me.progressBar.Size = New System.Drawing.Size(370, 5)
        Me.progressBar.TabIndex = 6
        Me.progressBar.Value = 0
        '
        'lbStatus
        '
        Me.lbStatus.BackColor = System.Drawing.Color.Transparent
        Me.lbStatus.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbStatus.ForeColor = System.Drawing.Color.LightGray
        Me.lbStatus.Location = New System.Drawing.Point(368, 457)
        Me.lbStatus.Name = "lbStatus"
        Me.lbStatus.Size = New System.Drawing.Size(248, 23)
        Me.lbStatus.TabIndex = 5
        Me.lbStatus.Text = "Kết nối đến cơ sở dữ liệu"
        Me.lbStatus.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Timer1
        '
        Me.Timer1.Interval = 1
        '
        'BunifuDragControl2
        '
        Me.BunifuDragControl2.Fixed = True
        Me.BunifuDragControl2.Horizontal = True
        Me.BunifuDragControl2.TargetControl = Me.pnDangNhap
        Me.BunifuDragControl2.Vertical = True
        '
        'BunifuDragControl3
        '
        Me.BunifuDragControl3.Fixed = True
        Me.BunifuDragControl3.Horizontal = True
        Me.BunifuDragControl3.TargetControl = Me.pnLogo
        Me.BunifuDragControl3.Vertical = True
        '
        'Timer2
        '
        Me.Timer2.Interval = 500
        '
        'splashScreen
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(984, 561)
        Me.ControlBox = False
        Me.Controls.Add(Me.BunifuGradientPanel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "splashScreen"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "splashScreen"
        Me.BunifuGradientPanel1.ResumeLayout(False)
        Me.pnDangNhap.ResumeLayout(False)
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel3.ResumeLayout(False)
        Me.Panel3.PerformLayout()
        Me.pnLogo.ResumeLayout(False)
        Me.pnLogo.PerformLayout()
        CType(Me.logo, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents BunifuDragControl1 As Bunifu.Framework.UI.BunifuDragControl
    Friend WithEvents Timer1 As Timer
    Friend WithEvents BunifuGradientPanel1 As Bunifu.Framework.UI.BunifuGradientPanel
    Friend WithEvents progressBar As Bunifu.Framework.UI.BunifuProgressBar
    Friend WithEvents lbStatus As Label
    Friend WithEvents pnLogo As Panel
    Friend WithEvents logo As PictureBox
    Friend WithEvents lbName As Label
    Friend WithEvents pnDangNhap As Panel
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents Panel3 As Panel
    Friend WithEvents Label1 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents tbMatKhau As TextBox
    Friend WithEvents tbMaDangNhap As TextBox
    Friend WithEvents lbThoat As Label
    Friend WithEvents btnDangNhap As Bunifu.Framework.UI.BunifuThinButton2
    Friend WithEvents BunifuDragControl2 As Bunifu.Framework.UI.BunifuDragControl
    Friend WithEvents lbDoiMatKhau As Label
    Friend WithEvents tbNhapLaiMatKhauMoi As TextBox
    Friend WithEvents tbMatKhauMoi As TextBox
    Friend WithEvents btnOK As Bunifu.Framework.UI.BunifuThinButton2
    Friend WithEvents lbTrangThaiMK As Label
    Friend WithEvents btnDocGia As Bunifu.Framework.UI.BunifuThinButton2
    Friend WithEvents lbTroVe As Label
    Friend WithEvents BunifuDragControl3 As Bunifu.Framework.UI.BunifuDragControl
    Friend WithEvents Timer2 As Timer
End Class
