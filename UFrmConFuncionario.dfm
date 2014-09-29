object FrmConFuncionario: TFrmConFuncionario
  Left = 0
  Top = 0
  Caption = 'Consulta de Funcion'#225'rio'
  ClientHeight = 238
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 99
    Height = 13
    Caption = 'Pesquisa por c'#243'digo:'
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 94
    Height = 13
    Caption = 'Pesquisa por nome:'
  end
  object BbtPesquisaCodigo: TBitBtn
    Left = 152
    Top = 25
    Width = 121
    Height = 25
    Caption = 'Pesquisa C'#243'digo'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 0
    OnClick = BbtPesquisaCodigoClick
  end
  object BbtSair: TBitBtn
    Left = 291
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Sair'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BbtSairClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 2
    OnEnter = Edit1Enter
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 8
    Top = 73
    Width = 265
    Height = 21
    TabOrder = 3
    OnChange = Edit2Change
    OnEnter = Edit2Enter
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 118
    Width = 372
    Height = 120
    Cursor = crHandPoint
    TabStop = False
    Align = alBottom
    BorderStyle = bsNone
    DataSource = DmEmpresa.DsFuncionario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'FunCodigo'
        Title.Caption = 'C'#243'digo'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FunNome'
        Title.Caption = 'Nome do Funcion'#225'rio'
        Visible = True
      end>
  end
end
