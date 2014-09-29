object AboutBox: TAboutBox
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 169
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 13
    Width = 281
    Height = 116
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object ProductName: TLabel
      Left = 8
      Top = 24
      Width = 85
      Height = 13
      Caption = 'Nome do produto:'
      IsControl = True
    end
    object Version: TLabel
      Left = 8
      Top = 51
      Width = 36
      Height = 13
      Caption = 'Vers'#227'o:'
      IsControl = True
    end
    object Comments: TLabel
      Left = 8
      Top = 82
      Width = 86
      Height = 13
      Caption = 'Desenvolvido por:'
      WordWrap = True
      IsControl = True
    end
    object Label1: TLabel
      Left = 216
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Empresas'
    end
    object Label2: TLabel
      Left = 247
      Top = 51
      Width = 15
      Height = 13
      Caption = '1.0'
    end
    object Label3: TLabel
      Left = 182
      Top = 82
      Width = 80
      Height = 13
      Caption = 'WarleySoftwares'
    end
  end
  object OKButton: TButton
    Left = 111
    Top = 135
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = OKButtonClick
  end
end
