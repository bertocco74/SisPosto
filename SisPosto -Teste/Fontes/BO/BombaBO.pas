unit BombaBO;

interface

uses
  Data.SqlExpr, SysUtils, Forms, Windows, Util, BombaDAO, Bomba, TanqueBO, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;

type
  TBombaBO = class
  private
    { private declarations }
  public
    function ObterListaBombas(Descricao: String = ''):TFDQuery;
    function ObterBombaPorId(Id :Integer):TBomba;
    function UltimaBomba:TBomba;
    procedure Salvar(Bomba: TBomba);
    procedure Excluir(Bomba: TBomba);
  end;

implementation

{ TBombaBO }

procedure TBombaBO.Excluir(Bomba: TBomba);
var
  BombaDAO: TBombaDAO;
begin
  try
    BombaDAO := TBombaDAO.Create;
    BombaDAO.Excluir(Bomba);
    FreeAndNil(BombaDAO);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TBombaBO.ObterBombaPorId(Id :Integer): TBomba;
var
  BombaDAO: TBombaDAO;
begin
  try
    BombaDAO := TBombaDAO.Create;
    Result := BombaDAO.ObterBombaPorId(Id);
    FreeAndNil(BombaDAO);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TBombaBO.ObterListaBombas(Descricao: String = ''): TFDQuery;
var
  BombaDAO: TBombaDAO;
begin
  try
    BombaDAO := TBombaDAO.Create;
    Result := BombaDAO.ObterListaBombas(Descricao);
    FreeAndNil(BombaDAO);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;

procedure TBombaBO.Salvar(Bomba: TBomba);
var
  BombaDAO: TBombaDAO;
begin
  try
    BombaDAO := TBombaDAO.Create;
    BombaDAO.Salvar(Bomba);
    FreeAndNil(BombaDAO);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TBombaBO.UltimaBomba: TBomba;
var
  BombaDAO: TBombaDAO;
begin
  try
    BombaDAO := TBombaDAO.Create;
    Result := BombaDAO.UltimaBomba();
    FreeAndNil(BombaDAO);
  except on E: Exception do
    begin
      raise Exception.Create(E.Message);
    end;
  end;
end;

end.
