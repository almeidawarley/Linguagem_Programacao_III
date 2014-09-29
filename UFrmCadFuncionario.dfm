object frmCadFuncionario: TfrmCadFuncionario
  Left = 49
  Top = 110
  Caption = 'Cadastro de Funcionario'
  ClientHeight = 327
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 14
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 95
    Top = 14
    Width = 77
    Height = 13
    Caption = 'C'#243'digo do Setor'
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 312
    Top = 64
    Width = 49
    Height = 13
    Caption = 'Data Nasc'
    FocusControl = DBEdit4
  end
  object Label6: TLabel
    Left = 16
    Top = 107
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 16
    Top = 152
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 195
    Top = 152
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 367
    Top = 152
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label10: TLabel
    Left = 16
    Top = 200
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 143
    Top = 200
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 16
    Top = 240
    Width = 24
    Height = 13
    Caption = 'Email'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 395
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Sal'#225'rio'
    FocusControl = DBEdit13
  end
  object DBText1: TDBText
    Left = 16
    Top = 33
    Width = 65
    Height = 17
    DataField = 'FunCodigo'
    DataSource = DataSource1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 80
    Width = 281
    Height = 21
    DataField = 'FunNome'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit4: TDBEdit
    Left = 312
    Top = 80
    Width = 67
    Height = 21
    DataField = 'FunDataNasc'
    DataSource = DmEmpresa.DsFuncionario
    MaxLength = 8
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 123
    Width = 313
    Height = 21
    DataField = 'FunEndereco'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit7: TDBEdit
    Left = 16
    Top = 168
    Width = 169
    Height = 21
    DataField = 'FunBairro'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit8: TDBEdit
    Left = 195
    Top = 168
    Width = 155
    Height = 21
    DataField = 'FunCidade'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit10: TDBEdit
    Left = 16
    Top = 216
    Width = 108
    Height = 21
    DataField = 'FunCEP'
    DataSource = DataSource1
    MaxLength = 10
    TabOrder = 5
  end
  object DBEdit11: TDBEdit
    Left = 143
    Top = 216
    Width = 186
    Height = 21
    DataField = 'FunFone'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit12: TDBEdit
    Left = 16
    Top = 256
    Width = 345
    Height = 21
    DataField = 'FunMail'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit13: TDBEdit
    Left = 395
    Top = 80
    Width = 50
    Height = 21
    DataField = 'FunSalario'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBNavigator1: TDBNavigator
    Left = 237
    Top = 33
    Width = 208
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 9
  end
  object Panel1: TPanel
    Left = 0
    Top = 286
    Width = 456
    Height = 41
    Align = alBottom
    TabOrder = 10
    ExplicitLeft = -8
    ExplicitWidth = 460
    object bbtInserir: TBitBtn
      Left = 14
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Inserir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bbtInserirClick
    end
    object bbtEditar: TBitBtn
      Left = 103
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Editar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = bbtEditarClick
    end
    object bbtRemover: TBitBtn
      Left = 193
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Remover'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = bbtRemoverClick
    end
    object bbtCancelar: TBitBtn
      Left = 283
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = bbtCancelarClick
    end
    object bbtConfirmar: TBitBtn
      Left = 373
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = bbtConfirmarClick
    end
  end
  object bbtSair: TBitBtn
    Left = 367
    Top = 255
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
    TabOrder = 11
    OnClick = bbtSairClick
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 348
    Top = 107
    Width = 97
    Height = 39
    Caption = 'Sexo'
    Columns = 2
    DataField = 'FunSexo'
    DataSource = DmEmpresa.DsFuncionario
    Items.Strings = (
      'Fem'
      'Mas')
    TabOrder = 12
    Values.Strings = (
      'F'
      'M')
  end
  object DBComboBox1: TDBComboBox
    Left = 365
    Top = 168
    Width = 76
    Height = 21
    DataField = 'FunEstado'
    DataSource = DmEmpresa.DsFuncionario
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    TabOrder = 13
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 95
    Top = 33
    Width = 127
    Height = 21
    DataField = 'SetCodigo'
    DataSource = DmEmpresa.DsFuncionario
    KeyField = 'SetCodigo'
    ListField = 'SetNome'
    ListSource = DmEmpresa.DsSetor
    TabOrder = 14
  end
  object DataSource1: TDataSource
    DataSet = DmEmpresa.TbFuncionario
    Left = 408
    Top = 208
  end
end
