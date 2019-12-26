<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ucBaoCao
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(ucBaoCao))
        Me.btnBaoCaoSachMuon = New Bunifu.Framework.UI.BunifuThinButton2()
        Me.btnBaoCaoSachTre = New Bunifu.Framework.UI.BunifuThinButton2()
        Me.SuspendLayout()
        '
        'btnBaoCaoSachMuon
        '
        Me.btnBaoCaoSachMuon.ActiveBorderThickness = 1
        Me.btnBaoCaoSachMuon.ActiveCornerRadius = 20
        Me.btnBaoCaoSachMuon.ActiveFillColor = System.Drawing.Color.DimGray
        Me.btnBaoCaoSachMuon.ActiveForecolor = System.Drawing.Color.Black
        Me.btnBaoCaoSachMuon.ActiveLineColor = System.Drawing.Color.Black
        Me.btnBaoCaoSachMuon.BackColor = System.Drawing.SystemColors.Control
        Me.btnBaoCaoSachMuon.BackgroundImage = CType(resources.GetObject("btnBaoCaoSachMuon.BackgroundImage"), System.Drawing.Image)
        Me.btnBaoCaoSachMuon.ButtonText = "Báo cáo thống kê tình hình mượn sách theo thể loại"
        Me.btnBaoCaoSachMuon.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnBaoCaoSachMuon.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnBaoCaoSachMuon.ForeColor = System.Drawing.Color.Black
        Me.btnBaoCaoSachMuon.IdleBorderThickness = 1
        Me.btnBaoCaoSachMuon.IdleCornerRadius = 7
        Me.btnBaoCaoSachMuon.IdleFillColor = System.Drawing.Color.LightGray
        Me.btnBaoCaoSachMuon.IdleForecolor = System.Drawing.Color.Black
        Me.btnBaoCaoSachMuon.IdleLineColor = System.Drawing.Color.Silver
        Me.btnBaoCaoSachMuon.Location = New System.Drawing.Point(140, 166)
        Me.btnBaoCaoSachMuon.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.btnBaoCaoSachMuon.Name = "btnBaoCaoSachMuon"
        Me.btnBaoCaoSachMuon.Size = New System.Drawing.Size(150, 150)
        Me.btnBaoCaoSachMuon.TabIndex = 1
        Me.btnBaoCaoSachMuon.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'btnBaoCaoSachTre
        '
        Me.btnBaoCaoSachTre.ActiveBorderThickness = 1
        Me.btnBaoCaoSachTre.ActiveCornerRadius = 20
        Me.btnBaoCaoSachTre.ActiveFillColor = System.Drawing.Color.DimGray
        Me.btnBaoCaoSachTre.ActiveForecolor = System.Drawing.Color.Black
        Me.btnBaoCaoSachTre.ActiveLineColor = System.Drawing.Color.Black
        Me.btnBaoCaoSachTre.BackColor = System.Drawing.SystemColors.Control
        Me.btnBaoCaoSachTre.BackgroundImage = CType(resources.GetObject("btnBaoCaoSachTre.BackgroundImage"), System.Drawing.Image)
        Me.btnBaoCaoSachTre.ButtonText = "Báo cáo thống kê sách trả trễ"
        Me.btnBaoCaoSachTre.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnBaoCaoSachTre.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnBaoCaoSachTre.ForeColor = System.Drawing.Color.Black
        Me.btnBaoCaoSachTre.IdleBorderThickness = 1
        Me.btnBaoCaoSachTre.IdleCornerRadius = 7
        Me.btnBaoCaoSachTre.IdleFillColor = System.Drawing.Color.LightGray
        Me.btnBaoCaoSachTre.IdleForecolor = System.Drawing.Color.Black
        Me.btnBaoCaoSachTre.IdleLineColor = System.Drawing.Color.Silver
        Me.btnBaoCaoSachTre.Location = New System.Drawing.Point(420, 166)
        Me.btnBaoCaoSachTre.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.btnBaoCaoSachTre.Name = "btnBaoCaoSachTre"
        Me.btnBaoCaoSachTre.Size = New System.Drawing.Size(150, 150)
        Me.btnBaoCaoSachTre.TabIndex = 1
        Me.btnBaoCaoSachTre.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'ucBaoCao
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoScroll = True
        Me.Controls.Add(Me.btnBaoCaoSachTre)
        Me.Controls.Add(Me.btnBaoCaoSachMuon)
        Me.Name = "ucBaoCao"
        Me.Size = New System.Drawing.Size(710, 530)
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents btnBaoCaoSachMuon As Bunifu.Framework.UI.BunifuThinButton2
    Friend WithEvents btnBaoCaoSachTre As Bunifu.Framework.UI.BunifuThinButton2
End Class
