VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00800000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   1335
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4620
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   41.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   1335
   ScaleWidth      =   4620
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   960
      Top             =   2280
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   41.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1005
      Left            =   2175
      TabIndex        =   0
      Top             =   0
      Width           =   225
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Label1.Caption = Format(Time, "h:mm:ss AM/PM")
Label1.Width = Me.Width
Label1.Height = Me.Height
Label1.Top = Me.Top
Label1.Left = Me.Left
End Sub

Private Sub Timer1_Timer()
Dim s As String
If InStr(Label1.Caption, ":") > 0 Then
    s = Replace(Label1.Caption, ":", " ", , , vbTextCompare)
    Label1.Caption = s
Else
   Label1.Caption = Format(Time, "h:mm:ss AM/PM")
End If
End Sub
