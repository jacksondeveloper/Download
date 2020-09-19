object fmHistorico: TfmHistorico
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 449
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = clBlue
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 521
  end
  object pnFundo: TPanel
    Left = 0
    Top = 4
    Width = 758
    Height = 408
    Align = alClient
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 39
    ExplicitWidth = 521
    ExplicitHeight = 188
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 758
      Height = 408
      Align = alClient
      Color = clGradientInactiveCaption
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'URL'
          Width = 338
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAINICIO'
          Title.Caption = 'In'#237'cio'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAFIM'
          Title.Caption = 'Fim'
          Width = 147
          Visible = True
        end>
    end
  end
  object pnRodape: TPanel
    Left = 0
    Top = 412
    Width = 758
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 2
    object GridPanel2: TGridPanel
      Left = 0
      Top = 0
      Width = 758
      Height = 37
      Align = alClient
      Color = clScrollBar
      ColumnCollection = <
        item
          Value = 49.999999999999990000
        end
        item
          Value = 25.000000000000010000
        end
        item
          Value = 25.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 2
          Control = btFechar
          Row = 0
        end>
      ParentBackground = False
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      ExplicitLeft = -1
      ExplicitTop = 6
      ExplicitWidth = 663
      ExplicitHeight = 60
      object btFechar: TButton
        Left = 567
        Top = 1
        Width = 190
        Height = 35
        Align = alClient
        Caption = 'Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btFecharClick
        ExplicitLeft = 561
        ExplicitTop = 6
        ExplicitWidth = 180
        ExplicitHeight = 33
      end
    end
  end
  object DataSource1: TDataSource
    Left = 104
    Top = 121
  end
end
