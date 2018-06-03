object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 351
  Width = 463
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sistema'
      'User_Name=root'
      'Server=mysql857.umbler.com'
      'Port=41890'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 96
  end
  object Driver: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\hugov\Documents\Embarcadero\Studio\Projects\Sistema Cli' +
      'entes\lib\libmySQL.dll'
    Left = 128
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 16
  end
  object tb_clientes: TFDTable
    IndexFieldNames = 'cli_id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'sistema.clientes'
    TableName = 'sistema.clientes'
    Left = 168
    Top = 72
    object tb_clientescli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_clientescli_nome: TStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Required = True
      Size = 70
    end
    object tb_clientescli_endereco: TStringField
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Required = True
      Size = 100
    end
    object tb_clientescli_bairro: TStringField
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Required = True
      Size = 60
    end
    object tb_clientescli_cidade: TStringField
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Required = True
      Size = 60
    end
    object tb_clientescli_uf: TStringField
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Required = True
      Size = 30
    end
    object tb_clientescli_rg: TStringField
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      Required = True
      EditMask = 'AA 00\ 000\ 000;0;_'
      Size = 15
    end
    object tb_clientescli_cpf: TStringField
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      Required = True
      EditMask = '000\.000\.000\-00;0;_'
      Size = 15
    end
    object tb_clientescli_tel: TStringField
      FieldName = 'cli_tel'
      Origin = 'cli_tel'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
    end
    object tb_clientescli_cel: TStringField
      FieldName = 'cli_cel'
      Origin = 'cli_cel'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
    end
    object tb_clientescli_data_nasc: TDateField
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object tb_clientescli_data_cad: TDateField
      FieldName = 'cli_data_cad'
      Origin = 'cli_data_cad'
      Required = True
    end
    object tb_clientescli_situacao: TStringField
      FieldName = 'cli_situacao'
      Origin = 'cli_situacao'
      Required = True
    end
    object tb_clientescli_email: TStringField
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Required = True
      Size = 100
    end
    object tb_clientescli_cep: TStringField
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
      Required = True
      EditMask = '00000-000;0;_'
    end
  end
  object DataSource1: TDataSource
    DataSet = tb_clientes
    Left = 104
    Top = 96
  end
  object SQL_con_cliente: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 40
    Top = 208
    object SQL_con_clientecli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_con_clientecli_nome: TStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Required = True
      Size = 70
    end
    object SQL_con_clientecli_endereco: TStringField
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Required = True
      Size = 100
    end
    object SQL_con_clientecli_bairro: TStringField
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Required = True
      Size = 60
    end
    object SQL_con_clientecli_cidade: TStringField
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Required = True
      Size = 60
    end
    object SQL_con_clientecli_uf: TStringField
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Required = True
      Size = 30
    end
    object SQL_con_clientecli_cep: TStringField
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
      Required = True
    end
    object SQL_con_clientecli_rg: TStringField
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      Required = True
      Size = 15
    end
    object SQL_con_clientecli_cpf: TStringField
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      Required = True
      Size = 15
    end
    object SQL_con_clientecli_tel: TStringField
      FieldName = 'cli_tel'
      Origin = 'cli_tel'
      Required = True
    end
    object SQL_con_clientecli_cel: TStringField
      FieldName = 'cli_cel'
      Origin = 'cli_cel'
      Required = True
    end
    object SQL_con_clientecli_email: TStringField
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Required = True
      Size = 100
    end
    object SQL_con_clientecli_data_nasc: TDateField
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      Required = True
    end
    object SQL_con_clientecli_data_cad: TDateField
      FieldName = 'cli_data_cad'
      Origin = 'cli_data_cad'
      Required = True
    end
    object SQL_con_clientecli_situacao: TStringField
      FieldName = 'cli_situacao'
      Origin = 'cli_situacao'
      Required = True
    end
  end
  object DS_con_cliente: TDataSource
    DataSet = SQL_con_cliente
    Left = 120
    Top = 208
  end
  object SQL_imprimir_cliente: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 256
    Top = 264
    object SQL_imprimir_clientecli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_imprimir_clientecli_nome: TStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Required = True
      Size = 70
    end
    object SQL_imprimir_clientecli_endereco: TStringField
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Required = True
      Size = 100
    end
    object SQL_imprimir_clientecli_bairro: TStringField
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Required = True
      Size = 60
    end
    object SQL_imprimir_clientecli_cidade: TStringField
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Required = True
      Size = 60
    end
    object SQL_imprimir_clientecli_uf: TStringField
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Required = True
      Size = 30
    end
    object SQL_imprimir_clientecli_cep: TStringField
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
      Required = True
    end
    object SQL_imprimir_clientecli_rg: TStringField
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      Required = True
      Size = 15
    end
    object SQL_imprimir_clientecli_cpf: TStringField
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      Required = True
      Size = 15
    end
    object SQL_imprimir_clientecli_tel: TStringField
      FieldName = 'cli_tel'
      Origin = 'cli_tel'
      Required = True
    end
    object SQL_imprimir_clientecli_cel: TStringField
      FieldName = 'cli_cel'
      Origin = 'cli_cel'
      Required = True
    end
    object SQL_imprimir_clientecli_email: TStringField
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Required = True
      Size = 100
    end
    object SQL_imprimir_clientecli_data_nasc: TDateField
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      Required = True
    end
    object SQL_imprimir_clientecli_data_cad: TDateField
      FieldName = 'cli_data_cad'
      Origin = 'cli_data_cad'
      Required = True
    end
    object SQL_imprimir_clientecli_situacao: TStringField
      FieldName = 'cli_situacao'
      Origin = 'cli_situacao'
      Required = True
    end
  end
  object report_cliente: TfrxReport
    Version = '5.6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43026.504546041700000000
    ReportOptions.LastChange = 43026.565687615740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 288
    Datasets = <
      item
        DataSet = ds_rel_cliente
        DataSetName = 'ds_rel_cliente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 257.008040000000000000
          Top = 18.897650000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Relat'#243'rio de Cliente')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 249.448980000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = ds_rel_cliente
        DataSetName = 'ds_rel_cliente'
        RowCount = 0
        object Shape1: TfrxShapeView
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Color = clSilver
        end
        object ds_rel_clientecli_id: TfrxMemoView
          Left = 60.472480000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'cli_id'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_id"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 94.488250000000000000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 706.772110000000000000
          Top = 68.031540000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 7.559060000000000000
          Top = 71.811070000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object ds_rel_clientecli_nome: TfrxMemoView
          Left = 15.118120000000000000
          Top = 71.811070000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'cli_nome'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_nome"]')
          ParentFont = False
        end
        object ds_rel_clientecli_tel: TfrxMemoView
          Left = 283.464750000000000000
          Top = 71.811070000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'cli_tel'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_tel"]')
          ParentFont = False
        end
        object ds_rel_clientecli_cel: TfrxMemoView
          Left = 536.693260000000000000
          Top = 71.811070000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'cli_cel'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_cel"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 279.685220000000000000
          Top = 71.811070000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 532.913730000000000000
          Top = 71.811070000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 283.464750000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 532.913730000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 7.559060000000000000
          Top = 147.401670000000000000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          Left = 706.772110000000000000
          Top = 124.724490000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 7.559060000000000000
          Top = 124.724490000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 124.724490000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'cli_endereco'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_endereco"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 257.008040000000000000
          Top = 124.724490000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'cli_bairro'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_bairro"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 423.307360000000000000
          Top = 128.504020000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'cli_cidade'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_cidade"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 253.228510000000000000
          Top = 124.724490000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 419.527830000000000000
          Top = 124.724490000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 257.008040000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 419.527830000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 604.724800000000000000
          Top = 124.724490000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo13: TfrxMemoView
          Left = 604.724800000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado')
          ParentFont = False
        end
        object ds_rel_clientecli_uf: TfrxMemoView
          Left = 604.724800000000000000
          Top = 128.504020000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'cli_uf'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_uf"]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 7.559060000000000000
          Top = 204.094620000000000000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line13: TfrxLineView
          Left = 706.772110000000000000
          Top = 181.417440000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Top = 181.417440000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'cli_rg'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_rg"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 204.094620000000000000
          Top = 181.417440000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'cli_cpf'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_cpf"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 370.393940000000000000
          Top = 185.196970000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'cli_email'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_email"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 200.315090000000000000
          Top = 181.417440000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 366.614410000000000000
          Top = 181.417440000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 162.519790000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RG')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 204.094620000000000000
          Top = 162.519790000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 366.614410000000000000
          Top = 162.519790000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 585.827150000000000000
          Top = 181.417440000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          Left = 585.827150000000000000
          Top = 158.740260000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Nascimento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 585.827150000000000000
          Top = 185.196970000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'cli_data_nasc'
          DataSet = ds_rel_cliente
          DataSetName = 'ds_rel_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ds_rel_cliente."cli_data_nasc"]')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 7.559060000000000000
          Top = 181.417440000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Top = 238.110390000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object ds_rel_cliente: TfrxDBDataset
    UserName = 'ds_rel_cliente'
    CloseDataSource = False
    DataSet = SQL_imprimir_cliente
    BCDToCurrency = False
    Left = 152
    Top = 288
  end
end
