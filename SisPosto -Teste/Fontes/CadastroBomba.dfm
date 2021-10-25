object FormCadastroBomba: TFormCadastroBomba
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Bombas'
  ClientHeight = 213
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object LabelCodigo: TLabel
    Left = 8
    Top = 40
    Width = 40
    Height = 16
    Caption = 'C'#243'digo'
  end
  object LabelDescricao: TLabel
    Left = 8
    Top = 90
    Width = 58
    Height = 16
    Caption = 'Descri'#231#227'o'
  end
  object LabelTanque: TLabel
    Left = 8
    Top = 140
    Width = 41
    Height = 16
    Caption = 'Tanque'
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 492
    Height = 35
    ButtonHeight = 35
    ButtonWidth = 35
    Caption = 'ToolBar'
    EdgeBorders = [ebBottom]
    Images = FormPrincipal.ImageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButtonNovo: TToolButton
      Left = 0
      Top = 0
      Hint = 'Novo (F2)'
      Caption = 'ToolButtonNovo'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButtonNovoClick
    end
    object ToolButton01: TToolButton
      Left = 35
      Top = 0
      Width = 8
      Caption = 'ToolButton01'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButtonSalvar: TToolButton
      Left = 43
      Top = 0
      Hint = 'Salvar (F3)'
      Caption = 'ToolButtonSalvar'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButtonSalvarClick
    end
    object ToolButtonCancelar: TToolButton
      Left = 78
      Top = 0
      Hint = 'Cancelar (F4)'
      Caption = 'ToolButtonCancelar'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButtonCancelarClick
    end
    object ToolButton02: TToolButton
      Left = 113
      Top = 0
      Width = 8
      Caption = 'ToolButton02'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButtonPesquisar: TToolButton
      Left = 121
      Top = 0
      Hint = 'Pesquisar (F5)'
      Caption = 'ToolButtonPesquisar'
      ImageIndex = 4
      OnClick = ToolButtonPesquisarClick
    end
    object ToolButton03: TToolButton
      Left = 156
      Top = 0
      Width = 8
      Caption = 'ToolButton03'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButtonExcluir: TToolButton
      Left = 164
      Top = 0
      Hint = 'Excluir (F6)'
      Caption = 'ToolButtonExcluir'
      ImageIndex = 5
      OnClick = ToolButtonExcluirClick
    end
  end
  object EditCodigo: TEdit
    Left = 8
    Top = 60
    Width = 81
    Height = 24
    Color = clBtnFace
    Enabled = False
    TabOrder = 1
  end
  object EditDescricao: TEdit
    Left = 8
    Top = 110
    Width = 361
    Height = 24
    MaxLength = 50
    TabOrder = 2
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 194
    Width = 492
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object EditCodigoTanque: TEdit
    Left = 8
    Top = 160
    Width = 81
    Height = 24
    Color = clBtnFace
    Enabled = False
    MaxLength = 50
    TabOrder = 4
  end
  object EditDescricaoTanque: TEdit
    Left = 90
    Top = 160
    Width = 361
    Height = 24
    Color = clBtnFace
    Enabled = False
    MaxLength = 50
    TabOrder = 5
  end
  object BitBtnConsultarTanque: TBitBtn
    Left = 452
    Top = 157
    Width = 30
    Height = 30
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFA47874A47874A47874A47874A47874A47874A47874
      A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874A478
      74986B66FF00FFFF00FFFF00FFFF00FF7E7D7F4A667CBE9596F8E3C6F6DFBFF5
      DCB8F4D9B2F3D7ACF3D4A7F2D2A0F0CF9AF0CE98F0CE98F0CE98F0CE98F0CE98
      F0CE98F1CF98EFCD97986B66FF00FFFF00FFFF00FFFF00FF6B9CC31E89E84B7A
      A3C89693F5DFC2F4DCBCF3DAB6F2D7B1F1D4ABF1D2A5F0CF9FEFCD9AEECC97EE
      CC97EECC97EECC97EECC97EFCD97EDCB96986B66FF00FFFF00FFFF00FFFF00FF
      4BB4FE51B5FF2089E94B7AA2C69592F5DEC2F4DCBCF3DAB7F2D7B1F1D4ABF1D2
      A5F0CFA0EFCD9AEECC97EECC97EECC97EECC97EFCD97EDCB96986B66FF00FFFF
      00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792F5DEC1F4DCBC
      F3D9B6F2D7B0F1D4AAF1D2A5F0CFA0EECC99EECC97EECC97EECC97EFCD97EDCB
      96986B66FF00FFFF00FFFF00FFFF00FFFF00FFA97F7B51B7FE4EB2FF1F89E64E
      7BA2B99497F5DFC2F4DCBCF3D9B6F2D7B0F1D4ABF1D2A6F0CFA0EECD9AEECC97
      EECC97EFCD97EDCB96986B66FF00FFFF00FFFF00FFFF00FFFF00FFAA807BF5E9
      DD52B8FE4BB1FF2787D95F6A76E3C8B4A87875AD807BA97976AF807DC8A18DE0
      BD9AF0CFA0EECC99EECC97EFCD97EDCB96986B66FF00FFFF00FFFF00FFFF00FF
      FF00FFAD837DF5ECE3FBF2E655BDFFB5D6EDA58785AB807AD0B6A3EEE4C7FCFA
      D7EDE4C6CDAFA0B18580D7B294F0CFA0EECC99EFCD97EDCB96986B66FF00FFFF
      00FFFF00FFFF00FFFF00FFB2887EF7EFE8FCF5ECFAEFE4C4A8A7B48780F1DEB7
      FFFDD6FFFFDAFFFFDAFFFFDFFFFFEFEADDD8AB7D7ADFBD9AF0CF9FEFCD9AEDCA
      96986B66FF00FFFF00FFFF00FFFF00FFFF00FFB68B80F8F2EEFDF8F1FAF3EAB5
      8681D4B399F8DBAAFDF7D0FFFFDAFFFFE1FFFFF2FFFFFBFFFFFFC7A99EC8A18C
      F0D1A4F0D09FEDCB98986B66FF00FFFF00FFFF00FFFF00FFFF00FFBA8E82FAF6
      F4FEFCF8FCF6F0B1847EEDD0A4F2C897FCF4CCFFFFDBFFFFE4FFFFF9FFFFFBFF
      FFECE4D9BFAE7F7BF1D4AAF1D2A5EECD9E986B66FF00FFFF00FFFF00FFFF00FF
      FF00FFBE9283FBF8F7FFFFFEFEFAF6A97A76F9DEAAEFBA86F9E3B6FFFFD9FFFF
      DEFFFFE8FFFFEAFFFFE0F8F5D5A97976F2D7B0F2D5ABEFCFA4986B66FF00FFFF
      00FFFF00FFFF00FFFF00FFC29685FBF8F7FFFFFFFFFEFCB2857FEED4A9EFBB84
      F3CC98FBEEC4FFFFDBFFFFDDFFFFDCFFFFDCE8DCC1AE807BF3D9B5F2D7B0F0D2
      A8986B66FF00FFFF00FFFF00FFFF00FFFF00FFC69986FBF8F7FFFFFFFFFFFFB7
      8A85D7BBA0FAE9C5F4D3A6F4D09DF9E4B8FEF6CFFEFAD3FFFFDACAAE9CCAA596
      F4DCBBF4DAB6F1D5AE986B66FF00FFFF00FFFF00FFFF00FFFF00FFCA9C88FBF8
      F7FFFFFFFFFFFFEBDFDFB48A82F1EAE9FFF7E9F3CC98F0BD89F4CE9DFCE6B6F0
      E2BBAD817BE3C8B3F4DEC0F3DBBAD9C4A7986B66FF00FFFF00FFFF00FFFF00FF
      FF00FFCEA089FCF9F7FFFFFFFFFFFFFFFFFFE0CECDB28985D3BBAEEFDCB2FBE3
      B0EED4A9D2B19AB1847EDBBEB0F6E4CCEBD9C0D1C1ABB5A897986B66FF00FFFF
      00FFFF00FFFF00FFFF00FFD2A38AFCF9F7FFFFFFFFFFFFFFFFFFFFFFFFEBDFDF
      B78F84AF827CA97A76B2847ECCADA5E7D1C5FBEEDBE7DBC9C8BDAFBAB0A2B7AC
      9D986B66FF00FFFF00FFFF00FFFF00FFFF00FFD7A78CFCF9F7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFCFDF9F4FCF5EEFCF5EBEEDDD1B28176AD8076
      AA7F76AB7F76AB7F76AD8274FF00FFFF00FFFF00FFFF00FFFF00FFDAAB8DFCF9
      F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFDF9F4FFFBF3E3
      CEC6B38176E3B585E5AD6AE9A654EFA039B88285FF00FFFF00FFFF00FFFF00FF
      FF00FFDEAD8EFDFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFCFFFEF9E5D1CBB38176EFC48DF3BB6DF8B450B88285FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFDEAD8EFDFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D4D0B38176EFC38CF3BA6CB88285FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEAD8EFFFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9DBD9B38176F1C58B
      B88285FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDAA482DAA4
      82DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DA
      A482B38176B88285FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 6
    OnClick = BitBtnConsultarTanqueClick
  end
end
