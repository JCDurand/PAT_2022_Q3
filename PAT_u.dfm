object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 457
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 705
    Height = 457
    ActivePage = tbsTeacher
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
          'Adjudicator')
      end
    end
    object tbsTeacher: TTabSheet
      Caption = 'Teacher'
      ImageIndex = 1
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
        TabOrder = 1
      end
      object btnSubmitTeach: TButton
        Left = 24
        Top = 136
        Width = 75
        Height = 25
        Caption = 'Submit'
        TabOrder = 2
      end
      object DBGrid1: TDBGrid
        Left = 240
        Top = 72
        Width = 433
        Height = 120
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tbsAdministrator: TTabSheet
      Caption = 'Administrator'
      ImageIndex = 2
    end
    object tbsAdjudicator: TTabSheet
      Caption = 'Adjudicator'
      ImageIndex = 3
    end
  end
end
