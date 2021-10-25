unit Util;

interface

uses
  Data.SqlExpr, SysUtils, Forms, Windows, IniFiles, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;

type
  TUtil = class
  private
    class function VerificarBanco(): Boolean;
    class function VerificarConf(): Boolean;
    class function LerConf(Chave: String):String;

    class procedure GravarConf(Chave, Valor: string);
  public
    class procedure ConectarBanco(var Conexao: TFDConnection);
    class procedure Mensagem(Texto: String);

    class procedure CriarQuery(var Query: TFDQuery);
    class procedure DestruirQuery(var Query: TFDQuery);

    class function Confirmacao(Texto: String):Boolean;
    class function StringEmCurrency(Texto: String):Currency;
  end;

implementation

{ TUtil }

uses Principal;

class procedure TUtil.ConectarBanco(var Conexao: TFDConnection);
begin
  try
    if not(VerificarBanco()) then
    begin
      raise Exception.Create('O arquivo do banco de dados deve estar junto do executável do sistema.');
    end;

    if not(VerificarConf()) then
    begin
      GravarConf('CaminhoBanco','');
      GravarConf('Usuario','');
      GravarConf('Senha','');
      raise Exception.Create('O arquivo de configuração não foi encontrado, o sistema criara um novo arquivo, por favor configure com as informações necessárias.');
    end;

    Conexao.Params.Values['Database'] := LerConf('CaminhoBanco');
    Conexao.Params.Values['User_Name'] := LerConf('Usuario');
    Conexao.Params.Values['Password'] := LerConf('Senha');
    Conexao.Connected := True;
  except on E: Exception do
    raise Exception.Create('Não foi possível estabelecer a conexão com o banco de dados.'+#13+
                           'Verifique as configurações do arquivo de Conf que se encontra junto do executável.');
  end;
end;

class function TUtil.Confirmacao(Texto: String): Boolean;
begin
  try
    Result := Application.MessageBox(PWideChar(Texto),'Posto ABC',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class procedure TUtil.CriarQuery(var Query: TFDQuery);
begin
  try
    Query := TFDQuery.Create(FormPrincipal);
    Query.Connection := FormPrincipal.fdConexao;
    Query.Close;
    Query.SQL.Clear;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class procedure TUtil.DestruirQuery(var Query: TFDQuery);
begin
  try
    Query.Close;
    Query.Free;
    Query := nil;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class procedure TUtil.GravarConf(Chave, Valor: string);
var
  arquivo: TIniFile;
begin
  try
    arquivo := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\Config.ini');
    arquivo.WriteString('Config', chave, valor);
    arquivo.Free;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class function TUtil.LerConf(Chave: String): String;
var
  arquivo: TIniFile;
begin
  try
    arquivo := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\Config.ini');
    Result := arquivo.ReadString('Config', chave, '');
    arquivo.Free;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class procedure TUtil.Mensagem(Texto: String);
begin
  try
    Application.MessageBox(PWideChar(Texto),'Posto ABC',MB_OK + MB_ICONINFORMATION);
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class function TUtil.StringEmCurrency(Texto: String): Currency;
begin
  try
    Texto := StringReplace(Trim(Texto),'.','',[rfReplaceAll, rfIgnoreCase]);
    Result := StrToCurr(Texto);
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class function TUtil.VerificarBanco: Boolean;
begin
  try
    Result := (FileExists(ExtractFileDir(Application.ExeName) + '\BDPOSTOABC.FDB'));
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

class function TUtil.VerificarConf: Boolean;
begin
  try
    Result := (FileExists(ExtractFileDir(Application.ExeName) + '\Config.ini'));
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;
end;

end.
