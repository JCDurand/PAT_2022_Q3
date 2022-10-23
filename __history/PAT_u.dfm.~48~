object dbgTeach: TdbgTeach
  Left = 0
  Top = 0
  ClientHeight = 486
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 705
    Height = 489
    ActivePage = tbsResults
    TabOrder = 0
    object tbsWelcome: TTabSheet
      Caption = 'Welcome'
      object lblUser: TLabel
        Left = 248
        Top = 136
        Width = 147
        Height = 13
        Caption = 'Please choose a user category'
      end
      object pnlWelcome: TPanel
        Left = 19
        Top = 3
        Width = 654
        Height = 57
        Caption = 'Welcome to the SAMRO Competition'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -40
        Font.Name = 'Vivaldi'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object btnSubmit: TButton
        Left = 248
        Top = 182
        Width = 75
        Height = 25
        Caption = 'Submit'
        TabOrder = 1
        OnClick = btnSubmitClick
      end
      object cmbUser: TComboBox
        Left = 248
        Top = 155
        Width = 145
        Height = 21
        TabOrder = 2
        Items.Strings = (
          'Teacher'
          'Administrator'
          'Adjudicator'
          'Results')
      end
    end
    object tbsTeacher: TTabSheet
      Caption = 'Teacher'
      ImageIndex = 1
      object lblTeach: TLabel
        Left = 24
        Top = 177
        Width = 68
        Height = 13
        Caption = 'Teacher Table'
      end
      object lblStu: TLabel
        Left = 24
        Top = 322
        Width = 67
        Height = 13
        Caption = 'Student Table'
      end
      object pnlTeacher: TPanel
        Left = 24
        Top = 3
        Width = 649
        Height = 46
        Caption = 'Teacher Area'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object ledTeacher: TLabeledEdit
        Left = 24
        Top = 96
        Width = 169
        Height = 21
        EditLabel.Width = 168
        EditLabel.Height = 13
        EditLabel.Caption = 'Please enter your teacher number:'
        MaxLength = 1
        TabOrder = 1
      end
      object btnTeachSub: TButton
        Left = 24
        Top = 123
        Width = 75
        Height = 25
        Caption = 'Submit'
        TabOrder = 2
        OnClick = btnTeachSubClick
      end
      object dbgTeachTeach: TDBGrid
        Left = 24
        Top = 196
        Width = 289
        Height = 120
        DataSource = dbPAT.dscTeach
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object dbgTeachStu: TDBGrid
        Left = 24
        Top = 338
        Width = 289
        Height = 120
        DataSource = dbPAT.dscStu
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object rgpTeachInfo: TRadioGroup
        Left = 464
        Top = 196
        Width = 161
        Height = 84
        Caption = 'Teacher Info'
        Items.Strings = (
          'Name'
          'Phone number'
          'Email address')
        TabOrder = 5
      end
      object bntTeachUpd: TButton
        Left = 464
        Top = 286
        Width = 75
        Height = 25
        Caption = 'Update Info'
        TabOrder = 6
        OnClick = bntTeachUpdClick
      end
      object rgpTeachStuTable: TRadioGroup
        Left = 464
        Top = 338
        Width = 161
        Height = 84
        Caption = 'Student Info'
        Items.Strings = (
          'Name'
          'Phone number'
          'Email address'
          'Name of piece')
        TabOrder = 7
      end
      object btnTeachStuUp: TButton
        Left = 464
        Top = 428
        Width = 75
        Height = 25
        Caption = 'Update Info'
        TabOrder = 8
        OnClick = btnTeachStuUpClick
      end
      object btnTeachImp: TButton
        Left = 464
        Top = 94
        Width = 97
        Height = 25
        Caption = 'Import Students'
        TabOrder = 9
        OnClick = btnTeachImpClick
      end
      object btnTeachRemove: TButton
        Left = 464
        Top = 125
        Width = 97
        Height = 25
        Caption = 'Remove Student'
        TabOrder = 10
        OnClick = btnTeachRemoveClick
      end
      object btnResetT: TBitBtn
        Left = 598
        Top = 55
        Width = 75
        Height = 25
        Caption = '&Reset'
        Kind = bkRetry
        NumGlyphs = 2
        TabOrder = 11
        OnClick = btnResetTClick
      end
    end
    object tbsAdministrator: TTabSheet
      Caption = 'Administrator'
      ImageIndex = 2
      object lblAdminStu: TLabel
        Left = 25
        Top = 77
        Width = 67
        Height = 13
        Caption = 'Student Table'
      end
      object lblAdminTeach: TLabel
        Left = 24
        Top = 261
        Width = 68
        Height = 13
        Caption = 'Teacher Table'
      end
      object pnlAdminArea: TPanel
        Left = 8
        Top = 8
        Width = 649
        Height = 46
        Caption = 'Administrator Area'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dgbAdminStu: TDBGrid
        Left = 24
        Top = 96
        Width = 320
        Height = 120
        DataSource = dbPAT.dscStu
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object dgbAdminTeach: TDBGrid
        Left = 24
        Top = 280
        Width = 320
        Height = 120
        DataSource = dbPAT.dscTeach
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object rgpAdmTeach: TRadioGroup
        Left = 480
        Top = 280
        Width = 161
        Height = 84
        Caption = 'Teacher Info'
        Items.Strings = (
          'Name'
          'Phone number'
          'Email address')
        TabOrder = 3
      end
      object btnAdmTeach: TButton
        Left = 480
        Top = 375
        Width = 75
        Height = 25
        Caption = 'Update Info'
        TabOrder = 4
        OnClick = btnAdmTeachClick
      end
      object btnAdmStu: TButton
        Left = 480
        Top = 186
        Width = 75
        Height = 25
        Caption = 'Update Info'
        TabOrder = 5
        OnClick = btnAdmStuClick
      end
      object rgpAdmStu: TRadioGroup
        Left = 480
        Top = 96
        Width = 161
        Height = 84
        Caption = 'Student Info'
        Items.Strings = (
          'Name'
          'Phone number'
          'Email address'
          'Name of piece')
        TabOrder = 6
      end
      object btnAdmRemove: TButton
        Left = 480
        Top = 237
        Width = 97
        Height = 25
        Caption = 'Remove Student'
        TabOrder = 7
        OnClick = btnAdmRemoveClick
      end
      object btnResetAd: TBitBtn
        Left = 582
        Top = 60
        Width = 75
        Height = 25
        Caption = '&Reset'
        Kind = bkRetry
        NumGlyphs = 2
        TabOrder = 8
        OnClick = btnResetAdClick
      end
    end
    object tbsAdjudicator: TTabSheet
      Caption = 'Adjudicator'
      ImageIndex = 3
      object lblAdjudiTable: TLabel
        Left = 16
        Top = 117
        Width = 67
        Height = 13
        Caption = 'Student Table'
      end
      object pnlAdjudicator: TPanel
        Left = 16
        Top = 16
        Width = 649
        Height = 46
        Caption = 'Adjudicator Area'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object ledAdjNum: TLabeledEdit
        Left = 424
        Top = 152
        Width = 121
        Height = 21
        EditLabel.Width = 109
        EditLabel.Height = 13
        EditLabel.Caption = 'Enter student number:'
        TabOrder = 1
      end
      object btnAdjSub: TButton
        Left = 424
        Top = 179
        Width = 75
        Height = 25
        Caption = 'Submit'
        TabOrder = 2
        OnClick = btnAdjSubClick
      end
      object dbgAdjudictor: TDBGrid
        Left = 16
        Top = 136
        Width = 361
        Height = 113
        DataSource = dbPAT.dscComp
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object lblAdnRnd1: TLabeledEdit
        Left = 16
        Top = 336
        Width = 121
        Height = 21
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'Round 1'
        TabOrder = 4
      end
      object lblAdjRnd2: TLabeledEdit
        Left = 184
        Top = 336
        Width = 121
        Height = 21
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'Round 2'
        TabOrder = 5
      end
      object lblAdjRnd3: TLabeledEdit
        Left = 362
        Top = 336
        Width = 121
        Height = 21
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'Round 3'
        TabOrder = 6
      end
      object lblAdjRnd4: TLabeledEdit
        Left = 544
        Top = 336
        Width = 121
        Height = 21
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'Round 4'
        TabOrder = 7
      end
      object btnAdjSubRnd1: TButton
        Left = 16
        Top = 400
        Width = 75
        Height = 25
        Caption = 'Submit'
        TabOrder = 8
        OnClick = btnAdjSubRnd1Click
      end
      object btnAdjSubRnd4: TButton
        Left = 544
        Top = 400
        Width = 75
        Height = 25
        Caption = 'Submit'
        TabOrder = 9
        OnClick = btnAdjSubRnd4Click
      end
      object btnAdjSubRnd3: TButton
        Left = 362
        Top = 400
        Width = 75
        Height = 25
        Caption = 'Submit'
        TabOrder = 10
        OnClick = btnAdjSubRnd3Click
      end
      object btnAdjSubRnd2: TButton
        Left = 184
        Top = 400
        Width = 75
        Height = 25
        Caption = 'Submit'
        TabOrder = 11
        OnClick = btnAdjSubRnd2Click
      end
      object btnResetAdj: TBitBtn
        Left = 590
        Top = 68
        Width = 75
        Height = 25
        Caption = '&Reset'
        Kind = bkRetry
        NumGlyphs = 2
        TabOrder = 12
        OnClick = btnResetAdjClick
      end
    end
    object tbsResults: TTabSheet
      Caption = 'Results'
      ImageIndex = 4
      object pnlResults: TPanel
        Left = 24
        Top = 24
        Width = 649
        Height = 46
        Caption = 'Results Area'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object redResults: TRichEdit
        Left = 112
        Top = 200
        Width = 473
        Height = 137
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Zoom = 100
      end
      object btnGenRes: TButton
        Left = 304
        Top = 112
        Width = 89
        Height = 25
        Caption = 'Generate Results'
        TabOrder = 2
        OnClick = btnGenResClick
      end
      object btnResetR: TBitBtn
        Left = 598
        Top = 76
        Width = 75
        Height = 25
        Caption = '&Reset'
        Kind = bkRetry
        NumGlyphs = 2
        TabOrder = 3
        OnClick = btnResetRClick
      end
    end
  end
end
