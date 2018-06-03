object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'Sistema de Clientes'
  ClientHeight = 356
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 337
    Width = 790
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Sistema de Gerenciamento de Clientes'
        Width = 280
      end
      item
        Text = 'Desenvolvido Por Hugo Vasconcelos'
        Width = 250
      end
      item
        Text = 'Usu'#225'rio - Hugo Freitas'
        Width = 150
      end
      item
        Alignment = taRightJustify
        Text = 'Data'
        Width = 380
      end
      item
        Alignment = taCenter
        Text = 'Hora'
        Width = 200
      end>
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 432
    Top = 88
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Salvar1: TMenuItem
        Caption = 'Salvar'
      end
      object Abrir1: TMenuItem
        Caption = 'Abrir'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 696
    Top = 216
  end
end
