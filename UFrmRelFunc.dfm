object frmRelFunc: TfrmRelFunc
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Funcion'#225'rios'
  ClientHeight = 463
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSet = TbFunc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Default
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 118
      Width = 718
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object Código: TQRLabel
        Left = 128
        Top = 17
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          44.979166666666670000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object Nome: TQRLabel
        Left = 240
        Top = 17
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          44.979166666666670000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object Sexo: TQRLabel
        Left = 408
        Top = 17
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          44.979166666666670000
          82.020833333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sexo'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 158
      Width = 718
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 128
        Top = 16
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          42.333333333333340000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = TbFunc
        DataField = 'FunCodigo'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 240
        Top = 17
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          44.979166666666670000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = TbFunc
        DataField = 'FunNome'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 409
        Top = 17
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          1082.145833333333000000
          44.979166666666670000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = TbFunc
        DataField = 'SexoExtenso'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 238
      Width = 718
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 32
        Top = 8
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666680000
          21.166666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDate
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 408
        Top = 8
        Width = 105
        Height = 17
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          21.166666666666670000
          277.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Delphino Software'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 198
      Width = 718
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel3: TQRLabel
        Left = 67
        Top = 17
        Width = 124
        Height = 17
        Size.Values = (
          44.979166666666670000
          177.270833333333300000
          44.979166666666670000
          328.083333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total de funcion'#225'rios:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 208
        Top = 17
        Width = 78
        Height = 17
        Size.Values = (
          44.979166666666670000
          550.333333333333400000
          44.979166666666670000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDetailCount
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 78
      Width = 718
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 272
        Top = 6
        Width = 148
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666800000
          15.875000000000000000
          391.583333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Relat'#243'rio de Funcion'#225'rios'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
  end
  object TbFunc: TTable
    Active = True
    DatabaseName = 'EMPRESA'
    TableName = 'Funcionario.db'
    Left = 416
    Top = 384
    object TbFuncFunCodigo: TIntegerField
      FieldName = 'FunCodigo'
    end
    object TbFuncSetCodigo: TIntegerField
      FieldName = 'SetCodigo'
    end
    object TbFuncFunNome: TStringField
      FieldName = 'FunNome'
      Size = 50
    end
    object TbFuncFunDataNasc: TDateField
      FieldName = 'FunDataNasc'
    end
    object TbFuncFunSexo: TStringField
      FieldName = 'FunSexo'
      Size = 1
    end
    object TbFuncFunEndereco: TStringField
      FieldName = 'FunEndereco'
      Size = 50
    end
    object TbFuncFunBairro: TStringField
      FieldName = 'FunBairro'
      Size = 30
    end
    object TbFuncFunCidade: TStringField
      FieldName = 'FunCidade'
      Size = 30
    end
    object TbFuncFunEstado: TStringField
      FieldName = 'FunEstado'
      Size = 2
    end
    object TbFuncFunCEP: TStringField
      FieldName = 'FunCEP'
      Size = 8
    end
    object TbFuncFunFone: TStringField
      FieldName = 'FunFone'
      Size = 14
    end
    object TbFuncFunMail: TStringField
      FieldName = 'FunMail'
      Size = 30
    end
    object TbFuncFunSalario: TCurrencyField
      FieldName = 'FunSalario'
    end
  end
end
