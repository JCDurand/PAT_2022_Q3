object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 335
  Width = 556
  object conPAT: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Jean Duran' +
      'd\Documents\GitHub\PAT_2022_Q3\PAT.mdb;Mode=ReadWrite;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 24
  end
  object tblStu: TADOTable
    Active = True
    Connection = conPAT
    CursorType = ctStatic
    TableName = 'tblStu'
    Left = 40
    Top = 88
  end
  object tblComp: TADOTable
    Active = True
    Connection = conPAT
    CursorType = ctStatic
    TableName = 'tblComp'
    Left = 184
    Top = 88
  end
  object tblTeach: TADOTable
    Active = True
    Connection = conPAT
    CursorType = ctStatic
    TableName = 'tblTeacher'
    Left = 112
    Top = 88
  end
  object dscStu: TDataSource
    DataSet = tblStu
    Left = 40
    Top = 160
  end
  object dscTeach: TDataSource
    DataSet = tblTeach
    Left = 112
    Top = 160
  end
  object dscComp: TDataSource
    DataSet = tblComp
    Left = 184
    Top = 160
  end
end
