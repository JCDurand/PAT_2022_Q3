object dmPAT: TdmPAT
  OldCreateOrder = False
  Height = 443
  Width = 658
  object conPAT: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Jean Duran' +
      'd\Documents\GitHub\PAT_2022_Q3\PAT.mdb;Mode=ReadWrite;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 80
  end
  object tblStu: TADOTable
    Active = True
    Connection = conPAT
    CursorType = ctStatic
    TableName = 'tblStu'
    Left = 72
    Top = 136
  end
  object tblTeach: TADOTable
    Active = True
    Connection = conPAT
    CursorType = ctStatic
    TableName = 'tblTeacher'
    Left = 128
    Top = 136
  end
  object tblComp: TADOTable
    Active = True
    Connection = conPAT
    CursorType = ctStatic
    TableName = 'tblComp'
    Left = 184
    Top = 136
  end
  object dscStu: TDataSource
    DataSet = tblStu
    Left = 72
    Top = 184
  end
  object dscTeach: TDataSource
    DataSet = tblTeach
    Left = 128
    Top = 184
  end
  object dscComp: TDataSource
    DataSet = tblComp
    Left = 184
    Top = 184
  end
end
